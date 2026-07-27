package com.hyper.sidebar;

import java.util.HashSet;
import java.util.Set;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;

import com.hyper.sidebar.lsp.OneStepCompat;
import com.hyper.sidebar.lsp.OneStepStateBridge;
import com.hyper.sidebar.lsp.OneStepTouchMapper;
import com.hyper.sidebar.lsp.LSPLogger;
import com.hyper.sidebar.lsp.RotationGuard;
import com.hyper.sidebar.util.AppItem;
import com.hyper.sidebar.util.AppManager;
import com.hyper.sidebar.util.Constants;
import com.hyper.sidebar.util.LOG;
import com.hyper.sidebar.util.OngoingManager;
import com.hyper.sidebar.util.RecentFileManager;
import com.hyper.sidebar.util.RecentPhotoManager;
import com.hyper.sidebar.util.ResolveInfoGroup;
import com.hyper.sidebar.util.ResolveInfoManager;
import com.hyper.sidebar.util.Tracker;
import com.hyper.sidebar.util.Utils;
import com.hyper.sidebar.util.anim.AnimStatusManager;
import com.hyper.sidebar.view.ContentView;
import com.hyper.sidebar.view.ContentView.ContentType;
import com.hyper.sidebar.view.SideView;
import com.hyper.sidebar.view.SidebarRootView;
import com.hyper.sidebar.view.TaskSwitcherView;
import com.hyper.sidebar.view.TopView;

/**
 * LSP 版 SidebarController。
 *
 * 与原 SmartisanOS 版本的差异：
 *   1. 删除 OneStepManager / IOneStep / IOneStepStateObserver 依赖
 *      （SmartisanOS 私有 SystemService 在 HyperOS 上不存在）
 *   2. 进入/退出 One Step 模式由本模块的 HookEntry 手势触发，不再由框架层回调
 *   3. com.android.internal.R 资源改用 Resources.getIdentifier 反射
 *   4. WindowManager.LayoutParams.TYPE_SIDEBAR_TOOLS 改为
 *      OneStepCompat.getWindowType()，在 SystemUI 进程内可用更高优先级窗口类型
 */
public class SidebarController {
    private static final LOG log = LOG.getInstance(SidebarController.class);

    private volatile static SidebarController sInstance;

    private Context mContext;
    private Context mHostContext;
    private Handler mHandler;
    private WindowManager mWindowManager;

    private SidebarRootView mSidebarRoot;
    private SideView mSideView;
    private TopView mTopView;
    private ContentView mContentView;

    private int mSidbarMode = SidebarMode.MODE_LEFT;
    private SidebarStatus mStatus = SidebarStatus.NORMAL;

    private float mRate = 1.0f;
    private int mScreenWidth, mScreenHeight;
    private int mStatusBarHeight;
    private int mSideViewWidth;
    private int mTopViewWidth, mTopViewHeight;
    private int mContentViewWidth, mContentViewHeight;

    /** 当前是否处于 One Step 模式（替代原 OneStepManager 状态） */
    private boolean mInOneStepMode = false;

    public static SidebarController getInstance(Context context){
        if(sInstance == null){
            synchronized(SidebarController.class){
                if(sInstance == null){
                    LSPLogger.i("SidebarController.getInstance: creating singleton");
                    sInstance = new SidebarController(context);
                }
            }
        }
        return sInstance;
    }

    public static SidebarController peekInstance() {
        return sInstance;
    }

    public Context getHostContext() {
        return mHostContext;
    }

    private SidebarController(Context context) {
        LSPLogger.i("SidebarController.<init>: context=" + context
                + " pkg=" + (context == null ? "null" : context.getPackageName()));
        // 用 createPackageContext 把 Context 切到本模块 APK，这样 getResources()
        // 才能找到 R.dimen.sidebar_width 等模块资源
        // 仍然运行在 SystemUI 进程内，WindowManager / Binder 等SystemService 仍来自 SystemUI
        mHostContext = context;
        LSPLogger.initialize(context);
        LSPLogger.logDeviceSnapshot(context, "sidebar_controller_init");
        Context wrapped = context;
        try {
            wrapped = context.createPackageContext(
                    "com.hyper.sidebar",
                    Context.CONTEXT_IGNORE_SECURITY);
            LSPLogger.i("SidebarController.<init>: wrapped context to our package, "
                    + "pkg=" + wrapped.getPackageName()
                    + " canGetResources=" + (wrapped.getResources() != null));
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.<init>: createPackageContext failed, "
                    + "fallback to SystemUI context", t);
            wrapped = context;
        }

        // 关键：HyperOS 上 createPackageContext 返回的 Context，其 getClassLoader()
        // 仍是 MiuiSystemUI.apk 的，无法加载模块自定义 View（ListItemFrameLayout 等）。
        // 解决：用 ContextWrapper 包装，覆盖 getClassLoader() 返回 LSPosed 模块 CL。
        // 这样所有用 mContext 的代码（adapter、view group、LayoutInflater.from 等）
        // 都能正确加载模块类。
        // 另外，LayoutInflater.from(mContext) 调 getSystemService(LAYOUT_INFLATER_SERVICE)
        // 默认会委托到底层 SystemUI context 返回其缓存的 inflater（mClassLoader=SystemUI CL）。
        // 所以必须同时 override getSystemService，返回一个 cloneInContext(mContext) 的
        // 全新 inflater，其 mContext 是本 wrapped context，getClassLoader() 返回模块 CL。
        final ClassLoader moduleCl = SidebarController.class.getClassLoader();
        LSPLogger.i("SidebarController.<init>: moduleCl=" + moduleCl
                + " wrappedCl=" + wrapped.getClassLoader());
        mContext = new android.content.ContextWrapper(wrapped) {
            private android.view.LayoutInflater mCachedInflater = null;

            @Override
            public ClassLoader getClassLoader() {
                return moduleCl;
            }

            @Override
            public Object getSystemService(String name) {
                if (Context.LAYOUT_INFLATER_SERVICE.equals(name)) {
                    if (mCachedInflater == null) {
                        try {
                            android.view.LayoutInflater base = (android.view.LayoutInflater)
                                    super.getSystemService(name);
                            java.lang.reflect.Method m = android.view.LayoutInflater.class
                                    .getDeclaredMethod("cloneInContext", Context.class);
                            m.setAccessible(true);
                            mCachedInflater = (android.view.LayoutInflater) m.invoke(base, this);
                            LSPLogger.i("SidebarController.<init>: cloned LayoutInflater for wrapped context"
                                    + ", cl=" + mCachedInflater.getContext().getClassLoader());
                        } catch (Throwable t) {
                            LSPLogger.w("SidebarController.<init>: cloneInContext failed, "
                                    + "fallback to super.getSystemService: " + t.getMessage());
                            mCachedInflater = (android.view.LayoutInflater) super.getSystemService(name);
                        }
                    }
                    return mCachedInflater;
                }
                return super.getSystemService(name);
            }
        };
        LSPLogger.i("SidebarController.<init>: mContext wrapped with module ClassLoader");

