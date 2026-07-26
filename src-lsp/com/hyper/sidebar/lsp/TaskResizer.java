package com.hyper.sidebar.lsp;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.Display;


import java.lang.reflect.Method;
import java.util.List;

/**
 * 应用缩窗实现 —— freeform + resizeTask 方案。
 *
 * 背景:
 *   Android 16 / HyperOS 上 fullscreen task 即使设了 resizeable=2 也不会响应 resizeTask。
 *   实测 `cmd activity task resizeable <taskId> 2` + `cmd activity task resize <taskId> ...`
 *   后 task 仍 mode=fullscreen,bounds 不变。
 *   原因:HyperOS 屏蔽了 fullscreen task 的 resize 行为,必须先切到 freeform windowing mode。
 *
 * 新方案:
 *   1. setTaskResizeable(taskId, 2) 强制可 resize
 *   2. setTaskWindowingMode(taskId, FREEFORM) 切到 freeform 模式
 *   3. resizeTask(taskId, rect, 0) 缩小窗口到指定 bounds
 *
 * 退出:
 *   1. resizeTask(taskId, fullScreenRect, 0) 恢复窗口大小
 *   2. setTaskWindowingMode(taskId, FULLSCREEN) 切回 fullscreen
 *
 * 优点:
 *   - 真改窗口 bounds,app 收到 configuration change,触摸坐标自动校正
 *   - 不需要 SurfaceControl 句柄(已验证 Android 16 上拿不到)
 *
 * 缺点:
 *   - app 可能 recreate(取决于 manifest 配置)
 *   - freeform 模式可能有窗口装饰/阴影,体验跟原 SmartisanOS 不完全一致
 */
public final class TaskResizer {
    private static final String TAG = "OneStepLSP";

    /** Windowing mode 常量(参见 AOSP android.app.WindowConfiguration) */
    private static final int WINDOWING_MODE_FULLSCREEN = 1;
    private static final int WINDOWING_MODE_FREEFORM = 5;
    private static final long FREEFORM_VERIFY_TIMEOUT_MS = 360L;
    private static final long FREEFORM_VERIFY_INTERVAL_MS = 40L;

    /** Resize mode 常量(参见 AOSP android.app.ActivityInfo) */
    private static final int RESIZE_MODE_FORCE_RESIZEABLE = 2;

    /**
     * Experimental backend switch. Keep the old VirtualDisplay path as the
     * default until the on-device freeform pilot has passed its test matrix.
     * The value is intentionally a Global setting so it can be changed with
     * adb without rebuilding or touching user data.
     */
    private static final String RENDER_BACKEND_SETTING =
            "smartisanos_onestep_render_backend";
    private static final String RENDER_BACKEND_FREEFORM = "freeform";

    /** 记录缩窗前的状态,用于退出时恢复 */
    private static Integer sResizedTaskId = null;
    private static Rect sOriginalBounds = null;
    private static int sOriginalWindowingMode = WINDOWING_MODE_FULLSCREEN;
    private static int sOriginalResizeMode = 0;
    private static boolean sUsingSurfaceTransform = false;
    private static boolean sUsingDefaultDisplayFreeform = false;
    private static final long TRANSFORM_REAPPLY_MS = 2000L;
    private static final long EXTERNAL_LAUNCH_WATCH_MS = 6000L;
    private static final long EXTERNAL_LAUNCH_FORCE_DELAY_MS = 360L;
    private static final long MAIN_TASK_STABILITY_MS = 480L;
    private static final int MAIN_TASK_STABILITY_SAMPLES = 3;
    private static final long FORCED_REAPPLY_INTERVAL_MS = 240L;
    private static long sTransformReapplyUntil;
    private static long sOrientationProbeUntil;
    private static long sLastTransformReapply;
    private static long sExternalLaunchForceFrom;
    private static long sExternalLaunchWatchUntil;
    private static Integer sPendingMainTaskId;
    private static long sPendingMainTaskSince;
    private static int sPendingMainTaskSamples;
    private static int sLandscapeTransformedTaskId = -1;
    private static int sFixedOrientationTopInset;
    private static Rect sLastLandscapeSource;
    private static final Handler sMainHandler = new Handler(Looper.getMainLooper());
    private static Integer sOriginalMirrorSwitchMode;
    private static int sMirrorSwitchGeneration;
    /** TaskOrganizer 路径创建的 freeform root task id,退出时需删除 */
    private static Integer sFreeformRootTaskId = null;
    private static Object sTaskOrganizer = null;
    /** The task explicitly rotated by the user for the current OneStep session. */
    private static int sManualRotationTaskId = -1;

    private TaskResizer() {}

