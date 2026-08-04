package com.hyper.onestep.lsp;
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
// 在全屏与自由窗口模式间切换并校验任务尺寸
public final class TaskResizer {
    private static final String TAG = "OneStepLSP";
    /** Windowing mode constant for verifying/logging the fullscreen default. */
    /** Records the original task bounds for diagnostics only; OneStep never resizes the task. */
    private static Integer sResizedTaskId = null;
    private static Rect sOriginalBounds = null;
    private static boolean sUsingSurfaceTransform = false;
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
    /** The task explicitly rotated by the user for the current OneStep session. */
    private static int sManualRotationTaskId = -1;
    private TaskResizer() {}
    // 缩小前台任务为侧边栏让出空间，优先使用freeform其次Surface变换
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
        int topHeight = Math.round(screenHeight * (sidebarWidth / (float) screenWidth));
        sOriginalBounds = getTaskBounds(taskId);
        LSPLogger.i("TaskResizer.shrinkForegroundTask: original bounds=" + sOriginalBounds
                + " windowingMode=" + getTaskWindowingMode(taskId));
        if (!placeMainTask(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            // A failed leash transform must leave the real task untouched and fullscreen. Never
            // attempt MIUI, TaskOrganizer, or display-wide freeform as a fallback.
            LSPLogger.e("TaskResizer.shrinkForegroundTask: surface presentation failed; "
                    + "leaving task fullscreen taskId=" + taskId);
            return false;
        }
        sResizedTaskId = taskId;
        armTransformReapply();
        LSPLogger.i("TaskResizer.shrinkForegroundTask: surface presentation applied, taskId="
                + taskId);
        return true;
    }
    private static boolean placeMainTask(Context context, int taskId, int sidebarWidth,
            int screenWidth, int topHeight, int screenHeight, boolean sidebarOnLeft) {
        // Main tasks always remain fullscreen on display 0. OneStep changes only the task leash,
        // never the task or display windowing mode.
        if (!shrinkTaskSurface(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            return false;
        }
        sUsingSurfaceTransform = true;
        return true;
    }
    /** Restores only the SurfaceControl presentation; task windowing mode is never changed. */
    private static void restoreTaskPresentation(int taskId) {
        if (taskId <= 0) return;
        if (sUsingSurfaceTransform) {
            TaskSurfaceTransformer.restore(taskId);
        }
        if (sResizedTaskId != null && sResizedTaskId == taskId) {
            clearPresentationState();
        }
    }
    private static void clearPresentationState() {
        sResizedTaskId = null;
        sOriginalBounds = null;
        sUsingSurfaceTransform = false;
        sTransformReapplyUntil = 0L;
        sOrientationProbeUntil = 0L;
        sLastTransformReapply = 0L;
        sLandscapeTransformedTaskId = -1;
        sLastLandscapeSource = null;
        clearPendingMainTaskCandidate();
    }
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
        boolean restored = !sUsingSurfaceTransform || TaskSurfaceTransformer.restore(taskId);
        clearPresentationState();
        LSPLogger.i("TaskResizer.restoreForegroundTask: surface path done, ok=" + restored);
        return restored;
    }
    /** Returns the task currently occupying the main OneStep area. */
    public static Integer getCurrentTaskId() {
        return sResizedTaskId;
    }
    // 切换主任务到指定任务，恢复旧任务并应用新任务的OneStep变换
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
        if (!placeMainTask(context, taskId, sidebarWidth, screenWidth,
                topHeight, screenHeight, sidebarOnLeft)) {
            LSPLogger.w("TaskResizer.switchToTask: transform failed for taskId=" + taskId);
            return false;
        }
        sResizedTaskId = taskId;
        sOriginalBounds = originalBounds;
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
        armTransformReapply();
        LSPLogger.i("TaskResizer.syncMainTaskTransform: previous=" + previousTaskId
                + " actual=" + actualTaskId);
        return true;
    }
    // 标记外部Activity启动，触发主任务变换的强制重应用窗口
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
    /** Restores Home after exit when OneStep had no app in its main area. */
    public static boolean showHomeOnDefaultDisplay(Context context) {
        if (context == null) return false;
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
            context.startActivity(home, options.toBundle());
            LSPLogger.i("TaskResizer.showHomeOnDefaultDisplay");
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskResizer.showHomeOnDefaultDisplay failed", t);
            return false;
        }
    }
    /** Parks the transformed main app on a live display and reveals the launcher. */
    public static boolean parkMainTaskAndShowHome(Context context, int displayId,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        Integer taskId = sResizedTaskId;
        if (taskId == null || displayId < 0) return false;
        restoreTaskPresentation(taskId);
        sResizedTaskId = null;
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
        LSPLogger.i("TaskResizer.moveRootTaskToDisplay: neutralize taskId=" + taskId
                + " before displayId=" + displayId);
        TaskSurfaceTransformer.neutralize(taskId);
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
        boolean settled = !observed;
        LSPLogger.w("TaskResizer.waitForTaskDisplay: taskId=" + taskId
                + " expected=" + displayId + " actual=" + lastDisplay
                + " observed=" + observed + " settled=" + settled);
        return settled;
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
    // 主任务与槽位任务互换显示，无槽位索引与方向信息
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
        LSPLogger.i("TaskResizer.swapMainTaskWithDisplay: restore old main task="
                + currentTaskId + " before display move state="
                + getPresentationDebugState());
        restoreTaskPresentation(currentTaskId);
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
        Rect source = getLandscapeSourceBounds(context, taskId, screenWidth, screenHeight);
        int left = sidebarOnLeft ? sidebarWidth : 0;
        int right = sidebarOnLeft ? screenWidth : screenWidth - sidebarWidth;
        Rect destination = new Rect(left, topHeight, right, screenHeight);
        if (TaskSurfaceTransformer.rotate90(taskId, source, destination, force)) {
            sLandscapeTransformedTaskId = taskId;
            sLastLandscapeSource = source;
            return true;
        }
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
        if (taskId > 0 && sLandscapeTransformedTaskId == taskId) return true;
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
    // 切换主任务的手动旋转状态，在横屏旋转与竖屏缩放间切换
    public static boolean toggleManualRotation(Context context, int taskId,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        if (taskId <= 0 || context == null) return false;
        boolean manualRotationActive = sManualRotationTaskId != taskId;
        sManualRotationTaskId = manualRotationActive ? taskId : -1;
        LSPLogger.i("TaskResizer.toggleManualRotation: taskId=" + taskId
                + " manualRotationActive=" + manualRotationActive);
        if (manualRotationActive) {
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
    private static Class<?> getIActivityTaskManagerInterface() {
        try {
            return Class.forName("android.app.IActivityTaskManager");
        } catch (Throwable t) {
            LSPLogger.w("TaskResizer.getIATMInterface: failed: " + t);
            return null;
        }
    }
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
                Object config = readObjectField(taskInfo, "configuration");
                if (config != null) {
                    Object windowConfig = readObjectField(config, "windowConfiguration");
                    if (windowConfig != null) {
                        Integer mode = readIntField(windowConfig, "windowingMode");
                        if (mode != null) return mode;
                    }
                }
                Integer mode = readIntField(taskInfo, "windowingMode");
                if (mode != null) return mode;
                break;
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getTaskWindowingMode: failed: " + t);
        }
        return 0;
    }
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
    /** Returns the current default-display app task, excluding Launcher/SystemUI. */
    public static Integer getForegroundTaskId(Context context) {
        try {
            Class<?> atmClz = Class.forName("android.app.ActivityTaskManager");
            Method getInstance = atmClz.getDeclaredMethod("getInstance");
            getInstance.setAccessible(true);
            Object atmInstance = getInstance.invoke(null);
            if (atmInstance != null) {
                Method getTasks = atmClz.getMethod("getTasks", int.class);
                List<?> tasks = (List<?>) getTasks.invoke(atmInstance, 20);
                if (tasks != null && !tasks.isEmpty()) {
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
                                    || pkgLower.contains("smartisanos.sidebar")) {
                                continue;
                            }
                        }
                        if (firstNonHome == null) firstNonHome = id;
                        if (Boolean.TRUE.equals(visible) && firstVisible == null) {
                            firstVisible = id;
                        }
                    }
                    LSPLogger.d("TaskResizer.getForegroundTaskId: tasks=\n" + dump);
                    Integer result = firstVisible != null ? firstVisible : firstNonHome;
                    if (result != null) {
                        LSPLogger.d("TaskResizer.getForegroundTaskId: id=" + result
                                + " (firstVisible=" + firstVisible + " firstNonHome="
                                + firstNonHome + ")");
                        return result;
                    }
                    LSPLogger.w("TaskResizer.getForegroundTaskId: no eligible task");
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("TaskResizer.getForegroundTaskId: ATM.getTasks() failed: " + t);
        }
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
                        || pkg.contains("miui.home")) {
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
