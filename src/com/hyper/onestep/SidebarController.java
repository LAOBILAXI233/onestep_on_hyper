package com.hyper.onestep;
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
import com.hyper.onestep.lsp.OneStepCompat;
import com.hyper.onestep.lsp.OneStepStateBridge;
import com.hyper.onestep.lsp.OneStepTouchMapper;
import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.lsp.MultiTaskController;
import com.hyper.onestep.lsp.RotationGuard;
import com.hyper.onestep.util.AppItem;
import com.hyper.onestep.util.AppManager;
import com.hyper.onestep.util.Constants;
import com.hyper.onestep.util.LOG;
import com.hyper.onestep.util.OngoingManager;
import com.hyper.onestep.util.RecentFileManager;
import com.hyper.onestep.util.RecentPhotoManager;
import com.hyper.onestep.util.ResolveInfoGroup;
import com.hyper.onestep.util.ResolveInfoManager;
import com.hyper.onestep.util.Tracker;
import com.hyper.onestep.util.Utils;
import com.hyper.onestep.util.anim.AnimStatusManager;
import com.hyper.onestep.view.ContentView;
import com.hyper.onestep.view.ContentView.ContentType;
import com.hyper.onestep.view.SideView;
import com.hyper.onestep.view.SidebarRootView;
import com.hyper.onestep.view.TaskSwitcherView;
import com.hyper.onestep.view.TopView;
// 侧边栏主控制器，负责侧边栏生命周期与事件分发
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
        mHostContext = context;
        LSPLogger.initialize(context);
        LSPLogger.logDeviceSnapshot(context, "sidebar_controller_init");
        Context wrapped = context;
        try {
            wrapped = context.createPackageContext(
                    "com.hyper.onestep",
                    Context.CONTEXT_IGNORE_SECURITY);
            LSPLogger.i("SidebarController.<init>: wrapped context to our package, "
                    + "pkg=" + wrapped.getPackageName()
                    + " canGetResources=" + (wrapped.getResources() != null));
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.<init>: createPackageContext failed, "
                    + "fallback to SystemUI context", t);
            wrapped = context;
        }
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
    // 初始化侧边栏：注册广播、添加窗口、订阅动画状态
    public void init() {
        LSPLogger.i("SidebarController.init: begin");
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
        try {
            AddWindows();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: AddWindows failed, "
                    + "windows may not be shown until re-triggered", t);
        }
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
        IntentFilter packageFilter = new IntentFilter();
        packageFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
        packageFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
        packageFilter.addAction(Intent.ACTION_PACKAGE_REPLACED);
        packageFilter.addDataScheme("package");
        try {
            registerReceiverCompat(mPackageMonitor, packageFilter, false);
            LSPLogger.d("SidebarController.init: registered package monitor receiver");
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.init: register package monitor failed", t);
        }
        LSPLogger.i("SidebarController.init: done");
        publishLauncherState();
    }
    private void registerReceiverCompat(BroadcastReceiver receiver, IntentFilter filter, boolean exported) {
        int flags = exported ? 0x2 : 0x4;
        try {
            mContext.registerReceiver(receiver, filter, flags);
            LSPLogger.d("registerReceiverCompat: registered with flags=" + flags
                    + " exported=" + exported);
        } catch (NoSuchMethodError nsm) {
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
    // 进入 OneStep 模式：缩放前台任务并显示侧边栏窗口
    public void enterOneStepMode() {
        LSPLogger.i("SidebarController.enterOneStepMode: mInOneStepMode=" + mInOneStepMode);
        if (mInOneStepMode) {
            return;
        }
        if (isKeyguardLocked()) {
            LSPLogger.i("SidebarController.enterOneStepMode: ignored while keyguard is locked");
            return;
        }
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
        if (mTopView == null || mSidebarRoot == null || mContentView == null) {
            LSPLogger.e("SidebarController.enterOneStepMode: ABORT, windows still null after retry");
            return;
        }
        mInOneStepMode = true;
        publishLauncherState();
        RotationGuard.lockPortrait(mHostContext);
        try {
            boolean sidebarOnLeft = (mSidbarMode == SidebarMode.MODE_LEFT);
            com.hyper.onestep.lsp.TaskResizer.shrinkForegroundTask(
                    mContext, mSideViewWidth, mScreenWidth, mScreenHeight, sidebarOnLeft);
            com.hyper.onestep.lsp.StatusBarWindowTransformer.apply(
                    mHostContext, mScreenWidth, mSideViewWidth, mTopViewHeight,
                    mStatusBarHeight, sidebarOnLeft);
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.enterOneStepMode: shrinkForegroundTask failed", t);
        }
        try {
            MultiTaskController.getInstance(mContext).restoreSlotsToDisplays();
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.enterOneStepMode: restoreSlots failed", t);
        }
        final Integer foregroundTaskId = com.hyper.onestep.lsp.TaskResizer
                .getForegroundTaskId(mHostContext);
        if (foregroundTaskId != null && foregroundTaskId > 0) {
            mHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!mInOneStepMode) return;
                    Integer currentTaskId = com.hyper.onestep.lsp.TaskResizer
                            .getCurrentTaskId();
                    if (foregroundTaskId.equals(currentTaskId)) return;
                    if (com.hyper.onestep.lsp.TaskResizer.switchToTask(mContext,
                            foregroundTaskId, mSideViewWidth, mScreenWidth,
                            mTopViewHeight, mScreenHeight,
                            mSidbarMode == SidebarMode.MODE_LEFT)) {
                        LSPLogger.i("SidebarController.enterOneStepMode: promoted late "
                                + "foreground task=" + foregroundTaskId);
                    }
                }
            }, 360L);
        }
        start();
    }
    // 退出 OneStep 模式：恢复前台任务并隐藏侧边栏
    public void exitOneStepMode() {
        exitOneStepMode(false);
    }
    private void exitOneStepMode(boolean forceCleanup) {
        LSPLogger.i("SidebarController.exitOneStepMode: mInOneStepMode=" + mInOneStepMode
                + " forceCleanup=" + forceCleanup);
        if (!mInOneStepMode && !forceCleanup) {
            return;
        }
        mInOneStepMode = false;
        publishLauncherState();
        try {
            Integer mainTaskId = com.hyper.onestep.lsp.TaskResizer.getCurrentTaskId();
            stop();
            com.hyper.onestep.lsp.StatusBarWindowTransformer.restore(mHostContext);
            try {
                com.hyper.onestep.lsp.TaskResizer.restoreForegroundTask();
                if (mainTaskId != null && mainTaskId > 0) {
                    com.hyper.onestep.lsp.TaskResizer.bringTaskToFront(
                            mHostContext, mainTaskId);
                }
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
    // 将通知栏触摸事件映射到内容区域坐标
    public boolean mapNotificationShadeTouchToContent(MotionEvent event) {
        return mInOneStepMode && OneStepTouchMapper.toContent(event, mScreenWidth,
                mSideViewWidth, mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }
    // 重新应用通知栏窗口的变换，返回是否成功
    public boolean reapplyNotificationShadeTransform() {
        if (!mInOneStepMode) return false;
        return com.hyper.onestep.lsp.StatusBarWindowTransformer
                .reapplyNotificationShade();
    }
    // 将通知栏触摸事件映射回屏幕原始坐标
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
    // 切换主区域显示的任务到指定 taskId
    public boolean switchMainTask(int taskId) {
        return com.hyper.onestep.lsp.TaskResizer.switchToTask(
                mContext, taskId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }
    // 主任务与指定 Display 上的任务互换位置
    public boolean swapMainTaskWithDisplay(int taskId, int displayId) {
        return com.hyper.onestep.lsp.TaskResizer.swapMainTaskWithDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }
    public boolean swapMainTaskWithDisplay(int taskId, int displayId, int slotIndex) {
        return com.hyper.onestep.lsp.TaskResizer.swapMainTaskWithDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT, slotIndex);
    }
    public boolean swapMainTaskWithDisplay(int taskId, int displayId, int slotIndex,
            boolean landscape) {
        return com.hyper.onestep.lsp.TaskResizer.swapMainTaskWithDisplay(
                mContext, taskId, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT, slotIndex, landscape);
    }
    // 重新对当前主任务应用侧边栏布局变换
    public boolean reapplyMainTaskTransform() {
        return com.hyper.onestep.lsp.TaskResizer.reapplyCurrentTransform(
                mContext, mSideViewWidth, mScreenWidth, mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }
    // 同步主任务及通知栏变换，确保与当前侧边栏状态一致
    public boolean syncMainTaskTransform() {
        if (!mInOneStepMode) return false;
        boolean sidebarOnLeft = mSidbarMode == SidebarMode.MODE_LEFT;
        com.hyper.onestep.lsp.StatusBarWindowTransformer.applyNotificationShade(
                mScreenWidth, mSideViewWidth, mTopViewHeight, mScreenHeight,
                sidebarOnLeft);
        return com.hyper.onestep.lsp.TaskResizer.syncMainTaskTransform(
                mContext, mSideViewWidth, mScreenWidth, mTopViewHeight,
                mScreenHeight, sidebarOnLeft);
    }
    // 切换主任务的横竖屏旋转状态
    public void toggleMainTaskRotation() {
        if (!mInOneStepMode) return;
        Integer taskId = com.hyper.onestep.lsp.TaskResizer.getCurrentTaskId();
        if (taskId == null || taskId <= 0) {
            LSPLogger.w("SidebarController.toggleMainTaskRotation: no current task");
            return;
        }
        boolean sidebarOnLeft = mSidbarMode == SidebarMode.MODE_LEFT;
        boolean success = com.hyper.onestep.lsp.TaskResizer.toggleManualRotation(
                mContext, taskId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight, sidebarOnLeft);
        LSPLogger.i("SidebarController.toggleMainTaskRotation: taskId=" + taskId
                + " success=" + success);
    }
    // 将主任务停靠到指定 Display 并显示桌面
    public boolean parkMainTaskAndShowHome(int displayId) {
        return com.hyper.onestep.lsp.TaskResizer.parkMainTaskAndShowHome(
                mContext, displayId, mSideViewWidth, mScreenWidth,
                mTopViewHeight, mScreenHeight,
                mSidbarMode == SidebarMode.MODE_LEFT);
    }
    // 从指定 Display 激活任务到主显示区域
    public boolean activateTaskFromDisplay(int taskId, int displayId) {
        return com.hyper.onestep.lsp.TaskResizer.activateTaskFromDisplay(
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
            com.hyper.onestep.lsp.StatusBarWindowTransformer.apply(
                    mHostContext, mScreenWidth, mSideViewWidth, mTopViewHeight,
                    mStatusBarHeight, mSidbarMode == SidebarMode.MODE_LEFT);
            publishLauncherState();
        }
    }
    // 设置侧边栏模式（左/右），并触发窗口布局更新
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
    // 请求切换侧边栏状态并通知 TopView 与根视图
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
    // 进入动画完成回调：启动最近照片与文件观察者
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
    // 启用或禁用侧边栏与顶栏的交互
    public void setEnabled(boolean enabled) {
        LSPLogger.i("SidebarController.setEnabled: " + enabled);
        if (mSidebarRoot != null) mSidebarRoot.setEnabled(enabled);
        if (mTopView != null) mTopView.setEnabled(enabled);
    }
    private void AddWindows() {
        LSPLogger.i("SidebarController.AddWindows: adding 3 windows");
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
    // 更新拖拽窗口尺寸：进入全屏或还原为侧边栏尺寸
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
    private View inflateView(int layoutResId) {
        LSPLogger.i("SidebarController.inflateView: resId=0x" + Integer.toHexString(layoutResId)
                + " mContextCl=" + mContext.getClassLoader());
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
    // 创建并添加内容区域窗口到 WindowManager
    public void addContentViewWindow() {
        LSPLogger.i("SidebarController.addContentViewWindow: begin");
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
    // 显示指定类型的内容面板
    public void showContent(ContentType ct) {
        LSPLogger.i("SidebarController.showContent: " + ct);
        if (mContentView == null) {
            LSPLogger.w("SidebarController.showContent: mContentView null, skip");
            return;
        }
        mContentView.show(ct, true);
    }
    private static final String KEY_LAST_CONTENT_TYPE = "last_content_type";
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
    // 关闭内容面板，可选择是否带动画
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
    // 将 TopView 恢复到正常状态
    public void resumeTopView(){
        if (mTopView != null) {
            mTopView.resumeToNormal();
        }
    }
    // 刷新日历应用图标及头像缓存
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
    // 更新前台服务/常驻通知项的状态信息
    public void updateOngoing(ComponentName name, int token,
            int pendingNumbers, CharSequence title, int pid) {
        OngoingManager.getInstance(mContext).updateOngoing(name, token, pendingNumbers, title, pid);
    }
    // 在主线程异步恢复侧边栏到可用状态
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
    // 包增删/替换/更新事件：让应用列表与图标缓存跟随系统刷新，修复重装后占位符不更新
    private final BroadcastReceiver mPackageMonitor = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null) return;
            String action = intent.getAction();
            if (action == null) return;
            try {
                android.net.Uri data = intent.getData();
                String packageName = data == null ? null : data.getSchemeSpecificPart();
                if (packageName == null || packageName.isEmpty()) {
                    LSPLogger.w("mPackageMonitor.onReceive: no package in data, action=" + action);
                    return;
                }
                boolean replacing = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false);
                LSPLogger.i("mPackageMonitor.onReceive: action=" + action
                        + " pkg=" + packageName + " replacing=" + replacing);
                if (Intent.ACTION_PACKAGE_REMOVED.equals(action)) {
                    AppManager.getInstance(context).onPackageRemoved(packageName);
                    ResolveInfoManager.getInstance(context).onPackageRemoved(packageName);
                } else if (Intent.ACTION_PACKAGE_ADDED.equals(action)) {
                    if (replacing) {
                        // 覆盖安装：先按更新处理（删除失效条目），再走新增
                        AppManager.getInstance(context).onPackageUpdate(packageName);
                        ResolveInfoManager.getInstance(context).onPackageUpdate(packageName);
                    }
                    AppManager.getInstance(context).onPackageAdded(packageName);
                    ResolveInfoManager.getInstance(context).onPackageAdded(packageName);
                    refreshIconCaches(context, packageName);
                } else if (Intent.ACTION_PACKAGE_REPLACED.equals(action)) {
                    // 应用更新：图标可能已变化，强制清缓存并刷新列表
                    AppManager.getInstance(context).onPackageUpdate(packageName);
                    ResolveInfoManager.getInstance(context).onPackageUpdate(packageName);
                    refreshIconCaches(context, packageName);
                }
            } catch (Throwable t) {
                LSPLogger.e("mPackageMonitor.onReceive failed", t);
            }
        }
    };
    private void refreshIconCaches(Context context, String packageName) {
        try {
            Set<String> packages = new HashSet<String>();
            packages.add(packageName);
            ResolveInfoManager.getInstance(context).onIconChanged(packages);
            AppManager.getInstance(context).onIconChanged(packages);
            if (mSideView != null) {
                mSideView.notifyDataSetChanged();
            }
        } catch (Throwable t) {
            LSPLogger.e("SidebarController.refreshIconCaches failed", t);
        }
    }
    /** adb shell am broadcast -a <action> 触发 OneStep 模式 */
    public static final String ACTION_ENTER_ONE_STEP  = "com.hyper.onestep.ACTION_ENTER_ONE_STEP";
    public static final String ACTION_EXIT_ONE_STEP   = "com.hyper.onestep.ACTION_EXIT_ONE_STEP";
    public static final String ACTION_TOGGLE_ONE_STEP = "com.hyper.onestep.ACTION_TOGGLE_ONE_STEP";
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