    /**
     * 缩小当前前台 app 的窗口,腾出 sidebarWidth 给侧边栏。
     *
     * @param context 任意 Context
     * @param sidebarWidth 侧边栏宽度(px)
     * @param screenWidth 屏幕宽
     * @param screenHeight 屏幕高
     * @param sidebarOnLeft true=侧边栏在左,app 缩到右
     * @return true 成功缩小
     */
    public static boolean shrinkForegroundTask(Context context, int sidebarWidth,
                                               int screenWidth, int screenHeight,
                                               boolean sidebarOnLeft) {
        LSPLogger.i("TaskResizer.shrinkForegroundTask: sidebarW=" + sidebarWidth
                + " screen=" + screenWidth + "x" + screenHeight
                + " sidebarOnLeft=" + sidebarOnLeft);

        clearPendingMainTaskCandidate();
        sExternalLaunchForceFrom = 0L;
        sExternalLaunchWatchUntil = 0L;
        sManualRotationTaskId = -1;
        Integer taskId = getForegroundTaskId(context);
        if (taskId == null || taskId <= 0) {
            LSPLogger.w("TaskResizer.shrinkForegroundTask: no valid foreground task");
            return false;
        }
        if (isHomeOrSystemTask(context, taskId)) {
            LSPLogger.i("TaskResizer.shrinkForegroundTask: task " + taskId
                    + " is home/system, skip");
            return false;
        }

        // 计算目标 bounds
        int left, right;
        if (sidebarOnLeft) {
            // 侧边栏在左,app 缩到右:bounds=(sidebarWidth, 0, screenWidth, screenHeight)
            left = sidebarWidth;
            right = screenWidth;
        } else {
            // 侧边栏在右,app 缩到左:bounds=(0, 0, screenWidth - sidebarWidth, screenHeight)
            left = 0;
            right = screenWidth - sidebarWidth;
        }
        Rect targetBounds = new Rect(left, 0, right, screenHeight);
        int topHeight = Math.round(screenHeight * (sidebarWidth / (float) screenWidth));

        // 先记录原状态
        sOriginalBounds = getTaskBounds(taskId);
        sOriginalWindowingMode = getTaskWindowingMode(taskId);
        sOriginalResizeMode = getTaskResizeable(taskId);
        LSPLogger.i("TaskResizer.shrinkForegroundTask: original bounds=" + sOriginalBounds
                + " windowingMode=" + sOriginalWindowingMode
                + " resizeMode=" + sOriginalResizeMode);

        if (placeMainTask(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            sResizedTaskId = taskId;
            armTransformReapply();
            LSPLogger.i("TaskResizer.shrinkForegroundTask: main presentation applied, taskId="
                    + taskId + " freeform=" + sUsingDefaultDisplayFreeform);
            return true;
        }
        LSPLogger.w("TaskResizer.shrinkForegroundTask: main presentation failed, "
                + "trying legacy freeform fallback");

        // The pilot must never fall through to setDisplayWindowingMode(0, ...),
        // because that changes every task on the physical display at once.
        if (isDefaultDisplayFreeformEnabled(context)) {
            LSPLogger.e("TaskResizer.shrinkForegroundTask: freeform pilot and "
                    + "surface fallback both failed; refusing display-wide mode change");
            return false;
        }

        // Step1: setTaskResizeable(taskId, 2) 强制可 resize
        if (!setTaskResizeable(taskId, RESIZE_MODE_FORCE_RESIZEABLE)) {
            LSPLogger.w("TaskResizer.shrinkForegroundTask: setTaskResizeable failed, continue anyway");
        }

        // Step2: 通过 MIUI 自有的 IMiuiFreeformModeControl.freeformFullscreenTask(taskId)
        // 切到 freeform。注意 HyperOS 3 / Android 16 中 fromFullToFreeform() 实际只会
        // 调用 exitTemporaryFullscreen(),普通全屏 task 上是 no-op；真正触发
        // switchFullscreenToFreeform() 的反而是 freeformFullscreenTask()。
        boolean inFreeform = tryMiuiEnterFreeform(taskId);
        if (!inFreeform) {
            LSPLogger.w("TaskResizer.shrinkForegroundTask: MIUI freeform entry failed, "
                    + "trying TaskOrganizer path");
            // 兜底: TaskOrganizer createRootTask
            inFreeform = tryEnterFreeformViaTaskOrganizer(taskId);
        }
        if (!inFreeform) {
            LSPLogger.w("TaskResizer.shrinkForegroundTask: all freeform paths failed, "
                    + "trying setDisplayWindowingMode fallback");
            // 最后兜底: 切 display 的 windowing mode (可能被 HyperOS 静默拒绝)
            setDisplayWindowingMode(0, WINDOWING_MODE_FREEFORM);
        }

        // Step3: resizeTask(taskId, targetBounds, 0)
        if (!resizeTask(taskId, targetBounds, 0)) {
            LSPLogger.e("TaskResizer.shrinkForegroundTask: resizeTask failed");
            return false;
        }

        sResizedTaskId = taskId;
        LSPLogger.i("TaskResizer.shrinkForegroundTask: success, taskId=" + taskId
                + " targetBounds=" + targetBounds);
        return true;
    }

    /** Returns the bounds reserved for the main task below the OneStep top bar. */
    private static Rect getMainTaskBounds(int sidebarWidth, int screenWidth, int topHeight,
            int screenHeight, boolean sidebarOnLeft) {
        int left = sidebarOnLeft ? sidebarWidth : 0;
        int right = sidebarOnLeft ? screenWidth : screenWidth - sidebarWidth;
        return new Rect(left, topHeight, right, screenHeight);
    }

    /**
     * Applies the selected main-task backend. The freeform pilot is limited to
     * portrait activities; landscape still needs the existing leash rotation.
     */
    private static boolean placeMainTask(Context context, int taskId, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft) {
        Rect taskBounds = getTaskBounds(taskId);
        if (isDefaultDisplayFreeformEnabled(context)
                && !isLandscapeTask(context, taskId, taskBounds)) {
            Rect mainBounds = getMainTaskBounds(sidebarWidth, screenWidth,
                    topHeight, screenHeight, sidebarOnLeft);
            if (placeTaskInDefaultDisplayFreeform(taskId, mainBounds)) {
                sUsingDefaultDisplayFreeform = true;
                sUsingSurfaceTransform = false;
                LSPLogger.i("TaskResizer.placeMainTask: freeform pilot taskId=" + taskId
                        + " bounds=" + mainBounds);
                return true;
            }
            LSPLogger.w("TaskResizer.placeMainTask: freeform pilot failed, "
                    + "falling back to ShellTaskOrganizer leash");
        }

        // HyperOS SystemUI already owns the task leash through ShellTaskOrganizer.
        // Transforming that leash avoids registering a competing TaskOrganizer.
        if (shrinkTaskSurface(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            sUsingDefaultDisplayFreeform = false;
            sUsingSurfaceTransform = true;
            return true;
        }
        return false;
    }

    /** Enters task-level freeform without changing the windowing mode of display 0. */
    private static boolean placeTaskInDefaultDisplayFreeform(int taskId, Rect bounds) {
        if (taskId <= 0 || bounds == null || bounds.width() <= 0 || bounds.height() <= 0) {
            return false;
        }

        int mode = getTaskWindowingMode(taskId);
        if (mode != WINDOWING_MODE_FREEFORM) {
            setTaskResizeable(taskId, RESIZE_MODE_FORCE_RESIZEABLE);
            boolean entered = tryMiuiEnterFreeform(taskId);
            if (entered) {
                entered = waitForFreeformMode(taskId);
            }
            if (!entered) {
                LSPLogger.w("TaskResizer.placeTaskInDefaultDisplayFreeform: MIUI request did not "
                        + "change task mode, trying TaskOrganizer taskId=" + taskId);
                entered = tryEnterFreeformViaTaskOrganizer(taskId)
                        && waitForFreeformMode(taskId);
            }
            if (!entered || getTaskWindowingMode(taskId) != WINDOWING_MODE_FREEFORM) {
                LSPLogger.w("TaskResizer.placeTaskInDefaultDisplayFreeform: no task-level "
                        + "freeform entry path taskId=" + taskId
                        + " actualMode=" + getTaskWindowingMode(taskId));
                tryMiuiExitFreeformTask(taskId);
                setTaskResizeable(taskId, sOriginalResizeMode);
                return false;
            }
        }

        if (!resizeTask(taskId, bounds, 0)) {
            LSPLogger.w("TaskResizer.placeTaskInDefaultDisplayFreeform: resize failed, "
                    + "attempting freeform exit taskId=" + taskId);
            tryMiuiExitFreeformTask(taskId);
            setTaskResizeable(taskId, sOriginalResizeMode);
            return false;
        }
        if (!waitForFreeformPlacement(taskId, bounds)) {
            LSPLogger.w("TaskResizer.placeTaskInDefaultDisplayFreeform: resize accepted but "
                    + "WMS did not apply freeform placement taskId=" + taskId
                    + " actualMode=" + getTaskWindowingMode(taskId)
                    + " actualBounds=" + getTaskBounds(taskId));
            tryMiuiExitFreeformTask(taskId);
            setTaskResizeable(taskId, sOriginalResizeMode);
            return false;
        }
        LSPLogger.i("TaskResizer.placeTaskInDefaultDisplayFreeform: taskId=" + taskId
                + " modeBefore=" + mode + " modeAfter=" + getTaskWindowingMode(taskId)
                + " bounds=" + bounds);
        return true;
    }

    /**
     * MIUI's freeform request is asynchronous and may be accepted as a no-op.
     * Do not publish the freeform backend until WMS reports mode 5.
     */
    private static boolean waitForFreeformMode(int taskId) {
        long deadline = SystemClock.uptimeMillis() + FREEFORM_VERIFY_TIMEOUT_MS;
        do {
            if (getTaskWindowingMode(taskId) == WINDOWING_MODE_FREEFORM) {
                return true;
            }
            SystemClock.sleep(FREEFORM_VERIFY_INTERVAL_MS);
        } while (SystemClock.uptimeMillis() < deadline);
        return getTaskWindowingMode(taskId) == WINDOWING_MODE_FREEFORM;
    }

    /** Verifies both the task mode and the bounds after resizeTask returns. */
    private static boolean waitForFreeformPlacement(int taskId, Rect expectedBounds) {
        long deadline = SystemClock.uptimeMillis() + FREEFORM_VERIFY_TIMEOUT_MS;
        do {
            int mode = getTaskWindowingMode(taskId);
            Rect actualBounds = getTaskBounds(taskId);
            if (mode == WINDOWING_MODE_FREEFORM
                    && (actualBounds == null || expectedBounds.equals(actualBounds))) {
                return true;
            }
            SystemClock.sleep(FREEFORM_VERIFY_INTERVAL_MS);
        } while (SystemClock.uptimeMillis() < deadline);
        Rect actualBounds = getTaskBounds(taskId);
        return getTaskWindowingMode(taskId) == WINDOWING_MODE_FREEFORM
                && (actualBounds == null || expectedBounds.equals(actualBounds));
    }

    private static boolean isDefaultDisplayFreeformEnabled(Context context) {
        if (context == null) return false;
        try {
            String backend = Settings.Global.getString(context.getContentResolver(),
                    RENDER_BACKEND_SETTING);
            return RENDER_BACKEND_FREEFORM.equalsIgnoreCase(backend);
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.isDefaultDisplayFreeformEnabled: " + t);
            return false;
        }
    }

    /** Restores whichever presentation is currently active for a task. */
    private static void restoreTaskPresentation(int taskId) {
        if (taskId <= 0) return;
        if (sUsingDefaultDisplayFreeform && sResizedTaskId != null
                && sResizedTaskId == taskId) {
            if (sOriginalBounds != null) resizeTask(taskId, sOriginalBounds, 0);
            if (!tryMiuiExitFreeformTask(taskId)) {
                LSPLogger.w("TaskResizer.restoreTaskPresentation: freeform exit failed taskId="
                        + taskId);
            }
            setTaskResizeable(taskId, sOriginalResizeMode);
        } else if (sUsingSurfaceTransform) {
            TaskSurfaceTransformer.restore(taskId);
        }
        if (sResizedTaskId != null && sResizedTaskId == taskId) {
            clearPresentationState();
        }
    }

    private static void clearPresentationState() {
        sResizedTaskId = null;
        sOriginalBounds = null;
        sOriginalWindowingMode = WINDOWING_MODE_FULLSCREEN;
        sOriginalResizeMode = 0;
        sUsingSurfaceTransform = false;
        sUsingDefaultDisplayFreeform = false;
        sTransformReapplyUntil = 0L;
        sOrientationProbeUntil = 0L;
        sLastTransformReapply = 0L;
        sLandscapeTransformedTaskId = -1;
        sLastLandscapeSource = null;
        clearPendingMainTaskCandidate();
    }

    /**
     * 用 TaskOrganizer API 让 task 进入 freeform 模式。
     *
     * HyperOS 上 TaskOrganizer.createRootTask 签名变为 (int, int, IBinder),
     * 需要 TaskOrganizer 实例的 mToken 字段(IBinder)作为第三个参数。
     *
     * 但更优的路径是 MIUI 自有的 freeform 控制 API:
     *   registerMiuiFreeformModeControl(IMiuiFreeformModeControl)
     * 这是 HyperOS 专门为 freeform 模式提供的接口。
     */
    private static boolean tryEnterFreeformViaTaskOrganizer(int taskId) {
        LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: taskId=" + taskId);
        Class<?> taskOrganizerClz = null;
        try {
            taskOrganizerClz = Class.forName("android.window.TaskOrganizer");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: TaskOrganizer class not found: " + t);
            return false;
        }
        // 第一次调用时 dump 一次
        if (sTaskOrganizer == null) {
            dumpTaskOrganizerMethods(taskOrganizerClz);
            dumpMiuiFreeformModeControlInterface();
        }

        // 创建 TaskOrganizer 实例
        Object organizer;
        try {
            organizer = taskOrganizerClz.getDeclaredConstructor().newInstance();
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: cannot create instance: " + t);
            return false;
        }

        // 注册 organizer
        try {
            Method register = taskOrganizerClz.getMethod("registerOrganizer");
            register.setAccessible(true);
            register.invoke(organizer);
            LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: registered");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: registerOrganizer failed: " + t);
        }

        // 反射拿 mToken (IBinder)
        Object ownerToken = null;
        try {
            java.lang.reflect.Field f = taskOrganizerClz.getDeclaredField("mToken");
            f.setAccessible(true);
            ownerToken = f.get(organizer);
            LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: mToken=" + ownerToken);
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: get mToken failed: " + t);
        }
        if (ownerToken == null) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: no mToken, fallback to new Binder");
            ownerToken = new android.os.Binder();
        }

        // 拿 IBinder 接口类用于反射方法签名
        Class<?> iBinderClz = null;
        try {
            iBinderClz = Class.forName("android.os.IBinder");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: IBinder class not found: " + t);
            return false;
        }

        // createRootTask(int displayId, int windowingMode, IBinder ownerToken)
        // HyperOS 签名
        try {
            Method createRootTask = taskOrganizerClz.getMethod("createRootTask",
                    int.class, int.class, iBinderClz);
            createRootTask.setAccessible(true);
            createRootTask.invoke(organizer, 0, WINDOWING_MODE_FREEFORM, ownerToken);
            LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: createRootTask(3-arg) invoked");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: createRootTask(3-arg) failed: " + t);
            // 4 参数版本
            try {
                Method createRootTask = taskOrganizerClz.getMethod("createRootTask",
                        int.class, int.class, iBinderClz, boolean.class);
                createRootTask.setAccessible(true);
                createRootTask.invoke(organizer, 0, WINDOWING_MODE_FREEFORM, ownerToken, true);
                LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: createRootTask(4-arg) invoked");
            } catch (Throwable t2) {
                LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: createRootTask(4-arg) failed: " + t2);
                return false;
            }
        }

        // createRootTask 是异步的,需要等 onTaskAppeared 回调拿到 rootTaskId
        // 这里用 getRootTasks 拿最新的 freeform root task
        Integer freeformRootTaskId = null;
        try {
            Method getRootTasks = taskOrganizerClz.getMethod("getRootTasks", int.class, int[].class);
            getRootTasks.setAccessible(true);
            int[] filter = new int[]{WINDOWING_MODE_FREEFORM};
            Object result = getRootTasks.invoke(organizer, 0, filter);
            if (result instanceof List) {
                List<?> tasks = (List<?>) result;
                LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: freeform root tasks count=" + tasks.size());
                if (!tasks.isEmpty()) {
                    Object lastTask = tasks.get(tasks.size() - 1);
                    freeformRootTaskId = readIntField(lastTask, "taskId");
                    LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: latest freeform root taskId=" + freeformRootTaskId);
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: getRootTasks failed: " + t);
        }

        if (freeformRootTaskId == null || freeformRootTaskId <= 0) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: no freeform root task, "
                    + "MIUI freeform API may be the real path");
            return false;
        }