        mHandler = new Handler(Looper.getMainLooper());
        mWindowManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        Point pt = new Point();
        mWindowManager.getDefaultDisplay().getSize(pt);
        mScreenWidth = Math.min(pt.x, pt.y);
        mScreenHeight = Math.max(pt.x, pt.y);
        mStatusBarHeight = OneStepCompat.getStatusBarHeight(mContext);
        mSideViewWidth = mContext.getResources().getDimensionPixelSize(R.dimen.sidebar_width);
        mRate = 1.0f - mSideViewWidth * 1.0f / mScreenWidth;
        mTopViewWidth = mScreenWidth;
        mTopViewHeight = (int) (mScreenHeight * (1.0f - mRate));
        mContentViewWidth = mScreenWidth - mSideViewWidth;
        mContentViewHeight = mScreenHeight - mTopViewHeight;
        LSPLogger.i("SidebarController.<init>: screen=" + mScreenWidth + "x" + mScreenHeight
                + " sideViewWidth=" + mSideViewWidth
                + " statusBarHeight=" + mStatusBarHeight
                + " topView=" + mTopViewWidth + "x" + mTopViewHeight
                + " contentView=" + mContentViewWidth + "x" + mContentViewHeight);

        boolean hasNavigationBar = OneStepCompat.hasNavigationBar(mContext);
        if (hasNavigationBar) {
            mContentViewHeight += OneStepCompat.getNavigationBarHeight(mContext);
        }
        LSPLogger.i("SidebarController.<init>: final contentViewHeight=" + mContentViewHeight);
    }

    public void init() {
        LSPLogger.i("SidebarController.init: begin");

        // 优先注册广播接收器——这样即使 AddWindows 失败，仍可通过广播触发后续逻辑
        // Android 14+ 必须显式指定 RECEIVER_EXPORTED / RECEIVER_NOT_EXPORTED，
        // 否则广播发送方会收到 "Exported Denial" 拒绝（广播根本不到 receiver）。
        // 本模块的 OneStep 触发广播由 com.hyper.sidebar 进程发出，
        // SystemUI 进程接收——属于跨进程跨 UID，必须用 RECEIVER_EXPORTED。
        IntentFilter oneStepFilter = new IntentFilter();
        oneStepFilter.addAction(ACTION_ENTER_ONE_STEP);
        oneStepFilter.addAction(ACTION_EXIT_ONE_STEP);
        oneStepFilter.addAction(ACTION_TOGGLE_ONE_STEP);
        try {
            registerReceiverCompat(mOneStepTriggerReceiver, oneStepFilter, true);
            LSPLogger.i("SidebarController.init: registered OneStep trigger receiver, "
                    + "actions=" + oneStepFilter.countActions());
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: register OneStep trigger receiver failed", t);
        }

        // 添加窗口（在 SystemUI 进程内 addView 可能因多种原因失败，不能阻断 init）
        try {
            AddWindows();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: AddWindows failed, "
                    + "windows may not be shown until re-triggered", t);
        }

        // 原代码此处调用 mOneStepManager.bindOneStepUI / registerStateObserver
        // LSP 版本不再依赖框架层，进入/退出 One Step 模式由 HookEntry 触发

        try {
            AnimStatusManager.getInstance().addAnimFlagStatusChangedListener(
                    AnimStatusManager.ENTER_ANIM_FLAG, new AnimStatusManager.AnimFlagStatusChangedListener() {
                        @Override
                        public void onChanged() {
                            LSPLogger.d("SidebarController.init: anim flag changed, "
                                    + "enterAnimOngoing="
                                    + AnimStatusManager.getInstance().isEnterAnimOngoing());
                            if (!AnimStatusManager.getInstance().isEnterAnimOngoing()) {
                                onEnterAnimComplete();
                            }
                        }
                    });
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: addAnimFlagStatusChangedListener failed", t);
        }

        IntentFilter systemStateFilter = new IntentFilter();
        systemStateFilter.addAction(Intent.ACTION_CLOSE_SYSTEM_DIALOGS);
        systemStateFilter.addAction(Intent.ACTION_SCREEN_OFF);
        try {
            registerReceiverCompat(mBroadcastReceiver, systemStateFilter, false);
            LSPLogger.d("SidebarController.init: registered system state receiver, actions="
                    + systemStateFilter.countActions());
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: register system state receiver failed", t);
        }

        IntentFilter iconChangeFilter = new IntentFilter();
        iconChangeFilter.addAction(ACTION_UPDATE_ICON);
        try {
            registerReceiverCompat(mIconChangeReceiver, iconChangeFilter, false);
            LSPLogger.d("SidebarController.init: registered " + ACTION_UPDATE_ICON + " receiver");
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: register iconChange failed", t);
        }

        LSPLogger.i("SidebarController.init: done");
        publishLauncherState();
    }

    /**
     * 注册 BroadcastReceiver，兼容 Android 14+ 的 RECEIVER_EXPORTED 要求。
     *
     * Android 14+ (API 34+) 强制要求动态注册的 receiver 必须显式指定
     * RECEIVER_EXPORTED 或 RECEIVER_NOT_EXPORTED，否则广播发送方会收到
     * "Exported Denial" 拒绝（广播根本不到 receiver）。
     *
     * @param exported true 表示广播可跨 UID 接收（如本模块自定的 OneStep 触发广播）；
     *                 false 表示仅接收系统广播（如 ACTION_CLOSE_SYSTEM_DIALOGS）。
     */
    private void registerReceiverCompat(BroadcastReceiver receiver, IntentFilter filter, boolean exported) {
        // Context.RECEIVER_EXPORTED = 0x2, Context.RECEIVER_NOT_EXPORTED = 0x4 (API 26+)
        int flags = exported ? 0x2 : 0x4;
        try {
            // 直接调用 3 参重载（API 26+ 公开 API）
            mContext.registerReceiver(receiver, filter, flags);
            LSPLogger.d("registerReceiverCompat: registered with flags=" + flags
                    + " exported=" + exported);
        } catch (NoSuchMethodError nsm) {
            // API < 26 没有 3 参重载
            mContext.registerReceiver(receiver, filter);
            LSPLogger.d("registerReceiverCompat: fallback to 2-arg, exported=" + exported);
        } catch (Throwable t) {
            LSPLogger.w("registerReceiverCompat: 3-arg failed (" + t.getMessage()
                    + "), trying 2-arg");
            try {
                mContext.registerReceiver(receiver, filter);
            } catch (Throwable t2) {
                LSPLogger.e("registerReceiverCompat: 2-arg fallback also failed", t2);
                throw t2;
            }
        }
    }

    /**
     * 进入 One Step 模式（替代原 onEnterOneStepMode 回调）。
     * 由 HookEntry 手势识别后调用，或通过 ACTION_ENTER_ONE_STEP 广播触发。
     */
    public void enterOneStepMode() {
        LSPLogger.i("SidebarController.enterOneStepMode: mInOneStepMode=" + mInOneStepMode);
        if (mInOneStepMode) {
            return;
        }
        if (isKeyguardLocked()) {
            LSPLogger.i("SidebarController.enterOneStepMode: ignored while keyguard is locked");
            return;
        }
        // 防御：如果 init() 时 AddWindows 失败导致窗口 View 为 null，先尝试重新创建
        // 修复 inflateView ClassLoader 问题后，这里 retry 应该能成功
        if (mTopView == null || mSidebarRoot == null || mContentView == null) {
            LSPLogger.w("SidebarController.enterOneStepMode: windows are null, "
                    + "mTopView=" + (mTopView != null)
                    + " mSidebarRoot=" + (mSidebarRoot != null)
                    + " mContentView=" + (mContentView != null)
                    + " — retrying AddWindows()");
            try {
                AddWindows();
            } catch (Throwable t) {
                LSPLogger.e("SidebarController.enterOneStepMode: AddWindows retry failed", t);
            }
        }
        // 重新检查——若仍为 null，说明 inflate 仍失败，放弃进入以避免 NPE
        if (mTopView == null || mSidebarRoot == null || mContentView == null) {
            LSPLogger.e("SidebarController.enterOneStepMode: ABORT, windows still null after retry");
            return;
        }
        mInOneStepMode = true;
        publishLauncherState();
        RotationGuard.lockPortrait(mHostContext);

        // 先缩小前台应用窗口，腾出侧边栏空间，再 show 侧边栏
        // 这样用户看到的是应用缩到一边 + 侧边栏出现，跟原版 OneStep 体验一致
        try {
            boolean sidebarOnLeft = (mSidbarMode == SidebarMode.MODE_LEFT);
            com.hyper.sidebar.lsp.TaskResizer.shrinkForegroundTask(
                    mContext, mSideViewWidth, mScreenWidth, mScreenHeight, sidebarOnLeft);
            com.hyper.sidebar.lsp.StatusBarWindowTransformer.apply(
                    mHostContext, mScreenWidth, mSideViewWidth, mTopViewHeight,
                    mStatusBarHeight, sidebarOnLeft);
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.enterOneStepMode: shrinkForegroundTask failed", t);
        }

        start();
    }

    /**
     * 退出 One Step 模式（替代原 onExitOneStepMode 回调）。
     */
    public void exitOneStepMode() {
        exitOneStepMode(false);
    }

    private void exitOneStepMode(boolean forceCleanup) {
        LSPLogger.i("SidebarController.exitOneStepMode: mInOneStepMode=" + mInOneStepMode);
        if (!mInOneStepMode && !forceCleanup) {
            return;
        }
        mInOneStepMode = false;
        publishLauncherState();
        try {
            stop();
            com.hyper.sidebar.lsp.StatusBarWindowTransformer.restore(mHostContext);

            // 先 hide 侧边栏，再恢复前台应用窗口到全屏
            try {
                com.hyper.sidebar.lsp.TaskResizer.restoreForegroundTask();
            } catch (Throwable t) {
                LSPLogger.e("SidebarController.exitOneStepMode: restoreForegroundTask failed", t);
            }
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.exitOneStepMode: cleanup failed", t);
        } finally {
            RotationGuard.unlock(mHostContext);
        }
    }

    private boolean isKeyguardLocked() {
        try {
            KeyguardManager keyguardManager = (KeyguardManager) mHostContext.getSystemService(
                    Context.KEYGUARD_SERVICE);
            return keyguardManager != null && keyguardManager.isKeyguardLocked();
        } catch (Throwable t) {
            LSPLogger.w("SidebarController.isKeyguardLocked: query failed: " + t.getMessage());
            return false;
        }
    }

    public boolean isInOneStepMode() {
        return mInOneStepMode;
    }

    public boolean mapNotificationShadeTouchToContent(MotionEvent event) {
        return mInOneStepMode && OneStepTouchMapper.toContent(event, mScreenWidth,
                mSideViewWidth, mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    public boolean reapplyNotificationShadeTransform() {
        if (!mInOneStepMode) return false;
        return com.hyper.sidebar.lsp.StatusBarWindowTransformer
                .reapplyNotificationShade();
    }

    public void mapNotificationShadeTouchToScreen(MotionEvent event) {
        OneStepTouchMapper.toScreen(event, mScreenWidth, mSideViewWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    private void publishLauncherState() {
        OneStepStateBridge.publish(mHostContext, mInOneStepMode,
                mSidbarMode == SidebarMode.MODE_LEFT, mScreenWidth, mSideViewWidth,
                mTopViewHeight, mScreenHeight);
    }

    public boolean switchMainTask(int taskId) {
        return com.hyper.sidebar.lsp.TaskResizer.switchToTask(
                mContext, taskId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    public boolean swapMainTaskWithDisplay(int taskId, int displayId) {
        return com.hyper.sidebar.lsp.TaskResizer.swapMainTaskWithDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    public boolean swapMainTaskWithDisplay(int taskId, int displayId, int slotIndex) {
        return com.hyper.sidebar.lsp.TaskResizer.swapMainTaskWithDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT, slotIndex);
    }

    public boolean swapMainTaskWithDisplay(int taskId, int displayId, int slotIndex,
            boolean landscape) {
        return com.hyper.sidebar.lsp.TaskResizer.swapMainTaskWithDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT, slotIndex, landscape);
    }

    public boolean reapplyMainTaskTransform() {
        return com.hyper.sidebar.lsp.TaskResizer.reapplyCurrentTransform(
                mContext, mSideViewWidth, mScreenWidth, mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    public boolean syncMainTaskTransform() {
        if (!mInOneStepMode) return false;
        boolean sidebarOnLeft = mSidbarMode == SidebarMode.MODE_LEFT;
        com.hyper.sidebar.lsp.StatusBarWindowTransformer.applyNotificationShade(
                mScreenWidth, mSideViewWidth, mTopViewHeight, mScreenHeight,
                sidebarOnLeft);
        return com.hyper.sidebar.lsp.TaskResizer.syncMainTaskTransform(
                mContext, mSideViewWidth, mScreenWidth, mTopViewHeight,
                mScreenHeight, sidebarOnLeft);
    }

    /**
     * 用户手动触发强制旋转/恢复当前主任务。
     * 用于横屏视频等无法自动检测的场景（Bilibili等应用是竖屏Activity+内嵌横屏播放器）。
     */
    public void toggleMainTaskRotation() {
        if (!mInOneStepMode) return;
        Integer taskId = com.hyper.sidebar.lsp.TaskResizer.getCurrentTaskId();
        if (taskId == null || taskId <= 0) {
            LSPLogger.w("SidebarController.toggleMainTaskRotation: no current task");
            return;
        }
        boolean sidebarOnLeft = mSidbarMode == SidebarMode.MODE_LEFT;
        boolean success = com.hyper.sidebar.lsp.TaskResizer.toggleManualRotation(
                mContext, taskId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight, sidebarOnLeft);
        LSPLogger.i("SidebarController.toggleMainTaskRotation: taskId=" + taskId
                + " success=" + success);
    }

    public boolean parkMainTaskAndShowHome(int displayId) {
        return com.hyper.sidebar.lsp.TaskResizer.parkMainTaskAndShowHome(
                mContext, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    public boolean activateTaskFromDisplay(int taskId, int displayId) {
        return com.hyper.sidebar.lsp.TaskResizer.activateTaskFromDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }

    private void onSidebarModeChanged(){
        LSPLogger.i("SidebarController.onSidebarModeChanged: mode=" + mSidbarMode);
        if(mSideView != null){
            mSideView.onSidebarModeChanged();
        }
        if (mInOneStepMode) {
            updateTopViewWindowBySidebarMode();
            updateContentViewWindowBySidebarMode();
            updateSideViewWindowBySidebarMode();
            reapplyMainTaskTransform();
            com.hyper.sidebar.lsp.StatusBarWindowTransformer.apply(
                    mHostContext, mScreenWidth, mSideViewWidth, mTopViewHeight,
                    mStatusBarHeight, mSidbarMode == SidebarMode.MODE_LEFT);
            publishLauncherState();
        }
    }

    public void setSidebarMode(int mode){
        LSPLogger.i("SidebarController.setSidebarMode: from=" + mSidbarMode + " to=" + mode);
        if(mSidbarMode != mode){
            mSidbarMode = mode;
            onSidebarModeChanged();
        }
    }

    public int getSidebarMode(){
        return mSidbarMode;
    }

    public void requestStatus(SidebarStatus status) {
        LSPLogger.i("SidebarController.requestStatus: from=" + mStatus + " to=" + status);
        if (mStatus == status) {
            return;
        }
        mStatus = status;
        if (mTopView != null) mTopView.requestStatus(mStatus);
        if (mSidebarRoot != null) mSidebarRoot.requestStatus(mStatus);
    }

    public SidebarStatus getSidebarStatus() {
        return mStatus;
    }

    private void start(){
        LSPLogger.i("SidebarController.start: showing top/sidebar root");
        if (mTopView == null || mSidebarRoot == null || mContentView == null) {
            LSPLogger.e("SidebarController.start: ABORT, windows not created"
                    + " mTopView=" + (mTopView != null)
                    + " mSidebarRoot=" + (mSidebarRoot != null)
                    + " mContentView=" + (mContentView != null));
            return;
        }
        try {
            updateTopViewWindowBySidebarMode();
            updateContentViewWindowBySidebarMode();
            updateSideViewWindowBySidebarMode();

            mTopView.show(true);
            mSidebarRoot.show(true);
            if (mSideView != null) {
                View taskSwitcher = mSideView.findViewById(R.id.task_switcher);
                if (taskSwitcher instanceof TaskSwitcherView) {
                    ((TaskSwitcherView) taskSwitcher).refreshVirtualDisplays();
                }
            }
            LSPLogger.i("SidebarController.start: done");
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.start: failed", t);
            throw t;
        }
    }

    public void onEnterAnimComplete() {
        LSPLogger.i("SidebarController.onEnterAnimComplete");
        try {
            RecentPhotoManager.getInstance(mHostContext).startObserver();
            RecentFileManager.getInstance(mHostContext).startFileObserver();
            RecentFileManager.getInstance(mHostContext).startSearchFile();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.onEnterAnimComplete: recent data start failed", t);
        }
    }

    private void stop(){
        LSPLogger.i("SidebarController.stop: hiding top/sidebar root");
        try {
            AnimStatusManager.getInstance().reset();
            if (mSideView != null) {
                View taskSwitcher = mSideView.findViewById(R.id.task_switcher);
                if (taskSwitcher instanceof TaskSwitcherView) {
                    ((TaskSwitcherView) taskSwitcher).markHidden();
                }
            }
            if (mTopView != null) mTopView.show(false);
            if (mSidebarRoot != null) mSidebarRoot.show(false);
            // dismissContent() records the panel for the next launch.
            dismissContent(false);

            RecentPhotoManager.getInstance(mHostContext).stopObserver();
            RecentFileManager.getInstance(mHostContext).stopFileObserver();

            if (mSideView != null) mSideView.reportToTracker();
            Tracker.flush();
            LSPLogger.i("SidebarController.stop: done");
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.stop: failed", t);
        }
    }

    public void setEnabled(boolean enabled) {
        LSPLogger.i("SidebarController.setEnabled: " + enabled);
        if (mSidebarRoot != null) mSidebarRoot.setEnabled(enabled);
        if (mTopView != null) mTopView.setEnabled(enabled);
    }

    private void AddWindows() {
        LSPLogger.i("SidebarController.AddWindows: adding 3 windows");
        // 三个窗口分别 try-catch，单个失败不影响其他窗口创建
        // 否则一个 inflate 失败会让其他窗口永远没机会创建
        try {
            addTopViewWindow();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.AddWindows: addTopViewWindow failed", t);
        }
        try {
            addContentViewWindow();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.AddWindows: addContentViewWindow failed", t);
        }
        try {
            addSideViewWindow();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.AddWindows: addSideViewWindow failed", t);
        }
        LSPLogger.i("SidebarController.AddWindows: done"
                + " mTopView=" + (mTopView != null)
                + " mContentView=" + (mContentView != null)
                + " mSidebarRoot=" + (mSidebarRoot != null));
    }

    public TopView getSidebarTopView() {
        return mTopView;
    }

    public SidebarRootView getSidebarRootView() {
        return mSidebarRoot;
    }

    public SideView getSideView() {
        return mSideView;
    }

    private void addSideViewWindow() {
        LSPLogger.i("SidebarController.addSideViewWindow: begin");
        // 幂等：若已存在且已加到 WindowManager，直接跳过（用于 enterOneStepMode 的 retry）
        if (mSidebarRoot != null && mSidebarRoot.getParent() != null) {
            LSPLogger.d("SidebarController.addSideViewWindow: already added, skip");
            return;
        }
        mSidebarRoot = (SidebarRootView) inflateView(R.layout.sidebar_view);
        mSideView = (SideView) mSidebarRoot.findViewById(R.id.sidebar);

        final WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                mSideViewWidth,
                mContentViewHeight,
                OneStepCompat.getWindowType(),
                WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                        | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
                        | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
                        | WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED,
                PixelFormat.TRANSLUCENT);
        lp.flags |= WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED;
        lp.setTitle("sidebar_sideview");
        // PRIVATE_FLAG_NO_MOVE_ANIMATION 是隐藏字段，通过反射设置
        try {
            java.lang.reflect.Field f = WindowManager.LayoutParams.class
                    .getDeclaredField("privateFlags");
            f.setAccessible(true);
            int cur = f.getInt(lp);
            java.lang.reflect.Field noMove = WindowManager.LayoutParams.class
                    .getDeclaredField("PRIVATE_FLAG_NO_MOVE_ANIMATION");
            noMove.setAccessible(true);
            f.setInt(lp, cur | noMove.getInt(null));
            LSPLogger.d("SidebarController.addSideViewWindow: set PRIVATE_FLAG_NO_MOVE_ANIMATION via reflection");
        } catch (Throwable t) {
            LSPLogger.w("SidebarController.addSideViewWindow: PRIVATE_FLAG_NO_MOVE_ANIMATION reflection failed: "
                    + t.getMessage());
        }
        lp.packageName = mContext.getPackageName();
        lp.y = mTopViewHeight;
        mSidebarRoot.setVisibility(View.GONE);
        try {
            mWindowManager.addView(mSidebarRoot, lp);
            LSPLogger.i("SidebarController.addSideViewWindow: addView ok, type=" + lp.type);
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.addSideViewWindow: addView failed", t);
            throw t;
        }
    }

    private void updateSideViewWindowBySidebarMode(){
        LSPLogger.d("SidebarController.updateSideViewWindowBySidebarMode: mode=" + getSidebarMode());
        if (mSidebarRoot == null || mSideView == null) {
            LSPLogger.w("SidebarController.updateSideViewWindowBySidebarMode: mSidebarRoot or mSideView null, skip");
            return;
        }
        final WindowManager.LayoutParams lp = (WindowManager.LayoutParams)mSidebarRoot.getLayoutParams();
        if (getSidebarMode() == SidebarMode.MODE_LEFT) {
            lp.gravity = Gravity.LEFT | Gravity.TOP;
            FrameLayout.LayoutParams llp = (FrameLayout.LayoutParams) mSideView
                    .getLayoutParams();
            llp.width = mSideViewWidth;
            llp.gravity = Gravity.LEFT | Gravity.FILL_VERTICAL;
            mSideView.setLayoutParams(llp);
        } else {
            lp.gravity = Gravity.RIGHT | Gravity.TOP;
            FrameLayout.LayoutParams llp = (FrameLayout.LayoutParams) mSideView
                    .getLayoutParams();
            llp.width = mSideViewWidth;
            llp.gravity = Gravity.RIGHT | Gravity.FILL_VERTICAL;
            mSideView.setLayoutParams(llp);
        }
        lp.width = mSideViewWidth;
        lp.height = mContentViewHeight;
        lp.y = mTopViewHeight;
        mWindowManager.updateViewLayout(mSidebarRoot, lp);
    }

    public void updateDragWindow(boolean toFullScreen) {
        LSPLogger.i("SidebarController.updateDragWindow: toFullScreen=" + toFullScreen);
        if (mSidebarRoot == null) {
            LSPLogger.w("SidebarController.updateDragWindow: mSidebarRoot null, skip");
            return;
        }
        final WindowManager.LayoutParams lp = (WindowManager.LayoutParams)mSidebarRoot.getLayoutParams();
        if (toFullScreen) {
            if (mSidebarRoot.getTrash() == null) {
                LSPLogger.e("updateDragWindow trash is null");
                log.error("updateDragWindow trash is null");
            } else {
                mSidebarRoot.getTrash().initTrashView();
            }
            lp.width = ViewGroup.LayoutParams.MATCH_PARENT;
            lp.height = ViewGroup.LayoutParams.MATCH_PARENT;
            lp.y = 0;
            lp.flags &= ~WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN;
            lp.flags &= ~WindowManager.LayoutParams.FLAG_LAYOUT_INSET_DECOR;
            mSidebarRoot.setBackgroundResource(R.color.sidebar_root_background);
        } else {
            if (mSidebarRoot.getTrash() != null) {
                mSidebarRoot.getTrash().hideTrashView();
            }
            lp.width = mSideViewWidth;
            lp.height = mContentViewHeight;
            if (getSidebarMode() == SidebarMode.MODE_LEFT) {
                lp.gravity = Gravity.LEFT | Gravity.TOP;
            } else {
                lp.gravity = Gravity.RIGHT | Gravity.TOP;
            }
            lp.y = mTopViewHeight;
            lp.flags &= ~WindowManager.LayoutParams.FLAG_LAYOUT_INSET_DECOR;
            lp.flags |= WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN;
            lp.flags |= WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS;
            mSidebarRoot.setBackgroundResource(android.R.color.transparent);
        }
        mWindowManager.updateViewLayout(mSidebarRoot, lp);
    }

    /**
     * 加载布局，使用本模块 APK 的 ClassLoader。
     *
     * 由于构造函数已把 mContext 包成 ClassLoader-overriding ContextWrapper，
     * LayoutInflater.from(mContext) 拿到的 inflater 会用模块 CL 来 loadClass。
     * 但 Android 的 LayoutInflater 有缓存机制——from() 返回的 inflater 可能是
     * 之前缓存的实例，其 mContext 仍是 SystemUI 的。所以仍需 cloneInContext
     * 创建一个绑定到 wrapped mContext 的新实例。
     *
     * HyperOS 上 LayoutInflater 缓存的 inflater 实例 mClassLoader 是 SystemUI CL，
     * 不反射设置 mClassLoader 字段的话，createView 内部 Class.forName 仍会失败。
     * 但 Android 16 已经移除了 mClassLoader 字段，所以这条双保险路径已失效。
     * 唯一可靠的方式是 cloneInContext(wrappedCtx) 拿全新 inflater。
     */
    private View inflateView(int layoutResId) {
        LSPLogger.i("SidebarController.inflateView: resId=0x" + Integer.toHexString(layoutResId)
                + " mContextCl=" + mContext.getClassLoader());

        // mContext 已是 wrapped Context（getClassLoader 返回模块 CL）
        // 但 LayoutInflater.from(mContext) 可能返回缓存的 SystemUI inflater
        // 所以仍需 cloneInContext 拿全新实例
        android.view.LayoutInflater inflater = null;
        try {
            android.view.LayoutInflater base = android.view.LayoutInflater.from(mContext);
            java.lang.reflect.Method m = android.view.LayoutInflater.class
                    .getDeclaredMethod("cloneInContext", Context.class);
            m.setAccessible(true);
            inflater = (android.view.LayoutInflater) m.invoke(base, mContext);
            LSPLogger.i("SidebarController.inflateView: cloned inflater, class="
                    + inflater.getClass().getName()
                    + " inflater.mContext.cl=" + inflater.getContext().getClassLoader());
        } catch (Throwable t) {
            LSPLogger.w("SidebarController.inflateView: cloneInContext failed ("
                    + t.getMessage() + "), falling back to from(mContext)");
            inflater = android.view.LayoutInflater.from(mContext);
        }

        // 双保险：反射设置 mClassLoader 字段（部分 Android 版本 createView 用此字段）
        // Android 16 已移除此字段，失败可忽略
        try {
            java.lang.reflect.Field f = android.view.LayoutInflater.class
                    .getDeclaredField("mClassLoader");
            f.setAccessible(true);
            f.set(inflater, SidebarController.class.getClassLoader());
            LSPLogger.d("SidebarController.inflateView: set mClassLoader ok");
        } catch (Throwable t) {
            LSPLogger.d("SidebarController.inflateView: set mClassLoader skipped: "
                    + t.getMessage());
        }

        try {
            View v = inflater.inflate(layoutResId, null);
            LSPLogger.i("SidebarController.inflateView: SUCCESS, v=" + v.getClass().getName());
            return v;
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.inflateView: FAILED", t);
            throw new RuntimeException("inflate failed for 0x"
                    + Integer.toHexString(layoutResId), t);
        }
    }

    private void addTopViewWindow() {
        LSPLogger.i("SidebarController.addTopViewWindow: begin");
        // 幂等：若已存在且已加到 WindowManager，直接跳过（用于 enterOneStepMode 的 retry）
        if (mTopView != null && mTopView.getParent() != null) {
            LSPLogger.d("SidebarController.addTopViewWindow: already added, skip");
            return;
        }
        mTopView = (TopView) inflateView(R.layout.topbar_view);
        final WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                mTopViewWidth, mTopViewHeight,
                OneStepCompat.getWindowType(),
                WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                        | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
                        | WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED,
                PixelFormat.TRANSLUCENT);
        lp.flags |= WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED;
        lp.setTitle("sidebar_topview");
        lp.packageName = mContext.getPackageName();
        lp.y = 0;
        mTopView.setVisibility(View.GONE);
        try {
            mWindowManager.addView(mTopView, lp);
            LSPLogger.i("SidebarController.addTopViewWindow: addView ok, type=" + lp.type);
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.addTopViewWindow: addView failed", t);
            throw t;
        }
    }

    private void updateTopViewWindowBySidebarMode(){
        LSPLogger.d("SidebarController.updateTopViewWindowBySidebarMode: mode=" + getSidebarMode());
        if (mTopView == null) {
            LSPLogger.w("SidebarController.updateTopViewWindowBySidebarMode: mTopView null, skip");
            return;
        }
        final WindowManager.LayoutParams lp = (WindowManager.LayoutParams) mTopView.getLayoutParams();
        if (getSidebarMode() == SidebarMode.MODE_LEFT) {
            lp.gravity = Gravity.TOP | Gravity.RIGHT;
        } else {
            lp.gravity = Gravity.TOP | Gravity.LEFT;
        }
        lp.width = mTopViewWidth;
        lp.height = mTopViewHeight;
        lp.y = 0;
        mWindowManager.updateViewLayout(mTopView, lp);
    }

    public void addContentViewWindow() {
        LSPLogger.i("SidebarController.addContentViewWindow: begin");
        // 幂等：若已存在且已加到 WindowManager，直接跳过（用于 enterOneStepMode 的 retry）
        if (mContentView != null && mContentView.getParent() != null) {
            LSPLogger.d("SidebarController.addContentViewWindow: already added, skip");
            return;
        }
        mContentView = (ContentView) inflateView(R.layout.content_view);
        final WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                mContentViewWidth, mContentViewHeight,
                OneStepCompat.getWindowType(),
                WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
                        | WindowManager.LayoutParams.FLAG_LAYOUT_INSET_DECOR
                        | WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED,
                PixelFormat.TRANSLUCENT);
        lp.setTitle("sidebar_contentview");
        lp.packageName = mContext.getPackageName();
        // 原 SmartisanOS LayoutParams.isEatHomeKey 为私有字段，HyperOS 上不存在，已移除
        mContentView.setVisibility(View.GONE);
        try {
            mWindowManager.addView(mContentView, lp);
            LSPLogger.i("SidebarController.addContentViewWindow: addView ok, type=" + lp.type);
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.addContentViewWindow: addView failed", t);
            throw t;
        }
    }

    private void updateContentViewWindowBySidebarMode() {
        LSPLogger.d("SidebarController.updateContentViewWindowBySidebarMode: mode=" + getSidebarMode());
        if (mContentView == null) {
            LSPLogger.w("SidebarController.updateContentViewWindowBySidebarMode: mContentView null, skip");
            return;
        }
        final WindowManager.LayoutParams lp = (WindowManager.LayoutParams) mContentView.getLayoutParams();
        if (getSidebarMode() == SidebarMode.MODE_LEFT) {
            lp.gravity = Gravity.BOTTOM | Gravity.RIGHT;
        } else {
            lp.gravity = Gravity.BOTTOM | Gravity.LEFT;
        }
        lp.width = mContentViewWidth;
        lp.height = mContentViewHeight;
        mWindowManager.updateViewLayout(mContentView, lp);
    }

    public ContentType getCurrentContentType(){
        if (mContentView == null) return null;
        return mContentView.getCurrentContent();
    }

    public void showContent(ContentType ct) {
        LSPLogger.i("SidebarController.showContent: " + ct);
        if (mContentView == null) {
            LSPLogger.w("SidebarController.showContent: mContentView null, skip");
            return;
        }
        mContentView.show(ct, true);
    }

    /**
     * The panel the user had open when the sidebar closed, so the next launch restores it.
     * Stored as the ContentType name rather than its ordinal: reordering the enum would
     * otherwise silently reopen the wrong panel.
     */
    private static final String KEY_LAST_CONTENT_TYPE = "last_content_type";

    /**
     * Records the panel being closed. Called from dismissContent() rather than stop(), because
     * gesture teardown (Utils.resumeSidebar) dismisses the panel long before the sidebar itself
     * stops — by then the current type is already NONE and there is nothing left to remember.
     * NONE is never written: closing a panel must not erase the choice it is closing.
     */
    private void rememberOpenContentType() {
        try {
            ContentType current = getCurrentContentType();
            if (current == null || current == ContentType.NONE) return;
            Utils.Config.setStringValue(mHostContext, KEY_LAST_CONTENT_TYPE, current.name());
            LSPLogger.i("SidebarController.rememberOpenContentType: " + current);
        } catch (Throwable t) {
            LSPLogger.w("SidebarController.rememberOpenContentType failed: " + t);
        }
    }

    private void restoreRememberedContentType() {
        try {
            String value = Utils.Config.getStringValue(mHostContext, KEY_LAST_CONTENT_TYPE);
            if (value == null || value.isEmpty()) return;
            ContentType remembered;
            try {
                remembered = ContentType.valueOf(value);
            } catch (IllegalArgumentException stale) {
                LSPLogger.w("SidebarController.restoreRememberedContentType: unknown " + value);
                return;
            }
            if (remembered == ContentType.NONE || mTopView == null) return;
            LSPLogger.i("SidebarController.restoreRememberedContentType: " + remembered);
            mTopView.restoreContentType(remembered);
        } catch (Throwable t) {
            LSPLogger.w("SidebarController.restoreRememberedContentType failed: " + t);
        }
    }

    public void dismissContent(boolean anim) {
        LSPLogger.i("SidebarController.dismissContent: anim=" + anim);
        if (mContentView == null) {
            LSPLogger.w("SidebarController.dismissContent: mContentView is null, skip");
            return;
        }
        rememberOpenContentType();
        try {
            mContentView.dismiss(mContentView.getCurrentContent(), anim);
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.dismissContent: failed", t);
        }
    }

    public void resumeTopView(){
        if (mTopView != null) {
            mTopView.resumeToNormal();
        }
    }

    public void refreshCalendarView() {
        for (AppItem item : AppManager.getInstance(mContext).getAddedAppItem()) {
            if (Constants.CALENDAR_PACKAGE.equals(item.getPackageName())) {
                item.clearAvatarCache();
            }
        }

        for (ResolveInfoGroup info : ResolveInfoManager.getInstance(mContext).getAddedResolveInfoGroup()) {
            if (Constants.CALENDAR_PACKAGE.equals(info.getPackageName())) {
                info.clearAvatarCache();
            }
        }
        if (mSideView != null) {
            mSideView.notifyDataSetChanged();
        }
    }

    /**
     * 替代原 IOneStep.Stub.updateOngoing。
     * 由本模块内部 OngoingManager 调用入口直接调用。
     */
    public void updateOngoing(ComponentName name, int token,
            int pendingNumbers, CharSequence title, int pid) {
        OngoingManager.getInstance(mContext).updateOngoing(name, token, pendingNumbers, title, pid);
    }

    /**
     * 替代原 IOneStep.Stub.resumeOneStep。
     */
    public void resumeOneStep() {
        mHandler.post(new Runnable(){
            @Override
            public void run() {
                Utils.resumeSidebar(mContext);
            }
        });
    }

    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {

        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            LSPLogger.d("mBroadcastReceiver.onReceive: action=" + action);
            if (Intent.ACTION_CLOSE_SYSTEM_DIALOGS.equals(action)) {
                try {
                    Utils.resumeSidebar(context);
                } catch (Throwable t) {
                    LSPLogger.e("mBroadcastReceiver: resumeSidebar failed", t);
                }
            } else if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                try {
                    LSPLogger.i("mBroadcastReceiver: screen off, exiting OneStep");
                    exitOneStepMode(true);
                } catch (Throwable t) {
                    LSPLogger.e("mBroadcastReceiver: screen-off cleanup failed", t);
                }
            }
        }
    };

    private static final String ACTION_UPDATE_ICON = "com.smartisanos.launcher.update_icon";
    private static final String EXTRA_PACKAGENAME = "extra_packagename";

    /** adb shell am broadcast -a <action> 触发 OneStep 模式 */
    public static final String ACTION_ENTER_ONE_STEP  = "com.hyper.sidebar.ACTION_ENTER_ONE_STEP";
    public static final String ACTION_EXIT_ONE_STEP   = "com.hyper.sidebar.ACTION_EXIT_ONE_STEP";
    public static final String ACTION_TOGGLE_ONE_STEP = "com.hyper.sidebar.ACTION_TOGGLE_ONE_STEP";
    public static final String EXTRA_SIDEBAR_MODE = "sidebar_mode";

    private BroadcastReceiver mOneStepTriggerReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            LSPLogger.i("OneStepTriggerReceiver.onReceive: action=" + action);
            try {
                if (ACTION_ENTER_ONE_STEP.equals(action)) {
                    int requestedMode = intent.getIntExtra(EXTRA_SIDEBAR_MODE, 0);
                    if (!isInOneStepMode()
                            && (requestedMode == SidebarMode.MODE_LEFT
                                    || requestedMode == SidebarMode.MODE_RIGHT)) {
                        setSidebarMode(requestedMode);
                    }
                    enterOneStepMode();
                } else if (ACTION_EXIT_ONE_STEP.equals(action)) {
                    exitOneStepMode();
                } else if (ACTION_TOGGLE_ONE_STEP.equals(action)) {
                    if (isInOneStepMode()) {
                        exitOneStepMode();
                    } else {
                        enterOneStepMode();
                    }
                }
            } catch (Throwable t) {
                LSPLogger.e("OneStepTriggerReceiver.onReceive: handle " + action + " failed", t);
            }
        }
    };

    private BroadcastReceiver mIconChangeReceiver = new BroadcastReceiver() {

        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (ACTION_UPDATE_ICON.equals(action)) {
                String packageNames = intent.getStringExtra(EXTRA_PACKAGENAME);
                if (packageNames != null) {
                    String[] packagearr = packageNames.split(",");
                    if (packagearr != null) {
                        Set<String> packages = new HashSet<String>();
                        for (String pkg : packagearr) {
                            packages.add(pkg);
                        }
                        ResolveInfoManager.getInstance(mContext).onIconChanged(packages);
                        AppManager.getInstance(mContext).onIconChanged(packages);
                    }
                }
            }
        }
    };
}
