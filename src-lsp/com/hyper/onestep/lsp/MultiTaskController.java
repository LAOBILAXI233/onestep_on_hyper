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
    /**
     * Park→activate gap no longer needs a 1.8s lock. Evidence 00:45–00:47: users tapped
     * within the protect window and got silent "ignore activate of just-parked" /
     * mBusy early-return → "点不动". Keep a short settle so VD consumer can attach.
     */
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
                    // Task identity may be unchanged while a player enters/exits fullscreen.
                    // Rebind so each VirtualDisplay follows that task's current orientation.
                    notifySlotsChanged();
                }
                // Keep a low-rate, continuous diagnostic stream while the GUI switch is on.
                // The snapshot runs off the main thread so getRunningTasks/process queries do
                // not add latency to touch or TextureView reconciliation.
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

    public void registerSlotDisplay(int slotIndex, int displayId) {
        if (!isValidSlot(slotIndex) || displayId < 0) return;
        mDisplayIds[slotIndex] = displayId;
        LSPLogger.i("MultiTaskController.registerSlotDisplay: slot=" + slotIndex
                + " displayId=" + displayId);
        if (!mBusy && reconcileSlots()) notifySlotsChanged();
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

    public boolean canDeliverContentToSlot(int slotIndex, ClipDescription description) {
        if (!isValidSlot(slotIndex) || description == null
                || description.getMimeTypeCount() == 0 || isAppDrag(description)) {
            return false;
        }
        Slot slot = mSlots[slotIndex];
        return slot != null && slot.component != null
                && slot.taskId >= 0 && slot.displayId >= 0;
    }

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
            // The visible Home task is not a reliable signal while the main app is being
            // surface-transformed. If a tracked main task exists, always park it before
            // replacing the main app so an available side slot is not silently skipped.
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

    public void swapWithSlot(int slotIndex) {
        LSPLogger.i("MultiTaskController.swapWithSlot: enter slot=" + slotIndex
                + " valid=" + isValidSlot(slotIndex) + " busy=" + mBusy);
        if (!isValidSlot(slotIndex)) return;
        if (mBusy) {
            // Queue the last tap so a settle window does not swallow user intent.
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
            // Capture before park restores presentation and clears landscape transform state.
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
            // Only block the accidental double-tap that re-activates the task just parked
            // into this same slot. Evidence: protect=2s made normal main↔slot feel dead.
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

    /**
     * Recovers tasks stranded on virtual displays from a previous SystemUI life.
     *
     * When SystemUI restarts, its SlotViews die but the tasks they hosted stay on the
     * old "OneStep-slot-N" displays — invisible, untouchable, and rendering black.
     * The display name carries the slot index, so each stranded task is moved onto the
     * CURRENT virtual display of that same slot and the slot is re-bound.
     */
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
                int taskDisplay = readTaskDisplayId(task);
                if (taskDisplay != displayId) continue;
                ComponentName top = task.topActivity != null
                        ? task.topActivity : task.baseActivity;
                if (top == null) continue;
                String pkg = top.getPackageName();
                if (pkg == null) continue;
                String lower = pkg.toLowerCase();
                if (lower.contains("systemui") || lower.contains("launcher")
                        || lower.contains("miui.home") || lower.contains("smartisanos")) {
                    continue;
                }
                return task.taskId;
            }
        } catch (Throwable t) {
            LSPLogger.d("MultiTaskController.findTopTaskOnDisplay: " + t);
        }
        return null;
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
                // Evidence 2026-07-23 20:16:45-47: swapWithSlot read isLandscapeTask()
                // as false at park time, but the player's setRequestedOrientation(LANDSCAPE)
                // request landed ~1.7s later (system_server RequestedOrientationHooker).
                // The slot was already bound portrait and never re-checked. Re-probe once
                // during the park settle window so a late landscape flip still lands.
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

    /**
     * Capture orientation before WMS moves a task to a virtual display. HyperOS 3 can expose
     * the destination display's portrait configuration for a short interval, which is too
     * late for TextureView to choose its producer buffer size.
     */
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
        // Keep the landscape producer geometry long enough for TextureView recreate +
        // first frame. device_onestep.log never logged landscape=true geometry before.
        long hintUntil = landscape ? SystemClock.uptimeMillis() + 8000L : 0L;
        return new Slot(taskId, displayId, component, landscape, hintUntil, createdAt);
    }

    /**
     * A slot bound portrait right after park may still receive a late landscape
     * orientation request (evidence: request landed ~1.7s after park). Re-probing
     * forever would cost a getRunningTasks-class call every reconcile tick for every
     * slot, so the window is bounded to the settle period right after creation.
     */
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