        // moveTaskToRootTask(taskId, freeformRootTaskId, true)
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) {
                LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: IATM null");
                return false;
            }
            Method moveTask = iface.getDeclaredMethod("moveTaskToRootTask",
                    int.class, int.class, boolean.class);
            moveTask.setAccessible(true);
            moveTask.invoke(iatm, taskId, freeformRootTaskId, true);
            LSPLogger.i("TaskResizer.tryEnterFreeformViaTaskOrganizer: moveTaskToRootTask ok, "
                    + "taskId=" + taskId + " rootTaskId=" + freeformRootTaskId);
            sFreeformRootTaskId = freeformRootTaskId;
            sTaskOrganizer = organizer;
            return true;
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.tryEnterFreeformViaTaskOrganizer: moveTaskToRootTask failed: " + t);
            return false;
        }
    }

    /** dump IMiuiFreeformModeControl 接口的所有方法,并尝试通过 IWindowManager 拿实例 */
    private static void dumpMiuiFreeformModeControlInterface() {
        // 1. dump 接口方法
        Class<?> miuiIfcClz = null;
        String[] candidates = {
                "miui.app.IMiuiFreeformModeControl",
                "android.app.IMiuiFreeformModeControl",
                "android.window.IMiuiFreeformModeControl",
                "miui.app.MiuiFreeformModeControl"
        };
        for (String name : candidates) {
            try {
                miuiIfcClz = Class.forName(name);
                LSPLogger.i("TaskResizer.dumpMiuiFreeformModeControl: found at " + name);
                break;
            } catch (Throwable ignore) {
            }
        }
        if (miuiIfcClz == null) {
            LSPLogger.w("TaskResizer.dumpMiuiFreeformModeControl: interface not found");
            return;
        }
        Method[] all = miuiIfcClz.getMethods();
        LSPLogger.d("TaskResizer.dumpMiuiFreeformModeControl: total methods=" + all.length);
        for (Method m : all) {
            StringBuilder sb = new StringBuilder();
            sb.append("  ").append(m.getName()).append("(");
            Class<?>[] params = m.getParameterTypes();
            for (int i = 0; i < params.length; i++) {
                if (i > 0) sb.append(",");
                sb.append(params[i].getSimpleName());
            }
            sb.append(") -> ").append(m.getReturnType().getSimpleName());
            LSPLogger.d("TaskResizer.dumpMiuiFreeformModeControl:" + sb);
        }

        // 2. dump IWindowManager 上所有 miui/freeform 相关方法
        try {
            Class<?> iwmIfc = Class.forName("android.view.IWindowManager");
            Method[] iwmMethods = iwmIfc.getMethods();
            int matched = 0;
            for (Method m : iwmMethods) {
                String n = m.getName().toLowerCase();
                if (n.contains("miui") || n.contains("freeform")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  IWM.").append(m.getName()).append("(");
                    Class<?>[] params = m.getParameterTypes();
                    for (int i = 0; i < params.length; i++) {
                        if (i > 0) sb.append(",");
                        sb.append(params[i].getSimpleName());
                    }
                    sb.append(") -> ").append(m.getReturnType().getSimpleName());
                    LSPLogger.d("TaskResizer.dumpMiuiFreeformModeControl:" + sb);
                    matched++;
                }
            }
            LSPLogger.i("TaskResizer.dumpMiuiFreeformModeControl: IWM miui/freeform methods=" + matched);
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.dumpMiuiFreeformModeControl: dump IWM failed: " + t);
        }

        // 3. dump IActivityTaskManager 上所有 miui/freeform 相关方法
        try {
            Class<?> iatmIfc = Class.forName("android.app.IActivityTaskManager");
            Method[] iatmMethods = iatmIfc.getMethods();
            int matched = 0;
            for (Method m : iatmMethods) {
                String n = m.getName().toLowerCase();
                if (n.contains("miui") || n.contains("freeform")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  IATM.").append(m.getName()).append("(");
                    Class<?>[] params = m.getParameterTypes();
                    for (int i = 0; i < params.length; i++) {
                        if (i > 0) sb.append(",");
                        sb.append(params[i].getSimpleName());
                    }
                    sb.append(") -> ").append(m.getReturnType().getSimpleName());
                    LSPLogger.d("TaskResizer.dumpMiuiFreeformModeControl:" + sb);
                    matched++;
                }
            }
            LSPLogger.i("TaskResizer.dumpMiuiFreeformModeControl: IATM miui/freeform methods=" + matched);
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.dumpMiuiFreeformModeControl: dump IATM failed: " + t);
        }

        // 4. 尝试找客户端 wrapper 类(类似 WindowManagerGlobal)
        String[] managerCandidates = {
                "miui.app.MiuiFreeformModeManager",
                "android.app.MiuiFreeformModeManager",
                "android.window.MiuiFreeformModeManager",
                "miui.util.MiuiFreeformModeManager"
        };
        for (String name : managerCandidates) {
            try {
                Class<?> clz = Class.forName(name);
                LSPLogger.i("TaskResizer.dumpMiuiFreeformModeControl: found manager class " + name);
                Method[] ms = clz.getMethods();
                for (Method m : ms) {
                    if (java.lang.reflect.Modifier.isStatic(m.getModifiers())) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("  static ").append(m.getName()).append("(");
                        Class<?>[] params = m.getParameterTypes();
                        for (int i = 0; i < params.length; i++) {
                            if (i > 0) sb.append(",");
                            sb.append(params[i].getSimpleName());
                        }
                        sb.append(") -> ").append(m.getReturnType().getSimpleName());
                        LSPLogger.d("TaskResizer.dumpMiuiFreeformModeControl:" + sb);
                    }
                }
            } catch (Throwable ignore) {
            }
        }
    }

    /** dump TaskOrganizer 类的所有 public 方法 */
    private static void dumpTaskOrganizerMethods(Class<?> clz) {
        try {
            Method[] all = clz.getMethods();
            LSPLogger.d("TaskResizer.dumpTaskOrganizerMethods: total=" + all.length);
            for (Method m : all) {
                String name = m.getName().toLowerCase();
                if (name.contains("root") || name.contains("task") || name.contains("organize")
                        || name.contains("window") || name.contains("register")
                        || name.contains("create") || name.contains("delete")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  ");
                    if (java.lang.reflect.Modifier.isStatic(m.getModifiers())) sb.append("static ");
                    sb.append(m.getName()).append("(");
                    Class<?>[] params = m.getParameterTypes();
                    for (int i = 0; i < params.length; i++) {
                        if (i > 0) sb.append(",");
                        sb.append(params[i].getSimpleName());
                    }
                    sb.append(") -> ").append(m.getReturnType().getSimpleName());
                    LSPLogger.d("TaskResizer.dumpTaskOrganizerMethods:" + sb);
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.dumpTaskOrganizerMethods: threw: " + t);
        }
    }

    /**
     * 恢复之前缩小的 app 到全屏。
     */
    public static boolean restoreForegroundTask() {
        LSPLogger.i("TaskResizer.restoreForegroundTask: sResizedTaskId=" + sResizedTaskId);
        clearPendingMainTaskCandidate();
        sExternalLaunchForceFrom = 0L;
        sExternalLaunchWatchUntil = 0L;
        sManualRotationTaskId = -1;
        if (sResizedTaskId == null) {
            LSPLogger.i("TaskResizer.restoreForegroundTask: no app transform to restore");
            return true;
        }
        int taskId = sResizedTaskId;
        boolean ok = true;

        if (sUsingDefaultDisplayFreeform) {
            if (sOriginalBounds != null) {
                ok = resizeTask(taskId, sOriginalBounds, 0) && ok;
            }
            if (!tryMiuiExitFreeformTask(taskId)) {
                LSPLogger.w("TaskResizer.restoreForegroundTask: freeform exit failed; "
                        + "leaving task bounds restored without changing display mode");
                ok = false;
            }
            setTaskResizeable(taskId, sOriginalResizeMode);
            clearPresentationState();
            LSPLogger.i("TaskResizer.restoreForegroundTask: freeform pilot done, ok=" + ok);
            return ok;
        }

        if (sUsingSurfaceTransform) {
            ok = TaskSurfaceTransformer.restore(taskId);
            sResizedTaskId = null;
            sOriginalBounds = null;
            sOriginalWindowingMode = WINDOWING_MODE_FULLSCREEN;
            sOriginalResizeMode = 0;
            clearPresentationState();
            LSPLogger.i("TaskResizer.restoreForegroundTask: surface path done, ok=" + ok);
            return ok;
        }

        // Step1: 先 resize 回原 bounds
        if (sOriginalBounds != null) {
            resizeTask(taskId, sOriginalBounds, 0);
        }

        // Step2: 通过 MIUI freeform API 退出 freeform (回到 fullscreen)
        // 优先用 exitFreeformTask,会触发系统的退出动画和状态恢复
        if (!tryMiuiExitFreeformTask(taskId)) {
            LSPLogger.w("TaskResizer.restoreForegroundTask: MIUI exitFreeformTask failed, "
                    + "trying setDisplayWindowingMode fallback");
            // 兜底: 切回原 windowing mode
            int targetMode = (sOriginalWindowingMode != 0)
                    ? sOriginalWindowingMode : WINDOWING_MODE_FULLSCREEN;
            setDisplayWindowingMode(0, targetMode);
        }

        // Step3: 恢复原 resizeMode
        setTaskResizeable(taskId, sOriginalResizeMode);

        sResizedTaskId = null;
        sOriginalBounds = null;
        sOriginalWindowingMode = WINDOWING_MODE_FULLSCREEN;
        sOriginalResizeMode = 0;
        clearPresentationState();
        LSPLogger.i("TaskResizer.restoreForegroundTask: done, ok=" + ok);
        return ok;
    }

    /** Returns the task currently occupying the main OneStep area. */
    public static Integer getCurrentTaskId() {
        return sResizedTaskId;
    }

    /**
     * Exchanges the transformed main task while keeping OneStep active.
     */
    public static boolean switchToTask(Context context, int taskId,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        if (taskId <= 0) return false;
        Integer previousTaskId = sResizedTaskId;
        if (previousTaskId != null && previousTaskId == taskId) {
            bringTaskToFront(context, taskId);
            return placeMainTask(context, taskId, sidebarWidth, screenWidth,
                    topHeight, screenHeight, sidebarOnLeft);
        }

        if (previousTaskId != null) {
            restoreTaskPresentation(previousTaskId);
        }
        if (!bringTaskToFront(context, taskId)) {
            if (previousTaskId != null) {
                placeMainTask(context, previousTaskId, sidebarWidth, screenWidth,
                        topHeight, screenHeight, sidebarOnLeft);
            }
            return false;
        }
        Rect originalBounds = getTaskBounds(taskId);
        int originalWindowingMode = getTaskWindowingMode(taskId);
        int originalResizeMode = getTaskResizeable(taskId);
        if (!placeMainTask(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            LSPLogger.w("TaskResizer.switchToTask: transform failed for taskId=" + taskId);
            return false;
        }
        sResizedTaskId = taskId;
        sOriginalBounds = originalBounds;
        sOriginalWindowingMode = originalWindowingMode;
        sOriginalResizeMode = originalResizeMode;
        LSPLogger.i("TaskResizer.switchToTask: previous=" + previousTaskId
                + " current=" + taskId);
        return true;
    }

    /** Reapplies the OneStep transform after another task was briefly launched for a slot. */
    public static boolean reapplyCurrentTransform(Context context, int sidebarWidth, int screenWidth,
            int topHeight, int screenHeight, boolean sidebarOnLeft) {
        Integer taskId = sResizedTaskId;
        return taskId != null && placeMainTask(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft);
    }

    /** Transfers the OneStep transform when display 0 changes to another app or Home. */
    public static boolean syncMainTaskTransform(Context context, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft) {
        Integer actualTaskId = getTopVisibleTaskIdOnDisplay(context, 0);
        if (actualTaskId == null || actualTaskId <= 0) return false;
        Integer previousTaskId = sResizedTaskId;
        long now = SystemClock.uptimeMillis();
        boolean externalLaunchActive = now <= sExternalLaunchWatchUntil;
        if (!externalLaunchActive && sExternalLaunchWatchUntil != 0L) {
            sExternalLaunchForceFrom = 0L;
            sExternalLaunchWatchUntil = 0L;
            clearPendingMainTaskCandidate();
        }

        if (isHomeTask(context, actualTaskId)) {
            clearPendingMainTaskCandidate();
            if (previousTaskId != null) restoreTaskPresentation(previousTaskId);
            clearPresentationState();
            return true;
        }

        if (actualTaskId.equals(previousTaskId)) {
            clearPendingMainTaskCandidate();
            boolean externalForceActive = externalLaunchActive
                    && now >= sExternalLaunchForceFrom;
            boolean reapplyActive = now <= sTransformReapplyUntil
                    || externalForceActive;
            boolean probeActive = now <= sOrientationProbeUntil;
            Rect taskBounds = getTaskBounds(actualTaskId);
            boolean landscape = isLandscapeTask(context, actualTaskId, taskBounds);
            boolean orientationChanged = landscape
                    != (sLandscapeTransformedTaskId == actualTaskId);
            if (sUsingDefaultDisplayFreeform) {
                if (reapplyActive || probeActive) {
                    Rect mainBounds = getMainTaskBounds(sidebarWidth, screenWidth,
                            topHeight, screenHeight, sidebarOnLeft);
                    resizeTask(actualTaskId, mainBounds, 0);
                    sLastTransformReapply = now;
                }
                return true;
            }
            // Always re-apply on orientation flip (landscape↔portrait), inside the
            // short reapply window after a transform change, or when WMS publishes a
            // NEW fixed-letterbox rect for this landscape task (the first entry often
            // transforms with the fallback rect before WMS finishes layout — without
            // this, a wrong early rotate90 stuck until the user swapped twice).
            // Do NOT re-apply merely because the task is landscape: that made the
            // 120 ms reconcile loop re-issue the same rotate90 transaction forever.
            Rect landscapeSource = landscape
                    ? getLandscapeSourceBounds(context, actualTaskId,
                            screenWidth, screenHeight)
                    : null;
            boolean sourceChanged = landscape
                    && sLandscapeTransformedTaskId == actualTaskId
                    && landscapeSource != null
                    && !landscapeSource.equals(sLastLandscapeSource);
            if (sUsingSurfaceTransform && (reapplyActive || probeActive || orientationChanged
                    || sourceChanged)
                    && now - sLastTransformReapply >= FORCED_REAPPLY_INTERVAL_MS) {
                if (reapplyActive || orientationChanged || sourceChanged) {
                    if (shrinkTaskSurface(context, actualTaskId, sidebarWidth,
                            screenWidth, topHeight, screenHeight, sidebarOnLeft,
                            null, reapplyActive)) {
                        sLastTransformReapply = now;
                        sLastLandscapeSource = landscapeSource;
                        if (orientationChanged) {
                            armTransformReapply();
                            LSPLogger.i("TaskResizer.syncMainTaskTransform: orientation flip"
                                    + " taskId=" + actualTaskId + " landscape=" + landscape);
                        }
                        if (sourceChanged) {
                            LSPLogger.i("TaskResizer.syncMainTaskTransform: letterbox source"
                                    + " changed taskId=" + actualTaskId
                                    + " source=" + landscapeSource);
                        }
                    }
                } else {
                    sLastTransformReapply = now;
                }
                if (landscape && sLandscapeTransformedTaskId == actualTaskId) {
                    sOrientationProbeUntil = 0L;
                }
            }
            return true;
        }

        if (externalLaunchActive && !isStableMainTaskCandidate(actualTaskId, now)) {
            return false;
        }
        clearPendingMainTaskCandidate();

        Rect originalBounds = getTaskBounds(actualTaskId);
        int originalWindowingMode = getTaskWindowingMode(actualTaskId);
        int originalResizeMode = getTaskResizeable(actualTaskId);
        if (previousTaskId != null) restoreTaskPresentation(previousTaskId);
        if (!placeMainTask(context, actualTaskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            if (previousTaskId != null) {
                placeMainTask(context, previousTaskId, sidebarWidth, screenWidth,
                        topHeight, screenHeight, sidebarOnLeft);
            }
            return false;
        }
        sResizedTaskId = actualTaskId;
        sOriginalBounds = originalBounds;
        sOriginalWindowingMode = originalWindowingMode;
        sOriginalResizeMode = originalResizeMode;
        armTransformReapply();
        LSPLogger.i("TaskResizer.syncMainTaskTransform: previous=" + previousTaskId
                + " actual=" + actualTaskId);
        return true;
    }

    /**
     * Marks a share/drag launch that can traverse resolver and translucent activities.
     * The existing 120 ms reconcile loop consumes this bounded window; no second loop is
     * created, and normal idempotence resumes automatically after the deadline.
     */
    public static void noteExternalActivityLaunch() {
        long now = SystemClock.uptimeMillis();
        sExternalLaunchForceFrom = now + EXTERNAL_LAUNCH_FORCE_DELAY_MS;
        sExternalLaunchWatchUntil = now + EXTERNAL_LAUNCH_WATCH_MS;
        clearPendingMainTaskCandidate();
        LSPLogger.i("TaskResizer.noteExternalActivityLaunch: current=" + sResizedTaskId
                + " forceFrom=" + sExternalLaunchForceFrom
                + " watchUntil=" + sExternalLaunchWatchUntil);
    }

    private static boolean isStableMainTaskCandidate(int taskId, long now) {
        if (sPendingMainTaskId == null || sPendingMainTaskId != taskId) {
            sPendingMainTaskId = taskId;
            sPendingMainTaskSince = now;
            sPendingMainTaskSamples = 1;
            LSPLogger.d("TaskResizer.syncMainTaskTransform: observe candidate=" + taskId);
            return false;
        }
        sPendingMainTaskSamples++;
        boolean stable = sPendingMainTaskSamples >= MAIN_TASK_STABILITY_SAMPLES
                && now - sPendingMainTaskSince >= MAIN_TASK_STABILITY_MS;
        if (stable) {
            LSPLogger.i("TaskResizer.syncMainTaskTransform: accept candidate=" + taskId
                    + " samples=" + sPendingMainTaskSamples
                    + " stableMs=" + (now - sPendingMainTaskSince));
        }
        return stable;
    }

    private static void clearPendingMainTaskCandidate() {
        sPendingMainTaskId = null;
        sPendingMainTaskSince = 0L;
        sPendingMainTaskSamples = 0;
    }

    public static boolean isHomeVisibleOnDefaultDisplay(Context context) {
        Integer taskId = getTopVisibleTaskIdOnDisplay(context, 0);
        return taskId != null && isHomeTask(context, taskId);
    }

    /** Parks the transformed main app on a live display and reveals the launcher. */
    public static boolean parkMainTaskAndShowHome(Context context, int displayId,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        Integer taskId = sResizedTaskId;
        if (taskId == null || displayId < 0) return false;

        restoreTaskPresentation(taskId);
        sResizedTaskId = null;
        sUsingDefaultDisplayFreeform = false;
        sUsingSurfaceTransform = false;
        if (!moveRootTaskToDisplay(taskId, displayId)) {
            restoreTransformState(taskId, sidebarWidth, screenWidth, topHeight,
                    screenHeight, sidebarOnLeft);
            return false;
        }

        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            // After moving the app to a virtual display, HyperOS may use that display as
            // the launch target unless Home's display is explicit. That re-parents the
            // parked task back to display 0 a few hundred milliseconds later.
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
            context.startActivity(home, options.toBundle());
            LSPLogger.i("TaskResizer.parkMainTaskAndShowHome: parked=" + taskId
                    + " display=" + displayId + " homeDisplay=" + Display.DEFAULT_DISPLAY);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.parkMainTaskAndShowHome: HOME launch failed", t);
            moveRootTaskToDisplay(taskId, 0);
            restoreTransformState(taskId, sidebarWidth, screenWidth, topHeight,
                    screenHeight, sidebarOnLeft);
            return false;
        }
    }

    /** Brings a live slot task into the main area when the launcher occupies display 0. */
    public static boolean activateTaskFromDisplay(Context context, int taskId, int sourceDisplayId,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        if (taskId <= 0 || sourceDisplayId < 0) return false;
        if (!moveRootTaskToDisplay(taskId, 0)) return false;
        if (!placeMainTask(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            moveRootTaskToDisplay(taskId, sourceDisplayId);
            return false;
        }
        sResizedTaskId = taskId;
        armTransformReapply();
        LSPLogger.i("TaskResizer.activateTaskFromDisplay: main=" + taskId
                + " sourceDisplay=" + sourceDisplayId);
        return true;
    }

    public static boolean bringTaskToFront(Context context, int taskId) {
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return false;
            am.moveTaskToFront(taskId, 0);
            LSPLogger.i("TaskResizer.bringTaskToFront: taskId=" + taskId);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.bringTaskToFront: taskId=" + taskId + " failed", t);
            return false;
        }
    }

    /** Moves a root task between the physical display and a live OneStep display. */
    public static boolean moveRootTaskToDisplay(int taskId, int displayId) {
        // A task can arrive here through the app-list path, park path, or swap path.
        // All of them must enter a VirtualDisplay with a neutral leash; otherwise a
        // main-window scale/rotation is inherited and the slot shows only a corner.
        // neutralize() — NOT restore(): during a swap the NEW main task is already
        // transformed and tracked; restore() would clearState() and destroy that.
        LSPLogger.i("TaskResizer.moveRootTaskToDisplay: neutralize taskId=" + taskId
                + " before displayId=" + displayId);
        TaskSurfaceTransformer.neutralize(taskId);

        // ActivityRelaunchPolicyHooker现在会阻止所有display变化导致的relaunch
        // 不再需要mirror_switch的Settings.Global异步通知机制
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) return false;
            Method method = iface.getDeclaredMethod(
                    "moveRootTaskToDisplay", int.class, int.class);
            method.setAccessible(true);
            method.invoke(iatm, taskId, displayId);
            boolean settled = waitForTaskDisplay(taskId, displayId);
            LSPLogger.i("TaskResizer.moveRootTaskToDisplay: taskId=" + taskId
                    + " displayId=" + displayId + " settled=" + settled);
            return settled;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.moveRootTaskToDisplay: taskId=" + taskId
                    + " displayId=" + displayId + " failed", t);
            return false;
        }
    }

    /**
     * WMS reparents root tasks asynchronously. Do not apply a main-window leash
     * transform until the task is actually on its destination display, otherwise
     * the old main transform can be re-applied to the parked slot task.
     */
    private static boolean waitForTaskDisplay(int taskId, int displayId) {
        Context context = getCurrentApplicationContext();
        if (context == null) return true;
        long deadline = SystemClock.uptimeMillis() + 700L;
        boolean observed = false;
        int lastDisplay = -1;
        do {
            lastDisplay = findTaskDisplayId(context, taskId);
            if (lastDisplay == displayId) return true;
            if (lastDisplay >= 0) observed = true;
            SystemClock.sleep(30L);
        } while (SystemClock.uptimeMillis() < deadline);
        // Some vendor builds hide tasks briefly from getRunningTasks(). Do not
        // reject the move when no authoritative display id was observable.
        boolean settled = !observed;
        LSPLogger.w("TaskResizer.waitForTaskDisplay: taskId=" + taskId
                + " expected=" + displayId + " actual=" + lastDisplay
                + " observed=" + observed + " settled=" + settled);
        return settled;
    }


    /**
     * HyperOS relaunches an Activity when only its displayId changes. Its own
     * ActivityRecordImpl has a guarded mirror-switch path that marks virtual-display
     * configuration changes as handled. Keep that mode active through the asynchronous
     * transition, then restore the value that existed before OneStep touched it.
     */
    private static void armMirrorSwitchMode() {
        Context context = getCurrentApplicationContext();
        if (context == null) return;
        try {
            if (sOriginalMirrorSwitchMode == null) {
                sOriginalMirrorSwitchMode = Settings.Global.getInt(
                        context.getContentResolver(), "mirror_switch", 0);
            }
            Settings.Global.putInt(context.getContentResolver(), "mirror_switch", 2);
            int generation = ++sMirrorSwitchGeneration;
            sMainHandler.postDelayed(() -> {
                if (generation != sMirrorSwitchGeneration) return;
                Context current = getCurrentApplicationContext();
                Integer original = sOriginalMirrorSwitchMode;
                if (current == null || original == null) return;
                try {
                    Settings.Global.putInt(current.getContentResolver(),
                            "mirror_switch", original);
                    LSPLogger.i("TaskResizer.mirrorSwitch: restored=" + original);
                } catch (Throwable t) {
                    LSPLogger.w("TaskResizer.mirrorSwitch: restore failed", t);
                } finally {
                    sOriginalMirrorSwitchMode = null;
                }
            }, 3000L);
            LSPLogger.i("TaskResizer.mirrorSwitch: armed mode=2 original="
                    + sOriginalMirrorSwitchMode);
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.mirrorSwitch: enable failed", t);
        }
    }

    private static Context getCurrentApplicationContext() {
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Method currentApplication = activityThread.getDeclaredMethod("currentApplication");
            currentApplication.setAccessible(true);
            Object application = currentApplication.invoke(null);
            return application instanceof Context ? (Context) application : null;
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getCurrentApplicationContext: failed: " + t);
            return null;
        }
    }

    public static boolean removeTask(int taskId) {
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) return false;
            Method method = iface.getDeclaredMethod("removeTask", int.class);
            method.setAccessible(true);
            Object result = method.invoke(iatm, taskId);
            boolean removed = !(result instanceof Boolean) || (Boolean) result;
            LSPLogger.i("TaskResizer.removeTask: taskId=" + taskId
                    + " removed=" + removed);
            return removed;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.removeTask: taskId=" + taskId + " failed", t);
            return false;
        }
    }

    /**
     * Exchanges the physical main task and one live virtual-display task.
     * Both tasks remain real activities; no bitmap or task snapshot is involved.
     */
    public static boolean swapMainTaskWithDisplay(Context context, int slotTaskId,
            int slotDisplayId, int sidebarWidth, int screenWidth, int topHeight,
            int screenHeight, boolean sidebarOnLeft) {
        return swapMainTaskWithDisplay(context, slotTaskId, slotDisplayId,
                sidebarWidth, screenWidth, topHeight, screenHeight, sidebarOnLeft, -1, null);
    }

    /** Exchanges the main task with a slot without adding a visual transition. */
    public static boolean swapMainTaskWithDisplay(Context context, int slotTaskId,
            int slotDisplayId, int sidebarWidth, int screenWidth, int topHeight,
            int screenHeight, boolean sidebarOnLeft, int slotIndex) {
        return swapMainTaskWithDisplay(context, slotTaskId, slotDisplayId,
                sidebarWidth, screenWidth, topHeight, screenHeight, sidebarOnLeft,
                slotIndex, null);
    }

    /** Same exchange with orientation captured before WMS changes the task display. */
    public static boolean swapMainTaskWithDisplay(Context context, int slotTaskId,
            int slotDisplayId, int sidebarWidth, int screenWidth, int topHeight,
            int screenHeight, boolean sidebarOnLeft, int slotIndex,
            boolean slotLandscape) {
        return swapMainTaskWithDisplay(context, slotTaskId, slotDisplayId,
                sidebarWidth, screenWidth, topHeight, screenHeight, sidebarOnLeft,
                slotIndex, Boolean.valueOf(slotLandscape));
    }

    /** Compact state string included in periodic diagnostics and swap boundaries. */
    public static String getPresentationDebugState() {
        Integer taskId = sResizedTaskId;
        Rect bounds = taskId == null ? null : getTaskBounds(taskId);
        return "resizedTaskId=" + taskId
                + " bounds=" + bounds
                + " usingSurfaceTransform=" + sUsingSurfaceTransform
                + " usingDefaultDisplayFreeform=" + sUsingDefaultDisplayFreeform
                + " landscapeTransformedTaskId=" + sLandscapeTransformedTaskId
                + " reapplyUntil=" + sTransformReapplyUntil
                + " transformer=" + TaskSurfaceTransformer.getDebugState();
    }

    private static boolean swapMainTaskWithDisplay(Context context, int slotTaskId,
            int slotDisplayId, int sidebarWidth, int screenWidth, int topHeight,
            int screenHeight, boolean sidebarOnLeft, int slotIndex,
            Boolean forcedSlotLandscape) {
        Integer currentTaskId = sResizedTaskId;
        if (currentTaskId == null || slotTaskId <= 0 || slotDisplayId < 0) return false;
        if (currentTaskId == slotTaskId) return true;

        Boolean slotLandscape = forcedSlotLandscape;
        if (slotLandscape == null) {
            slotLandscape = isLandscapeTask(context, slotTaskId);
        }

        // A rotated main-task leash must be restored before it is reparented to
        // the slot display. Otherwise the small window inherits the main matrix.
        LSPLogger.i("TaskResizer.swapMainTaskWithDisplay: restore old main task="
                + currentTaskId + " before display move state="
                + getPresentationDebugState());
        restoreTaskPresentation(currentTaskId);

        // Keep the sidebar window and its TextureViews untouched.  Move the
        // selected root to display 0, apply the normal main transform, then park
        // the former main root on the selected slot display in the same call.
        if (!moveRootTaskToDisplay(slotTaskId, 0)) {
            restoreTransformState(currentTaskId, sidebarWidth, screenWidth, topHeight,
                    screenHeight, sidebarOnLeft);
            return false;
        }
        if (!shrinkTaskSurface(context, slotTaskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft, slotLandscape)) {
            moveRootTaskToDisplay(slotTaskId, slotDisplayId);
            restoreTransformState(currentTaskId, sidebarWidth, screenWidth, topHeight,
                    screenHeight, sidebarOnLeft);
            return false;
        }

        if (!moveRootTaskToDisplay(currentTaskId, slotDisplayId)) {
            TaskSurfaceTransformer.restore(slotTaskId);
            moveRootTaskToDisplay(slotTaskId, slotDisplayId);
            restoreTransformState(currentTaskId, sidebarWidth, screenWidth, topHeight,
                    screenHeight, sidebarOnLeft);
            return false;
        }

        sResizedTaskId = slotTaskId;
        sUsingSurfaceTransform = true;
        sOriginalBounds = null;
        sOriginalWindowingMode = WINDOWING_MODE_FULLSCREEN;
        sOriginalResizeMode = 0;
        armTransformReapply();
        LSPLogger.i("TaskResizer.swapMainTaskWithDisplay: main=" + slotTaskId
                + " liveDisplay=" + slotDisplayId + " parked=" + currentTaskId);
        return true;
    }

    private static void restoreTransformState(int taskId, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft) {
        if (placeMainTask(null, taskId, sidebarWidth, screenWidth, topHeight,
                screenHeight, sidebarOnLeft)) {
            sResizedTaskId = taskId;
            armTransformReapply();
        }
    }

    /** Applies the OneStep transform, rotating a landscape task into the portrait main area. */
    private static boolean shrinkTaskSurface(Context context, int taskId, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft) {
        return shrinkTaskSurface(context, taskId, sidebarWidth, screenWidth, topHeight,
                screenHeight, sidebarOnLeft, null, false);
    }

    private static boolean shrinkTaskSurface(Context context, int taskId, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft,
            Boolean forcedLandscape) {
        return shrinkTaskSurface(context, taskId, sidebarWidth, screenWidth, topHeight,
                screenHeight, sidebarOnLeft, forcedLandscape, false);
    }

    private static boolean shrinkTaskSurface(Context context, int taskId, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft,
            Boolean forcedLandscape, boolean force) {
        Rect taskBounds = getTaskBounds(taskId);
        boolean landscape = forcedLandscape != null
                ? forcedLandscape : isLandscapeTask(context, taskId, taskBounds);
        if (!landscape) {
            sLandscapeTransformedTaskId = -1;
            sLastLandscapeSource = null;
            return TaskSurfaceTransformer.shrink(taskId, sidebarWidth, screenWidth,
                    topHeight, screenHeight, sidebarOnLeft, force);
        }

        // The physical display is intentionally kept portrait by RotationGuard. WMS therefore
        // gives a landscape ActivityRecord a horizontal fixed-orientation letterbox (for this
        // device, roughly 1440x648 at y=169). The task buffer itself is already landscape, but
        // the parent leash still lives in the physical portrait coordinate space. Rotate that
        // letterbox into the OneStep main rectangle; omitting this step leaves a wide strip at
        // the top of the main area and makes the app look portrait/vertically stretched.
        Rect source = getLandscapeSourceBounds(context, taskId, screenWidth, screenHeight);
        int left = sidebarOnLeft ? sidebarWidth : 0;
        int right = sidebarOnLeft ? screenWidth : screenWidth - sidebarWidth;
        Rect destination = new Rect(left, topHeight, right, screenHeight);
        if (TaskSurfaceTransformer.rotate90(taskId, source, destination, force)) {
            sLandscapeTransformedTaskId = taskId;
            sLastLandscapeSource = source;
            return true;
        }

        // Keep the task visible if a ROM does not expose setMatrix. This fallback is still
        // uniform and is preferable to leaving a stale matrix from the previous task.
        sLandscapeTransformedTaskId = -1;
        return TaskSurfaceTransformer.shrink(taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft, force);
    }

    private static Rect getLandscapeSourceBounds(Context context, int taskId,
            int screenWidth, int screenHeight) {
        Rect fixedBounds = context == null ? null
                : OneStepStateBridge.getTaskFixedLetterboxBounds(context, taskId);
        if (fixedBounds != null && fixedBounds.width() > 0 && fixedBounds.height() > 0
                && fixedBounds.left >= 0 && fixedBounds.top >= 0
                && fixedBounds.right <= screenWidth && fixedBounds.bottom <= screenHeight) {
            return fixedBounds;
        }

        // Settings.Global is updated by several system_server callbacks and can briefly lose
        // this task's entry while another task publishes its bounds. Derive the same WMS
        // letterbox geometry locally instead of falling back to the virtual display's 3200x1440
        // coordinate space. This keeps the rotation stable across a display swap.
        return getFixedOrientationContentBounds(context, screenWidth, screenHeight);
    }

    private static Rect getFixedOrientationContentBounds(Context context,
            int screenWidth, int screenHeight) {
        float landscapeAspectRatio = screenHeight / (float) screenWidth;
        int contentHeight = Math.round(screenWidth / landscapeAspectRatio);
        int topInset = sFixedOrientationTopInset;
        if (context != null) {
            try {
                int resourceId = context.getResources().getIdentifier(
                        "status_bar_height", "dimen", "android");
                if (resourceId != 0) {
                    topInset = context.getResources().getDimensionPixelSize(resourceId);
                    sFixedOrientationTopInset = topInset;
                }
            } catch (Throwable t) {
                LSPLogger.d("TaskResizer.getFixedOrientationContentBounds: " + t);
            }
        }
        return new Rect(0, topInset, screenWidth, topInset + contentHeight);
    }

    private static boolean isLandscapeTask(Context context, int taskId, Rect taskBounds) {
        if (context == null) return false;

        if (taskId > 0 && sManualRotationTaskId == taskId) return true;

        // Explicit runtime request is authoritative. Evidence 2026-07-23 00:45:09 /
        // 00:53:13: Bilibili published orientation=1 (portrait) after fullscreen exit,
        // but sLandscapeTransformedTaskId still forced rotate90 → main stuck landscape.
        // Portrait must win over the sticky flag so syncMainTaskTransform sees
        // orientationChanged (landscape=false vs sticky==taskId) and re-applies shrink.
        // Do NOT clear sticky here — clearing would hide orientationChanged.
        Integer requestedOrientation = OneStepStateBridge.getTaskRequestedOrientation(
                context, taskId);
        if (requestedOrientation != null) {
            if (RequestedOrientationHooker.isLandscape(requestedOrientation)) return true;
            if (RequestedOrientationHooker.isPortrait(requestedOrientation)) {
                if (taskId > 0 && sLandscapeTransformedTaskId == taskId) {
                    LSPLogger.i("TaskResizer.isLandscapeTask: portrait overrides sticky"
                            + " taskId=" + taskId + " requested=" + requestedOrientation);
                }
                return false;
            }
        }

        // While the app still has no explicit portrait request, keep the already-applied
        // rotate90 sticky so park does not create a portrait VirtualDisplay mid-player.
        // (Root activity manifest is often portrait, e.g. MainActivityV2.)
        if (taskId > 0 && sLandscapeTransformedTaskId == taskId) return true;

        // Manifest orientation is stable across display moves, but only trust an *explicit*
        // landscape. Portrait in the root activity must not veto a player that was already
        // transformed as landscape on the main surface.
        try {
            ComponentName component = findTaskComponent(context, taskId);
            if (component != null) {
                ActivityInfo info = context.getPackageManager().getActivityInfo(component, 0);
                int orientation = info.screenOrientation;
                if (RequestedOrientationHooker.isLandscape(orientation)) return true;
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.isLandscapeTask: manifest lookup failed: " + t);
        }

        if (OneStepStateBridge.isTaskLandscape(context, taskId)) return true;
        if (taskBounds != null && taskBounds.width() > taskBounds.height()) return true;

        try {
            Class<?> atmClz = Class.forName("android.app.ActivityTaskManager");
            Method getInstance = atmClz.getDeclaredMethod("getInstance");
            getInstance.setAccessible(true);
            Object atmInstance = getInstance.invoke(null);
            Method getTasks = atmClz.getMethod("getTasks", int.class);
            List<?> tasks = (List<?>) getTasks.invoke(atmInstance, 100);
            if (tasks != null) {
                for (Object taskInfo : tasks) {
                    Integer id = readIntField(taskInfo, "taskId");
                    if (id == null || id != taskId) continue;
                    Object configuration = readObjectField(taskInfo, "configuration");
                    Integer orientation = readIntField(configuration, "orientation");
                    if (orientation != null
                            && orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE) {
                        return true;
                    }
                    break;
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.isLandscapeTask: configuration lookup failed: " + t);
        }

        return false;
    }

    public static boolean isLandscapeTask(Context context, int taskId) {
        return isLandscapeTask(context, taskId, getTaskBounds(taskId));
    }

    /**
     * 用户手动切换主任务的旋转状态（强制90度旋转 ↔ 恢复正常竖屏）。
     *
     * @return true 切换成功
     */
    public static boolean toggleManualRotation(Context context, int taskId,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        if (taskId <= 0 || context == null) return false;

        boolean manualRotationActive = sManualRotationTaskId != taskId;
        sManualRotationTaskId = manualRotationActive ? taskId : -1;
        LSPLogger.i("TaskResizer.toggleManualRotation: taskId=" + taskId
                + " manualRotationActive=" + manualRotationActive);

        // 应用对应的变换
        if (manualRotationActive) {
            // 强制旋转：使用rotate90变换
            Rect source = getLandscapeSourceBounds(context, taskId, screenWidth, screenHeight);
            int left = sidebarOnLeft ? sidebarWidth : 0;
            int right = sidebarOnLeft ? screenWidth : screenWidth - sidebarWidth;
            Rect destination = new Rect(left, topHeight, right, screenHeight);
            boolean success = TaskSurfaceTransformer.rotate90(
                    taskId, source, destination, true);
            if (success) {
                sLandscapeTransformedTaskId = taskId;
                sLastLandscapeSource = source;
                armTransformReapply();
            } else {
                sManualRotationTaskId = -1;
            }
            return success;
        } else {
            // 恢复竖屏：使用shrink变换
            sLandscapeTransformedTaskId = -1;
            sLastLandscapeSource = null;
            boolean success = TaskSurfaceTransformer.shrink(taskId, sidebarWidth,
                    screenWidth, topHeight, screenHeight, sidebarOnLeft, true);
            if (success) armTransformReapply();
            return success;
        }
    }

    private static void armTransformReapply() {
        long now = SystemClock.uptimeMillis();
        sLastTransformReapply = now;
        sTransformReapplyUntil = Math.max(now + TRANSFORM_REAPPLY_MS,
                sExternalLaunchWatchUntil);
        sOrientationProbeUntil = now + 8000L;
    }

    public static Integer findTaskIdForPackage(Context context, String packageName) {
        return findTaskIdForPackage(context, packageName, -1);
    }

    public static Integer findTaskIdForPackage(Context context, String packageName,
            int displayId) {
        if (packageName == null) return null;
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return null;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(100);
            if (tasks == null) return null;
            for (ActivityManager.RunningTaskInfo task : tasks) {
                ComponentName top = task.topActivity;
                ComponentName base = task.baseActivity;
                if ((top != null && packageName.equals(top.getPackageName()))
                        || (base != null && packageName.equals(base.getPackageName()))) {
                    if (displayId >= 0 && readTaskDisplayId(task) != displayId) continue;
                    return task.taskId;
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.findTaskIdForPackage: " + packageName
                    + " failed: " + t);
        }
        return null;
    }

    private static int readTaskDisplayId(Object task) {
        try {
            java.lang.reflect.Field field = task.getClass().getField("displayId");
            return field.getInt(task);
        } catch (Throwable ignored) {
            try {
                java.lang.reflect.Field field = task.getClass().getDeclaredField("displayId");
                field.setAccessible(true);
                return field.getInt(task);
            } catch (Throwable ignoredAgain) {
                return 0;
            }
        }
    }

    public static int findTaskDisplayId(Context context, int taskId) {
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return -1;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(100);
            if (tasks == null) return -1;
            for (ActivityManager.RunningTaskInfo task : tasks) {
                if (task.taskId == taskId) return readTaskDisplayId(task);
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.findTaskDisplayId: taskId=" + taskId
                    + " failed: " + t);
        }
        return -1;
    }

    private static int findRootTaskId(Context context, int taskId) {
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return taskId;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(100);
            if (tasks == null) return taskId;
            for (ActivityManager.RunningTaskInfo task : tasks) {
                if (task.taskId != taskId) continue;
                Integer rootTaskId = readIntField(task, "rootTaskId");
                if (rootTaskId != null && rootTaskId > 0) return rootTaskId;
                try {
                    Method method = task.getClass().getMethod("getRootTaskId");
                    Object result = method.invoke(task);
                    if (result instanceof Integer && (Integer) result > 0) {
                        return (Integer) result;
                    }
                } catch (Throwable ignored) {
                }
                return taskId;
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.findRootTaskId: taskId=" + taskId
                    + " failed: " + t);
        }
        return taskId;
    }

    public static ComponentName findTaskComponent(Context context, int taskId) {
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return null;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(100);
            if (tasks == null) return null;
            for (ActivityManager.RunningTaskInfo task : tasks) {
                if (task.taskId == taskId) {
                    return task.topActivity != null ? task.topActivity : task.baseActivity;
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.findTaskComponent: taskId=" + taskId
                    + " failed: " + t);
        }
        return null;
    }

    private static Integer getTopVisibleTaskIdOnDisplay(Context context, int displayId) {
        try {
            Class<?> atmClz = Class.forName("android.app.ActivityTaskManager");
            Method getInstance = atmClz.getDeclaredMethod("getInstance");
            getInstance.setAccessible(true);
            Object atmInstance = getInstance.invoke(null);
            if (atmInstance != null) {
                Method getTasks = atmClz.getMethod("getTasks", int.class);
                List<?> tasks = (List<?>) getTasks.invoke(atmInstance, 100);
                if (tasks != null) {
                    for (Object task : tasks) {
                        Integer id = readIntField(task, "taskId");
                        if (id == null || id <= 0 || readTaskDisplayId(task) != displayId) {
                            continue;
                        }
                        if (!Boolean.TRUE.equals(readBoolField(task, "isVisible"))) continue;
                        String pkg = readTopActivityPkg(task);
                        if (pkg != null && pkg.toLowerCase().contains("systemui")) continue;
                        return id;
                    }
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getTopVisibleTaskIdOnDisplay: ATM failed: " + t);
        }

        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return null;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(100);
            if (tasks == null) return null;
            for (ActivityManager.RunningTaskInfo task : tasks) {
                if (readTaskDisplayId(task) == displayId) return task.taskId;
            }
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getTopVisibleTaskIdOnDisplay: fallback failed: " + t);
        }
        return null;
    }

    // ======================================================================
    // IActivityTaskManager / IWindowManager 反射调用
    // ======================================================================

    /**
     * 拿 IActivityTaskManager 接口实例(通过 ActivityTaskManager.getService())。
     */
    private static Object getIActivityTaskManager() {
        try {
            Class<?> atmClz = Class.forName("android.app.ActivityTaskManager");
            Method getService = atmClz.getDeclaredMethod("getService");
            getService.setAccessible(true);
            return getService.invoke(null);
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getIActivityTaskManager: failed: " + t);
            return null;
        }
    }

    /**
     * 拿 IWindowManager 接口实例(通过 WindowManagerGlobal.getWindowManagerService())。
     */
    private static Object getIWindowManager() {
        try {
            Class<?> wmgClz = Class.forName("android.view.WindowManagerGlobal");
            Method m = wmgClz.getDeclaredMethod("getWindowManagerService");
            m.setAccessible(true);
            return m.invoke(null);
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getIWindowManager: failed: " + t);
            return null;
        }
    }

    /**
     * 拿 IActivityTaskManager 接口类(用于反射方法)。
     * iatm 实例的 getClass() 返回 Stub$Proxy,无法用 getDeclaredMethod,
     * 必须用接口类。
     */
    private static Class<?> getIActivityTaskManagerInterface() {
        try {
            return Class.forName("android.app.IActivityTaskManager");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getIATMInterface: failed: " + t);
            return null;
        }
    }

    private static Class<?> getIWindowManagerInterface() {
        try {
            return Class.forName("android.view.IWindowManager");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getIWMInterface: failed: " + t);
            return null;
        }
    }

    /**
     * IActivityTaskManager.resizeTask(int taskId, Rect bounds, int resizeMode)
     */
    private static boolean resizeTask(int taskId, Rect bounds, int resizeMode) {
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) return false;
            Method m = iface.getDeclaredMethod("resizeTask", int.class, Rect.class, int.class);
            m.setAccessible(true);
            m.invoke(iatm, taskId, bounds, resizeMode);
            LSPLogger.i("TaskResizer.resizeTask: ok taskId=" + taskId
                    + " bounds=" + bounds + " mode=" + resizeMode);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.resizeTask: failed: " + t);
            return false;
        }
    }

    /**
     * IActivityTaskManager.setTaskResizeable(int taskId, int resizeMode)
     */
    private static boolean setTaskResizeable(int taskId, int resizeMode) {
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) return false;
            Method m = iface.getDeclaredMethod("setTaskResizeable", int.class, int.class);
            m.setAccessible(true);
            m.invoke(iatm, taskId, resizeMode);
            LSPLogger.i("TaskResizer.setTaskResizeable: ok taskId=" + taskId
                    + " mode=" + resizeMode);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.setTaskResizeable: failed: " + t);
            return false;
        }
    }

    /**
     * 通过 MIUI 自有的 IMiuiFreeformModeControl 接口把全屏 app 切到 freeform。
     *
     * 路径:
     *   1. IActivityTaskManager.getMiuiFreeFormManagerService() 拿 IBinder
     *   2. miui.app.IMiuiFreeformModeControl.Stub.asInterface(binder) 拿 proxy
     *   3. proxy.freeformFullscreenTask(taskId)
     *
     * @param taskId 目标 task
     * @return true 调用成功
     */
    private static boolean tryMiuiEnterFreeform(int taskId) {
        LSPLogger.i("TaskResizer.tryMiuiEnterFreeform: taskId=" + taskId);
        Object control = getMiuiFreeformModeControl();
        if (control == null) {
            LSPLogger.w("TaskResizer.tryMiuiEnterFreeform: no IMiuiFreeformModeControl instance");
            return false;
        }
        try {
            Class<?> ifc = Class.forName("miui.app.IMiuiFreeformModeControl");
            // HyperOS exposes several similarly named methods. Only keep the
            // first request whose observable WMS state becomes FREEFORM.
            String[] entryMethods = {
                    "fromFullToFreeform",
                    "freeformFullscreenTask"
            };
            for (String methodName : entryMethods) {
                try {
                    Method m = ifc.getMethod(methodName, int.class);
                    m.setAccessible(true);
                    m.invoke(control, taskId);
                    LSPLogger.i("TaskResizer.tryMiuiEnterFreeform: requested "
                            + methodName + " taskId=" + taskId);
                    if (waitForFreeformMode(taskId)) {
                        LSPLogger.i("TaskResizer.tryMiuiEnterFreeform: accepted by WMS via "
                                + methodName + " taskId=" + taskId);
                        return true;
                    }
                    LSPLogger.w("TaskResizer.tryMiuiEnterFreeform: " + methodName
                            + " was a no-op, mode=" + getTaskWindowingMode(taskId));
                } catch (NoSuchMethodException ignored) {
                    LSPLogger.d("TaskResizer.tryMiuiEnterFreeform: method unavailable "
                            + methodName);
                }
            }
            return false;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.tryMiuiEnterFreeform: failed: " + t);
            return false;
        }
    }

    /**
     * 通过 MIUI IMiuiFreeformModeControl.exitFreeformTask(taskId, animate) 退出 freeform。
     */
    private static boolean tryMiuiExitFreeformTask(int taskId) {
        LSPLogger.i("TaskResizer.tryMiuiExitFreeformTask: taskId=" + taskId);
        Object control = getMiuiFreeformModeControl();
        if (control == null) {
            LSPLogger.w("TaskResizer.tryMiuiExitFreeformTask: no IMiuiFreeformModeControl instance");
            return false;
        }
        try {
            Class<?> ifc = Class.forName("miui.app.IMiuiFreeformModeControl");
            Method m = ifc.getMethod("exitFreeformTask", int.class, boolean.class);
            m.setAccessible(true);
            m.invoke(control, taskId, false);
            LSPLogger.i("TaskResizer.tryMiuiExitFreeformTask: ok taskId=" + taskId);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.tryMiuiExitFreeformTask: failed: " + t);
            // 兜底: freeformFullscreenTask 把 freeform task 恢复到全屏
            try {
                Class<?> ifc = Class.forName("miui.app.IMiuiFreeformModeControl");
                Method m = ifc.getMethod("freeformFullscreenTask", int.class);
                m.setAccessible(true);
                m.invoke(control, taskId);
                LSPLogger.i("TaskResizer.tryMiuiExitFreeformTask: freeformFullscreenTask ok taskId=" + taskId);
                return true;
            } catch (Throwable t2) {
                LSPLogger.e("TaskResizer.tryMiuiExitFreeformTask: freeformFullscreenTask failed: " + t2);
                return false;
            }
        }
    }

    /**
     * 拿 IMiuiFreeformModeControl 的 server 端 proxy。
     *
     * 路径:
     *   IActivityTaskManager.getMiuiFreeFormManagerService() 返回 IBinder
     *   miui.app.IMiuiFreeformModeControl.Stub.asInterface(binder) 返回 proxy
     */
    private static Object sMiuiFreeformControl = null;
    private static Object getMiuiFreeformModeControl() {
        if (sMiuiFreeformControl != null) return sMiuiFreeformControl;
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iatmIfc = getIActivityTaskManagerInterface();
            if (iatm == null || iatmIfc == null) {
                LSPLogger.w("TaskResizer.getMiuiFreeformModeControl: IATM null");
                return null;
            }
            Method getMfs = iatmIfc.getMethod("getMiuiFreeFormManagerService");
            getMfs.setAccessible(true);
            Object binder = getMfs.invoke(iatm);
            LSPLogger.i("TaskResizer.getMiuiFreeformModeControl: binder=" + binder);
            if (binder == null) return null;

            // miui.app.IMiuiFreeformModeControl.Stub.asInterface(IBinder)
            Class<?> ifc = Class.forName("miui.app.IMiuiFreeformModeControl");
            Class<?> stubClz = null;
            // 找 Stub 内部类
            for (Class<?> inner : ifc.getDeclaredClasses()) {
                if ("Stub".equals(inner.getSimpleName())) {
                    stubClz = inner;
                    break;
                }
            }
            if (stubClz == null) {
                LSPLogger.w("TaskResizer.getMiuiFreeformModeControl: Stub class not found");
                return null;
            }
            Method asInterface = stubClz.getMethod("asInterface",
                    Class.forName("android.os.IBinder"));
            asInterface.setAccessible(true);
            Object proxy = asInterface.invoke(null, binder);
            LSPLogger.i("TaskResizer.getMiuiFreeformModeControl: proxy=" + proxy);
            sMiuiFreeformControl = proxy;
            return proxy;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.getMiuiFreeformModeControl: failed: " + t);
            return null;
        }
    }

    /**
     * 切换 windowing mode。
     *
     * HyperOS / Android 16 上 IATM/ATM 都移除了 setTaskWindowingMode!
     * 只能用 IWindowManager.setWindowingMode(int displayId, int mode) 切换整个 display 的 windowing mode。
     * 这会让 display 上所有 task 都进入 freeform 模式,然后 resizeTask 才能生效。
     *
     * 进入 OneStep 时:display 切到 freeform,resizeTask 缩小当前 task
     * 退出 OneStep 时:resizeTask 恢复 bounds,display 切回 fullscreen
     *
     * @param displayId 通常为 0(默认 display)
     * @param windowingMode 1=fullscreen, 5=freeform
     */
    private static boolean setDisplayWindowingMode(int displayId, int windowingMode) {
        LSPLogger.i("TaskResizer.setDisplayWindowingMode: displayId=" + displayId
                + " mode=" + windowingMode);
        try {
            Object iwm = getIWindowManager();
            Class<?> iface = getIWindowManagerInterface();
            if (iwm == null || iface == null) {
                LSPLogger.e("TaskResizer.setDisplayWindowingMode: IWM null");
                return false;
            }
            Method m = iface.getDeclaredMethod("setWindowingMode",
                    int.class, int.class);
            m.setAccessible(true);
            m.invoke(iwm, displayId, windowingMode);
            LSPLogger.i("TaskResizer.setDisplayWindowingMode: ok displayId="
                    + displayId + " mode=" + windowingMode);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.setDisplayWindowingMode: failed: " + t);
            return false;
        }
    }

    /**
     * 切换 task 的 windowing mode (HyperOS 上已不可用,保留接口但内部调用 display 模式切换)。
     * 调用者应改为 setDisplayWindowingMode。
     */
    private static boolean setTaskWindowingMode(int taskId, int windowingMode,
                                                 boolean freezeTaskBounds) {
        LSPLogger.w("TaskResizer.setTaskWindowingMode: HyperOS removed this API, "
                + "falling back to setDisplayWindowingMode(0, " + windowingMode + ")");
        return setDisplayWindowingMode(0, windowingMode);
    }

    /**
     * dump ActivityTaskManager 类上所有 windowing/task 相关的静态/实例方法。
     */
    private static void dumpAtmWindowingMethods(Class<?> atmClz) {
        try {
            Method[] all = atmClz.getDeclaredMethods();
            int matched = 0;
            for (Method m : all) {
                String name = m.getName().toLowerCase();
                if (name.contains("windowing") || name.contains("windowmode")
                        || name.startsWith("settask") || name.contains("resizetask")
                        || name.contains("bounds")) {
                    matched++;
                }
            }
            LSPLogger.d("TaskResizer.dumpAtmWindowingMethods: ATM total="
                    + all.length + " matched=" + matched);
            for (Method m : all) {
                String name = m.getName().toLowerCase();
                if (name.contains("windowing") || name.contains("windowmode")
                        || name.startsWith("settask") || name.contains("resizetask")
                        || name.contains("bounds")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  ");
                    if (java.lang.reflect.Modifier.isStatic(m.getModifiers())) sb.append("static ");
                    sb.append(m.getName()).append("(");
                    Class<?>[] params = m.getParameterTypes();
                    for (int i = 0; i < params.length; i++) {
                        if (i > 0) sb.append(",");
                        sb.append(params[i].getSimpleName());
                    }
                    sb.append(") -> ").append(m.getReturnType().getSimpleName());
                    LSPLogger.d("TaskResizer.dumpAtmWindowingMethods: ATM" + sb);
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.dumpAtmWindowingMethods: threw: " + t);
        }
    }

    /**
     * dump 接口上所有 windowing/task/root 相关的方法名,辅助诊断。
     * 每个方法单独输出一条日志,避免 LSPLogger 多行截断。
     */
    private static void dumpWindowingMethods(String tag, Class<?> clz) {
        try {
            Method[] all;
            try {
                all = clz.getMethods();
            } catch (Throwable t) {
                LSPLogger.d("TaskResizer.dumpWindowingMethods: " + tag
                        + " getMethods() threw: " + t);
                return;
            }
            int matched = 0;
            // 第一遍: 计数
            for (Method m : all) {
                String name = m.getName().toLowerCase();
                if (name.contains("windowing") || name.contains("windowmode")
                        || name.startsWith("settask") || name.startsWith("settaskbounds")
                        || name.contains("roottask") || name.contains("taskinfo")
                        || name.contains("resizetask") || name.contains("bounds")) {
                    matched++;
                }
            }
            LSPLogger.d("TaskResizer.dumpWindowingMethods: " + tag
                    + " total=" + all.length + " matched=" + matched);
            // 第二遍: 每个方法单独输出
            for (Method m : all) {
                String name = m.getName().toLowerCase();
                if (name.contains("windowing") || name.contains("windowmode")
                        || name.startsWith("settask") || name.startsWith("settaskbounds")
                        || name.contains("roottask") || name.contains("taskinfo")
                        || name.contains("resizetask") || name.contains("bounds")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  ").append(m.getName()).append("(");
                    Class<?>[] params = m.getParameterTypes();
                    for (int i = 0; i < params.length; i++) {
                        if (i > 0) sb.append(",");
                        sb.append(params[i].getSimpleName());
                    }
                    sb.append(") -> ").append(m.getReturnType().getSimpleName());
                    LSPLogger.d("TaskResizer.dumpWindowingMethods: " + tag + sb);
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.dumpWindowingMethods: " + tag + " threw: " + t);
        }
    }

    /**
     * IActivityTaskManager.getTaskBounds(int taskId) 返回 Rect
     */
    private static Rect getTaskBounds(int taskId) {
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) return null;
            Method m = iface.getDeclaredMethod("getTaskBounds", int.class);
            m.setAccessible(true);
            Object result = m.invoke(iatm, taskId);
            if (result instanceof Rect) {
                return (Rect) result;
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getTaskBounds: failed: " + t);
        }
        return null;
    }

    /**
     * 通过 RunningTaskInfo 拿 task 的 windowingMode 字段值。
     */
    private static int getTaskWindowingMode(int taskId) {
        try {
            Class<?> atmClz = Class.forName("android.app.ActivityTaskManager");
            Method getInstance = atmClz.getDeclaredMethod("getInstance");
            getInstance.setAccessible(true);
            Object atmInstance = getInstance.invoke(null);
            if (atmInstance == null) return 0;
            Method getTasks = atmClz.getMethod("getTasks", int.class);
            List<?> tasks = (List<?>) getTasks.invoke(atmInstance, 20);
            if (tasks == null) return 0;
            for (Object taskInfo : tasks) {
                Integer id = readIntField(taskInfo, "taskId");
                if (id == null || id != taskId) continue;
                // 拿 configuration.windowConfiguration.windowingMode
                Object config = readObjectField(taskInfo, "configuration");
                if (config != null) {
                    Object windowConfig = readObjectField(config, "windowConfiguration");
                    if (windowConfig != null) {
                        Integer mode = readIntField(windowConfig, "windowingMode");
                        if (mode != null) return mode;
                    }
                }
                // 兜底:直接读 windowingMode 字段
                Integer mode = readIntField(taskInfo, "windowingMode");
                if (mode != null) return mode;
                break;
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getTaskWindowingMode: failed: " + t);
        }
        return 0;
    }

    /**
     * IActivityTaskManager.getTaskResizeableForFreeform(int taskId) 返回 int
     */
    private static int getTaskResizeable(int taskId) {
        try {
            Object iatm = getIActivityTaskManager();
            Class<?> iface = getIActivityTaskManagerInterface();
            if (iatm == null || iface == null) return 0;
            Method m = iface.getDeclaredMethod("getTaskResizeableForFreeform", int.class);
            m.setAccessible(true);
            Object result = m.invoke(iatm, taskId);
            if (result instanceof Integer) {
                return (Integer) result;
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getTaskResizeable: failed: " + t);
        }
        return 0;
    }

    // ======================================================================
    // 反射辅助
    // ======================================================================

    /**
     * 读取对象上的 int 字段值(沿继承链查找)。
     */
    private static Integer readIntField(Object obj, String fieldName) {
        if (obj == null) return null;
        Class<?> clz = obj.getClass();
        while (clz != null && clz != Object.class) {
            try {
                java.lang.reflect.Field f = clz.getDeclaredField(fieldName);
                f.setAccessible(true);
                return f.getInt(obj);
            } catch (NoSuchFieldException ignore) {
            } catch (Throwable t) {
                return null;
            }
            clz = clz.getSuperclass();
        }
        return null;
    }

    /**
     * 读取对象上的 Object 字段(沿继承链查找)。
     */
    private static Object readObjectField(Object obj, String fieldName) {
        if (obj == null) return null;
        Class<?> clz = obj.getClass();
        while (clz != null && clz != Object.class) {
            try {
                java.lang.reflect.Field f = clz.getDeclaredField(fieldName);
                f.setAccessible(true);
                return f.get(obj);
            } catch (NoSuchFieldException ignore) {
            } catch (Throwable t) {
                return null;
            }
            clz = clz.getSuperclass();
        }
        return null;
    }

    /**
     * 获取当前前台 task id。
     *
     * HyperOS 上 ActivityTaskManager.getInstance().getTasks(1) 可能返回当前进程
     * 最近活跃的 task(例如 ModuleConfigActivity),而不是 display 上真正的前台 task。
     * 因此遍历所有 tasks,过滤出 visible=true 且非 home/system 的第一个。
     */
    private static Integer getForegroundTaskId(Context context) {
        // 优先反射 ActivityTaskManager.getInstance().getTasks(int),遍历找 visible=true
        try {
            Class<?> atmClz = Class.forName("android.app.ActivityTaskManager");
            Method getInstance = atmClz.getDeclaredMethod("getInstance");
            getInstance.setAccessible(true);
            Object atmInstance = getInstance.invoke(null);
            if (atmInstance != null) {
                Method getTasks = atmClz.getMethod("getTasks", int.class);
                List<?> tasks = (List<?>) getTasks.invoke(atmInstance, 20);
                if (tasks != null && !tasks.isEmpty()) {
                    // 1. 优先返回 visible=true 且非 home/launcher/systemui 的 task
                    Integer firstVisible = null;
                    Integer firstNonHome = null;
                    StringBuilder dump = new StringBuilder();
                    for (Object taskInfo : tasks) {
                        Integer id = readIntField(taskInfo, "taskId");
                        Boolean visible = readBoolField(taskInfo, "isVisible");
                        Boolean isRun = readBoolField(taskInfo, "isRunning");
                        String topAct = readTopActivityPkg(taskInfo);
                        int displayId = readTaskDisplayId(taskInfo);
                        dump.append("  taskId=").append(id)
                                .append(" visible=").append(visible)
                                .append(" display=").append(displayId)
                                .append(" top=").append(topAct).append("\n");
                        if (id == null || id <= 0) continue;
                        if (displayId != 0) continue;
                        if (topAct != null) {
                            String pkgLower = topAct.toLowerCase();
                            if (pkgLower.contains("launcher") || pkgLower.contains("systemui")
                                    || pkgLower.contains("miui.home")
                                    || pkgLower.contains("com.android.settings")
                                    || pkgLower.contains("smartisanos.sidebar")) {
                                continue; // 跳过 home/systemui/sidebar 自己
                            }
                        }
                        if (firstNonHome == null) firstNonHome = id;
                        if (Boolean.TRUE.equals(visible) && firstVisible == null) {
                            firstVisible = id;
                        }
                    }
                    LSPLogger.d("TaskResizer.getForegroundTaskId: tasks=\n" + dump);
                    // 只能操作真正可见的 task。桌面、SystemUI 或模块配置页在前台时，
                    // firstNonHome 往往指向最近使用的后台 app；拿它兜底会静默缩错窗口。
                    Integer result = firstVisible;
                    if (result != null) {
                        LSPLogger.d("TaskResizer.getForegroundTaskId: id=" + result
                                + " (firstVisible=" + firstVisible + " firstNonHome=" + firstNonHome + ")");
                        return result;
                    }
                    LSPLogger.w("TaskResizer.getForegroundTaskId: no eligible visible task; "
                            + "refusing background fallback=" + firstNonHome);
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getForegroundTaskId: ATM.getTasks() failed: " + t);
        }
        // 兜底:ActivityManager.getRunningTasks(1)
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return null;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(1);
            if (tasks == null || tasks.isEmpty()) return null;
            int id = tasks.get(0).taskId;
            LSPLogger.d("TaskResizer.getForegroundTaskId: via AM.getRunningTasks(), id=" + id);
            return id;
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getForegroundTaskId: failed: " + t);
            return null;
        }
    }

    /** 读取 RunningTaskInfo.topActivity 的包名 */
    private static String readTopActivityPkg(Object taskInfo) {
        if (taskInfo == null) return null;
        try {
            Object topAct = readObjectField(taskInfo, "topActivity");
            if (topAct instanceof android.content.ComponentName) {
                return ((android.content.ComponentName) topAct).getPackageName();
            }
        } catch (Throwable ignore) {
        }
        return null;
    }

    /** 读取对象上的 boolean 字段值(沿继承链查找) */
    private static Boolean readBoolField(Object obj, String fieldName) {
        if (obj == null) return null;
        Class<?> clz = obj.getClass();
        while (clz != null && clz != Object.class) {
            try {
                java.lang.reflect.Field f = clz.getDeclaredField(fieldName);
                f.setAccessible(true);
                return f.getBoolean(obj);
            } catch (NoSuchFieldException ignore) {
            } catch (Throwable t) {
                return null;
            }
            clz = clz.getSuperclass();
        }
        return null;
    }

    /**
     * 判断 taskId 是否是 home / launcher / system task。
     */
    private static boolean isHomeOrSystemTask(Context context, int taskId) {
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return false;
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(10);
            if (tasks == null) return false;
            for (ActivityManager.RunningTaskInfo t : tasks) {
                if (t.taskId != taskId) continue;
                if (t.topActivity == null) continue;
                String pkg = t.topActivity.getPackageName();
                if (pkg == null) continue;
                if (pkg.contains("launcher") || pkg.contains("systemui")
                        || pkg.contains("miui.home") || pkg.contains("com.android.settings")) {
                    return true;
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.isHomeOrSystemTask: failed: " + t);
        }
        return false;
    }

    private static boolean isHomeTask(Context context, int taskId) {
        ComponentName component = findTaskComponent(context, taskId);
        if (component == null || component.getPackageName() == null) return false;
        String pkg = component.getPackageName().toLowerCase();
        return pkg.contains("launcher") || pkg.contains("miui.home");
    }
}
