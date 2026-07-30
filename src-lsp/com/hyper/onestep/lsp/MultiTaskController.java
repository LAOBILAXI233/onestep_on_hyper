package com.hyper.onestep.lsp;
import android.app.ActivityOptions;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Display;
import com.hyper.onestep.SidebarController;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/** Coordinates three live tasks hosted on dedicated virtual displays. */
public final class MultiTaskController {
    public static final int SLOT_COUNT = 3;
    public static final String DRAG_MIME = "application/vnd.smartisanos.onestep-app";
    public interface Listener {
        void onSlotsChanged(Slot[] slots);
    }
    public static final class Slot {
        public final int taskId;
        public final int displayId;
        public final ComponentName component;
        public final boolean landscapeHint;
        public final long landscapeHintUntil;
        /** Uptime when this slot was created; bounds the late-landscape recheck window. */
        public final long createdAt;
        private Slot(int taskId, int displayId, ComponentName component,
                boolean landscapeHint, long landscapeHintUntil, long createdAt) {
            this.taskId = taskId;
            this.displayId = displayId;
            this.component = component;
            this.landscapeHint = landscapeHint;
            this.landscapeHintUntil = landscapeHintUntil;
            this.createdAt = createdAt;
        }
    }
    private static volatile MultiTaskController sInstance;
    private final Context mContext;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final Slot[] mSlots = new Slot[SLOT_COUNT];
    private final int[] mDisplayIds = new int[] { -1, -1, -1 };
    private final long[] mSlotMismatchSince = new long[SLOT_COUNT];
    private Listener mListener;
    private boolean mBusy;
    private int mBusyGeneration;
    private int mReconcileTick;
    private volatile boolean mDiagnosticsRunning;
    private int mRecentlyParkedTaskId = -1;
    private long mParkProtectUntil;
    private static final long TRANSITION_SETTLE_MS = 350L;
    private static final long PARK_SETTLE_MS = 600L;
    private static final long PARK_ACTIVATE_PROTECT_MS = 450L;
    private static final long SLOT_RECONCILE_GRACE_MS = 2400L;
    /** Last user intent while mBusy; drained when the settle gate opens. */
    private int mPendingSlotTap = -1;
    private final Runnable mReconcileRunnable = new Runnable() {
        @Override
        public void run() {
            if (mListener == null) return;
            if (!mBusy) {
                SidebarController controller = SidebarController.peekInstance();
                if (controller != null) controller.syncMainTaskTransform();
                if (++mReconcileTick >= 8) {
                    mReconcileTick = 0;
                    adoptOrphanedSlotTasks();
                    reconcileSlots();
                    notifySlotsChanged();
                }
                if (++mDiagnosticsTick >= 42) {
                    mDiagnosticsTick = 0;
                    logRuntimeSnapshotAsync("periodic presentation="
                            + TaskResizer.getPresentationDebugState());
                }
            }
            mMainHandler.postDelayed(this, 120L);
        }
    };
    private int mDiagnosticsTick;
    public static MultiTaskController getInstance(Context context) {
        if (sInstance == null) {
            synchronized (MultiTaskController.class) {
                if (sInstance == null) sInstance = new MultiTaskController(context);
            }
        }
        return sInstance;
    }
    private MultiTaskController(Context context) {
        mContext = context;
    }
    public void setListener(Listener listener) {
        mMainHandler.removeCallbacks(mReconcileRunnable);
        mListener = listener;
        if (listener != null) {
            mReconcileTick = 0;
            reconcileSlots();
            mMainHandler.postDelayed(mReconcileRunnable, 120L);
        }
        notifySlotsChanged();
    }
    // 注册槽位与虚拟显示的映射关系，并触发槽位对账
    public void registerSlotDisplay(int slotIndex, int displayId) {
        if (!isValidSlot(slotIndex) || displayId < 0) return;
        mDisplayIds[slotIndex] = displayId;
        LSPLogger.i("MultiTaskController.registerSlotDisplay: slot=" + slotIndex
                + " displayId=" + displayId);
        if (!mBusy && reconcileSlots()) notifySlotsChanged();
    }
    /** Moves OneStep display tasks back to the default display, preserving slot records. */
    public List<Integer> moveSlotTasksToDefaultDisplay() {
        Context context = systemContext();
        Set<Integer> candidates = new HashSet<>();
        for (Slot slot : mSlots) {
            if (slot != null && slot.taskId > 0) candidates.add(slot.taskId);
        }
        collectTasksOnOwnedDisplays(context, candidates);
        List<Integer> moved = new ArrayList<>();
        for (Integer taskId : candidates) {
            int liveDisplayId = TaskResizer.findTaskDisplayId(context, taskId);
            if (liveDisplayId == Display.DEFAULT_DISPLAY) {
                moved.add(taskId);
                continue;
            }
            if (!isOwnedDisplay(liveDisplayId)) {
                LSPLogger.w("MultiTaskController.exit: skip task=" + taskId
                        + " on foreign display=" + liveDisplayId);
                continue;
            }
            if (TaskResizer.moveRootTaskToDisplay(taskId, Display.DEFAULT_DISPLAY)) {
                moved.add(taskId);
                LSPLogger.i("MultiTaskController.exit: restored task=" + taskId
                        + " from display=" + liveDisplayId);
            } else {
                LSPLogger.w("MultiTaskController.exit: failed task=" + taskId
                        + " from display=" + liveDisplayId);
            }
        }
        if (!moved.isEmpty()) {
            mRecentlyParkedTaskId = -1;
            mParkProtectUntil = 0L;
            mPendingSlotTap = -1;
            notifySlotsChanged();
        }
        return moved;
    }
    /** Moves slot tasks from the default display back to their slot virtual displays. */
    public void restoreSlotsToDisplays() {
        Context context = systemContext();
        boolean anyMoved = false;
        for (int i = 0; i < mSlots.length; i++) {
            Slot slot = mSlots[i];
            if (slot == null || slot.taskId <= 0) continue;
            int targetDisplay = mDisplayIds[i];
            if (targetDisplay < 0) continue;
            int liveDisplayId = TaskResizer.findTaskDisplayId(context, slot.taskId);
            if (liveDisplayId == targetDisplay) continue;
            if (TaskResizer.moveRootTaskToDisplay(slot.taskId, targetDisplay)) {
                anyMoved = true;
                LSPLogger.i("MultiTaskController.restore: moved task=" + slot.taskId
                        + " to display=" + targetDisplay);
            } else {
                LSPLogger.w("MultiTaskController.restore: failed task=" + slot.taskId
                        + " to display=" + targetDisplay);
                mSlots[i] = null;
                mSlotMismatchSince[i] = 0L;
            }
        }
        if (anyMoved) {
            notifySlotsChanged();
        }
    }
    public static ClipData createAppDragData(ComponentName component) {
        ClipDescription description = new ClipDescription(
                "OneStep app", new String[] { DRAG_MIME });
        return new ClipData(description, new ClipData.Item(component.flattenToString()));
    }
    public static boolean isAppDrag(ClipDescription description) {
        return description != null && description.hasMimeType(DRAG_MIME);
    }
    public static ComponentName readDraggedComponent(ClipData data) {
        if (data == null || data.getItemCount() == 0) return null;
        CharSequence text = data.getItemAt(0).getText();
        return text == null ? null : ComponentName.unflattenFromString(text.toString());
    }
    // 判断指定槽位能否接收给定ClipDescription的内容拖拽
    public boolean canDeliverContentToSlot(int slotIndex, ClipDescription description) {
        if (!isValidSlot(slotIndex) || description == null
                || description.getMimeTypeCount() == 0 || isAppDrag(description)) {
            return false;
        }
        Slot slot = mSlots[slotIndex];
        return slot != null && slot.component != null
                && slot.taskId >= 0 && slot.displayId >= 0;
    }
    // 将指定应用启动或迁移到对应槽位的虚拟显示上
    public void putAppInSlot(final int slotIndex, final ComponentName component) {
        if (!isValidSlot(slotIndex) || component == null) return;
        if (mBusy) {
            LSPLogger.i("MultiTaskController.putAppInSlot: busy drop slot=" + slotIndex
                    + " component=" + component.flattenToShortString());
            return;
        }
        final int displayId = mDisplayIds[slotIndex];
        if (displayId < 0) {
            LSPLogger.w("MultiTaskController.putAppInSlot: display is not ready, slot="
                    + slotIndex);
            return;
        }
        Integer mainTaskId = TaskResizer.getCurrentTaskId();
        Context systemContext = systemContext();
        Integer existingTaskId = TaskResizer.findTaskIdForPackage(
                systemContext, component.getPackageName());
        if (existingTaskId != null && !existingTaskId.equals(mainTaskId)) {
            if (TaskResizer.moveRootTaskToDisplay(existingTaskId, displayId)) {
                setSlot(slotIndex, existingTaskId, displayId, component);
            }
            return;
        }
        if (existingTaskId != null) {
            LSPLogger.w("MultiTaskController.putAppInSlot: app is already the main task: "
                    + component.flattenToShortString());
            return;
        }
        mBusy = true;
        try {
            Intent intent = Intent.makeMainActivity(component);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(displayId);
            systemContext.startActivity(intent, options.toBundle());
            LSPLogger.i("MultiTaskController.putAppInSlot: launched "
                    + component.flattenToShortString() + " on display=" + displayId);
        } catch (Throwable t) {
            mBusy = false;
            LSPLogger.e("MultiTaskController.putAppInSlot: launch failed", t);
            return;
        }
        mMainHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Integer taskId = TaskResizer.findTaskIdForPackage(
                        systemContext(), component.getPackageName(), displayId);
                if (taskId != null) {
                    setSlot(slotIndex, taskId, displayId, component);
                } else {
                    LSPLogger.w("MultiTaskController.putAppInSlot: live task not found, component="
                            + component.flattenToShortString() + " display=" + displayId);
                }
                scheduleBusyRelease();
            }
        }, 700L);
    }
    /** Opens a top-strip app in the main area without treating a tap as a slot tap. */
    public void openAppInMain(final ComponentName component) {
        if (component == null) return;
        if (mBusy) {
            LSPLogger.i("MultiTaskController.openAppInMain: busy drop "
                    + component.flattenToShortString());
            return;
        }
        int existingSlot = findSlot(component);
        if (existingSlot >= 0) {
            swapWithSlot(existingSlot);
            return;
        }
        final SidebarController controller = SidebarController.getInstance(mContext);
        final Context context = systemContext();
        final Integer existingTaskId = TaskResizer.findTaskIdForPackage(
                context, component.getPackageName());
        if (existingTaskId != null) {
            int existingDisplayId = TaskResizer.findTaskDisplayId(context, existingTaskId);
            if (existingDisplayId != Display.DEFAULT_DISPLAY) {
                activateBackgroundTask(existingTaskId, existingDisplayId, component);
                return;
            }
        }
        final int emptySlot = findEmptyReadySlot();
        final Integer currentTaskId = TaskResizer.getCurrentTaskId();
        final ComponentName currentComponent = currentTaskId == null ? null
                : TaskResizer.findTaskComponent(context, currentTaskId);
        final boolean currentLandscape = currentTaskId != null
                && TaskResizer.isLandscapeTask(context, currentTaskId);
        if (currentTaskId != null && component.equals(currentComponent)) return;
        mBusy = true;
        try {
            if (currentTaskId != null && emptySlot >= 0) {
                if (controller.parkMainTaskAndShowHome(mDisplayIds[emptySlot])) {
                    clearDuplicateTaskSlots(currentTaskId, emptySlot);
                    mSlots[emptySlot] = createSlot(currentTaskId,
                            mDisplayIds[emptySlot], currentComponent, currentLandscape);
                    markRecentlyParked(currentTaskId);
                    notifySlotsChanged();
                    LSPLogger.i("MultiTaskController.openAppInMain: parked current task="
                            + currentTaskId + " slot=" + emptySlot
                            + " landscape=" + currentLandscape);
                }
            }
            if (existingTaskId != null && !existingTaskId.equals(currentTaskId)) {
                if (TaskResizer.bringTaskToFront(context, existingTaskId)) {
                    LSPLogger.i("MultiTaskController.openAppInMain: resumed background task="
                            + existingTaskId + " component="
                            + component.flattenToShortString());
                }
                return;
            }
            Intent intent = Intent.makeMainActivity(component);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
            context.startActivity(intent, options.toBundle());
            LSPLogger.i("MultiTaskController.openAppInMain: launched "
                    + component.flattenToShortString());
        } catch (Throwable t) {
            LSPLogger.e("MultiTaskController.openAppInMain: failed", t);
        } finally {
            mMainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    scheduleBusyRelease(PARK_SETTLE_MS);
                }
            }, 700L);
        }
    }
    private void activateBackgroundTask(int taskId, int sourceDisplayId,
            ComponentName component) {
        SidebarController controller = SidebarController.getInstance(mContext);
        mBusy = true;
        boolean activated = controller.activateTaskFromDisplay(taskId, sourceDisplayId);
        if (activated) {
            clearTaskFromSlots(taskId);
            notifySlotsChanged();
            LSPLogger.i("MultiTaskController.openAppInMain: activated background task="
                    + taskId + " display=" + sourceDisplayId + " component="
                    + component.flattenToShortString());
        } else {
            LSPLogger.w("MultiTaskController.openAppInMain: background activation failed task="
                    + taskId + " display=" + sourceDisplayId + " component="
                    + component.flattenToShortString());
        }
        scheduleBusyRelease();
    }
    private void clearTaskFromSlots(int taskId) {
        for (int i = 0; i < mSlots.length; i++) {
            if (mSlots[i] != null && mSlots[i].taskId == taskId) {
                mSlots[i] = null;
            }
        }
    }
    // 主任务与指定槽位任务互换位置，或停靠/激活槽位任务
    public void swapWithSlot(int slotIndex) {
        LSPLogger.i("MultiTaskController.swapWithSlot: enter slot=" + slotIndex
                + " valid=" + isValidSlot(slotIndex) + " busy=" + mBusy);
        if (!isValidSlot(slotIndex)) return;
        if (mBusy) {
            mPendingSlotTap = slotIndex;
            LSPLogger.i("MultiTaskController.swapWithSlot: busy queue slot=" + slotIndex);
            return;
        }
        mPendingSlotTap = -1;
        Slot target = mSlots[slotIndex];
        SidebarController sidebarController = SidebarController.getInstance(mContext);
        sidebarController.syncMainTaskTransform();
        Context context = systemContext();
        boolean homeVisible = TaskResizer.isHomeVisibleOnDefaultDisplay(context);
        Integer currentTaskId = TaskResizer.getCurrentTaskId();
        if (target == null) {
            if (homeVisible || currentTaskId == null) return;
            ComponentName currentComponent = TaskResizer.findTaskComponent(
                    context, currentTaskId);
            boolean currentLandscape = TaskResizer.isLandscapeTask(context, currentTaskId);
            mBusy = true;
            if (sidebarController.parkMainTaskAndShowHome(mDisplayIds[slotIndex])) {
                mSlots[slotIndex] = createSlot(
                        currentTaskId, mDisplayIds[slotIndex], currentComponent,
                        currentLandscape);
                markRecentlyParked(currentTaskId);
                notifySlotsChanged();
                LSPLogger.i("MultiTaskController.swapWithSlot: parked task=" + currentTaskId
                        + " slot=" + slotIndex + " landscape=" + currentLandscape);
            }
            scheduleBusyRelease(PARK_SETTLE_MS);
            return;
        }
        if (homeVisible || currentTaskId == null) {
            if (isParkActivateProtected(target.taskId)) {
                mPendingSlotTap = slotIndex;
                LSPLogger.i("MultiTaskController.swapWithSlot: defer activate of just-parked"
                        + " task=" + target.taskId + " slot=" + slotIndex
                        + " until=" + mParkProtectUntil);
                mMainHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (mPendingSlotTap == slotIndex && !mBusy) {
                            int pending = mPendingSlotTap;
                            mPendingSlotTap = -1;
                            swapWithSlot(pending);
                        }
                    }
                }, Math.max(50L, mParkProtectUntil - SystemClock.uptimeMillis()));
                return;
            }
            mBusy = true;
            if (sidebarController.activateTaskFromDisplay(
                    target.taskId, target.displayId)) {
                mSlots[slotIndex] = null;
                mRecentlyParkedTaskId = -1;
                mParkProtectUntil = 0L;
                notifySlotsChanged();
            }
            scheduleBusyRelease();
            return;
        }
        if (target.taskId == currentTaskId) return;
        int liveDisplayId = TaskResizer.findTaskDisplayId(systemContext(), target.taskId);
        if (liveDisplayId != target.displayId) {
            LSPLogger.w("MultiTaskController.swapWithSlot: stale slot=" + slotIndex
                    + " taskId=" + target.taskId + " displayId=" + target.displayId);
            mSlots[slotIndex] = null;
            notifySlotsChanged();
            return;
        }
        ComponentName currentComponent = TaskResizer.findTaskComponent(
                context, currentTaskId);
        boolean currentLandscape = TaskResizer.isLandscapeTask(context, currentTaskId);
        logRuntimeSnapshotAsync("before_swap slot=" + slotIndex
                + " currentTask=" + currentTaskId
                + " targetTask=" + target.taskId
                + " currentLandscape=" + currentLandscape
                + " targetLandscape=" + target.landscapeHint
                + " presentation=" + TaskResizer.getPresentationDebugState());
        mBusy = true;
        boolean switched = sidebarController
                .swapMainTaskWithDisplay(target.taskId, target.displayId, slotIndex,
                        target.landscapeHint);
        if (switched) {
            clearDuplicateTaskSlots(currentTaskId, slotIndex);
            mSlots[slotIndex] = createSlot(
                    currentTaskId, target.displayId, currentComponent, currentLandscape);
            notifySlotsChanged();
            logRuntimeSnapshotAsync("after_swap slot=" + slotIndex
                    + " currentTask=" + currentTaskId
                    + " targetTask=" + target.taskId
                    + " presentation=" + TaskResizer.getPresentationDebugState());
        }
        scheduleBusyRelease();
    }
    // 移除并结束指定槽位的任务
    public void removeSlot(int slotIndex) {
        if (!isValidSlot(slotIndex)) return;
        if (mBusy) {
            LSPLogger.i("MultiTaskController.removeSlot: busy drop slot=" + slotIndex);
            return;
        }
        Slot slot = mSlots[slotIndex];
        if (slot == null) return;
        mBusy = true;
        TaskResizer.removeTask(slot.taskId);
        mSlots[slotIndex] = null;
        notifySlotsChanged();
        mBusy = false;
    }
    private int findSlot(ComponentName component) {
        for (int i = 0; i < mSlots.length; i++) {
            if (mSlots[i] != null && component.equals(mSlots[i].component)) return i;
        }
        return -1;
    }
    private int findEmptyReadySlot() {
        for (int i = 0; i < mSlots.length; i++) {
            if (mSlots[i] == null && mDisplayIds[i] >= 0) return i;
        }
        return -1;
    }
    private void setSlot(int index, int taskId, int displayId, ComponentName component) {
        clearDuplicateTaskSlots(taskId, index);
        mSlots[index] = createSlot(taskId, displayId, component);
        LSPLogger.i("MultiTaskController.setSlot: index=" + index
                + " taskId=" + taskId + " displayId=" + displayId
                + " component=" + component);
        notifySlotsChanged();
    }
    private void clearDuplicateTaskSlots(int taskId, int keepIndex) {
        for (int i = 0; i < mSlots.length; i++) {
            if (i != keepIndex && mSlots[i] != null && mSlots[i].taskId == taskId) {
                LSPLogger.w("MultiTaskController: clearing duplicate task=" + taskId
                        + " from slot=" + i + " keep=" + keepIndex);
                mSlots[i] = null;
            }
        }
    }
    private void adoptOrphanedSlotTasks() {
        Context context = systemContext();
        if (context == null) return;
        try {
            android.hardware.display.DisplayManager displayManager =
                    (android.hardware.display.DisplayManager) context.getSystemService(
                            Context.DISPLAY_SERVICE);
            if (displayManager == null) return;
            android.view.Display[] displays = displayManager.getDisplays();
            if (displays == null) return;
            for (android.view.Display display : displays) {
                String name = display.getName();
                if (name == null || !name.startsWith(SLOT_DISPLAY_PREFIX)) continue;
                int slotIndex = parseSlotIndex(name);
                if (!isValidSlot(slotIndex)) continue;
                int orphanDisplayId = display.getDisplayId();
                if (isOwnedDisplay(orphanDisplayId)) continue;
                Integer taskId = findTopTaskOnDisplay(context, orphanDisplayId);
                if (taskId == null) continue;
                int targetDisplayId = mDisplayIds[slotIndex];
                if (targetDisplayId < 0) {
                    LSPLogger.d("MultiTaskController.adopt: slot display not ready slot="
                            + slotIndex + " orphanTask=" + taskId);
                    continue;
                }
                LSPLogger.i("MultiTaskController.adopt: recovering task=" + taskId
                        + " from orphan display=" + orphanDisplayId
                        + " to slot=" + slotIndex + " display=" + targetDisplayId);
                if (TaskResizer.moveRootTaskToDisplay(taskId, targetDisplayId)) {
                    ComponentName component = TaskResizer.findTaskComponent(context, taskId);
                    if (component != null) {
                        setSlot(slotIndex, taskId, targetDisplayId, component);
                    }
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("MultiTaskController.adopt: failed", t);
        }
    }
    private static final String SLOT_DISPLAY_PREFIX = "OneStep-slot-";
    private static int parseSlotIndex(String displayName) {
        try {
            return Integer.parseInt(displayName.substring(SLOT_DISPLAY_PREFIX.length()));
        } catch (Throwable t) {
            return -1;
        }
    }
    private boolean isOwnedDisplay(int displayId) {
        for (int id : mDisplayIds) {
            if (id == displayId) return true;
        }
        return false;
    }
    private static Integer findTopTaskOnDisplay(Context context, int displayId) {
        try {
            android.app.ActivityManager am = (android.app.ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return null;
            java.util.List<android.app.ActivityManager.RunningTaskInfo> tasks =
                    am.getRunningTasks(100);
            if (tasks == null) return null;
            for (android.app.ActivityManager.RunningTaskInfo task : tasks) {
                if (readTaskDisplayId(task) == displayId && isRestorableAppTask(task)) {
                    return task.taskId;
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("MultiTaskController.findTopTaskOnDisplay: " + t);
        }
        return null;
    }
    private void collectTasksOnOwnedDisplays(Context context, Set<Integer> result) {
        if (context == null || result == null) return;
        try {
            android.app.ActivityManager am = (android.app.ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return;
            java.util.List<android.app.ActivityManager.RunningTaskInfo> tasks =
                    am.getRunningTasks(100);
            if (tasks == null) return;
            for (android.app.ActivityManager.RunningTaskInfo task : tasks) {
                if (task.taskId > 0 && isOwnedDisplay(readTaskDisplayId(task))
                        && isRestorableAppTask(task)) {
                    result.add(task.taskId);
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("MultiTaskController.exit: task scan failed", t);
        }
    }
    private static boolean isRestorableAppTask(
            android.app.ActivityManager.RunningTaskInfo task) {
        if (task == null) return false;
        ComponentName top = task.topActivity != null ? task.topActivity : task.baseActivity;
        if (top == null) return false;
        String pkg = top.getPackageName();
        if (pkg == null) return false;
        String lower = pkg.toLowerCase();
        return !lower.contains("systemui") && !lower.contains("launcher")
                && !lower.contains("miui.home") && !lower.contains("smartisanos");
    }
    private static int readTaskDisplayId(android.app.ActivityManager.RunningTaskInfo task) {
        try {
            java.lang.reflect.Field field = task.getClass().getField("displayId");
            return field.getInt(task);
        } catch (Throwable ignored) {
            try {
                java.lang.reflect.Field field = task.getClass().getDeclaredField("displayId");
                field.setAccessible(true);
                return field.getInt(task);
            } catch (Throwable ignoredAgain) {
                return -1;
            }
        }
    }
    private boolean reconcileSlots() {
        boolean changed = false;
        Context context = systemContext();
        long now = SystemClock.uptimeMillis();
        for (int i = 0; i < mSlots.length; i++) {
            Slot slot = mSlots[i];
            if (slot == null) {
                mSlotMismatchSince[i] = 0L;
                continue;
            }
            int expectedDisplayId = mDisplayIds[i] >= 0 ? mDisplayIds[i] : slot.displayId;
            int liveDisplayId = TaskResizer.findTaskDisplayId(context, slot.taskId);
            if (liveDisplayId != expectedDisplayId) {
                if (mSlotMismatchSince[i] == 0L) mSlotMismatchSince[i] = now;
                if (now - mSlotMismatchSince[i] >= SLOT_RECONCILE_GRACE_MS) {
                    LSPLogger.i("MultiTaskController.reconcileSlots: clearing stale slot=" + i
                            + " taskId=" + slot.taskId + " displayId=" + expectedDisplayId
                            + " liveDisplay=" + liveDisplayId);
                    mSlots[i] = null;
                    mSlotMismatchSince[i] = 0L;
                    changed = true;
                }
            } else if (slot.displayId != expectedDisplayId) {
                mSlotMismatchSince[i] = 0L;
                mSlots[i] = new Slot(slot.taskId, expectedDisplayId, slot.component,
                        slot.landscapeHint, slot.landscapeHintUntil, slot.createdAt);
                changed = true;
            } else if (isLateLandscapeCandidate(slot, now)) {
                boolean landscapeNow = TaskResizer.isLandscapeTask(context, slot.taskId);
                if (landscapeNow) {
                    LSPLogger.i("MultiTaskController.reconcileSlots: late landscape slot=" + i
                            + " taskId=" + slot.taskId);
                    mSlots[i] = createSlot(slot.taskId, slot.displayId, slot.component,
                            true, slot.createdAt);
                    changed = true;
                }
            } else {
                mSlotMismatchSince[i] = 0L;
            }
        }
        return changed;
    }
    private Slot createSlot(int taskId, int displayId, ComponentName component) {
        boolean landscape = TaskResizer.isLandscapeTask(systemContext(), taskId);
        return createSlot(taskId, displayId, component, landscape);
    }
    private Slot createSlot(int taskId, int displayId, ComponentName component,
            boolean landscape) {
        return createSlot(taskId, displayId, component, landscape,
                SystemClock.uptimeMillis());
    }
    private Slot createSlot(int taskId, int displayId, ComponentName component,
            boolean landscape, long createdAt) {
        long hintUntil = landscape ? SystemClock.uptimeMillis() + 8000L : 0L;
        return new Slot(taskId, displayId, component, landscape, hintUntil, createdAt);
    }
    private static final long LATE_LANDSCAPE_WINDOW_MS = 3000L;
    private boolean isLateLandscapeCandidate(Slot slot, long now) {
        return slot != null && !slot.landscapeHint
                && now - slot.createdAt <= LATE_LANDSCAPE_WINDOW_MS;
    }
    private void markRecentlyParked(int taskId) {
        mRecentlyParkedTaskId = taskId;
        mParkProtectUntil = SystemClock.uptimeMillis() + PARK_ACTIVATE_PROTECT_MS;
    }
    private boolean isParkActivateProtected(int taskId) {
        return taskId > 0
                && taskId == mRecentlyParkedTaskId
                && SystemClock.uptimeMillis() < mParkProtectUntil;
    }
    private void scheduleBusyRelease() {
        scheduleBusyRelease(TRANSITION_SETTLE_MS);
    }
    private void scheduleBusyRelease(long settleMs) {
        final int generation = ++mBusyGeneration;
        mMainHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (generation != mBusyGeneration) return;
                mBusy = false;
                reconcileSlots();
                notifySlotsChanged();
                final int pending = mPendingSlotTap;
                if (pending >= 0) {
                    mPendingSlotTap = -1;
                    LSPLogger.i("MultiTaskController: drain queued slot tap=" + pending);
                    swapWithSlot(pending);
                }
            }
        }, settleMs);
    }
    private void notifySlotsChanged() {
        final Listener listener = mListener;
        if (listener == null) return;
        final Slot[] copy = mSlots.clone();
        mMainHandler.post(new Runnable() {
            @Override
            public void run() {
                if (mListener == listener) listener.onSlotsChanged(copy);
            }
        });
    }
    private void logRuntimeSnapshotAsync(final String reason) {
        if (!LSPLogger.isEnabled() || mDiagnosticsRunning) return;
        mDiagnosticsRunning = true;
        final Context context = systemContext();
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    LSPLogger.logRuntimeSnapshot(context, reason);
                } finally {
                    mDiagnosticsRunning = false;
                }
            }
        }, "OneStep-Diagnostics").start();
    }
    private static boolean isValidSlot(int index) {
        return index >= 0 && index < SLOT_COUNT;
    }
    private Context systemContext() {
        SidebarController controller = SidebarController.peekInstance();
        return controller != null && controller.getHostContext() != null
                ? controller.getHostContext() : mContext;
    }
}
