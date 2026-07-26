package com.hyper.sidebar.lsp;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.Matrix;
import android.util.SparseArray;
import android.view.SurfaceControl;
import android.view.animation.PathInterpolator;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Uses SystemUI's already-registered ShellTaskOrganizer to transform a task leash.
 *
 * HyperOS keeps the organizer in:
 * SystemUIAppComponentFactoryBase.systemUIInitializer -> WMComponentImpl
 * -> provideShellTaskOrganizerProvider -> ShellTaskOrganizer.mTasks.
 * Registering another TaskOrganizer would race with WMShell and can steal task callbacks,
 * so this class only reads the existing organizer.
 */
final class TaskSurfaceTransformer {
    private static final String SYSTEMUI_FACTORY =
            "com.android.systemui.SystemUIAppComponentFactoryBase";
    private static final String INITIALIZER_FIELD = "systemUIInitializer";
    private static final String ORGANIZER_PROVIDER_FIELD =
            "provideShellTaskOrganizerProvider";
    private static final String TASKS_FIELD = "mTasks";
    private static final String LOCK_FIELD = "mLock";

    private static SurfaceControl sLeash;
    private static int sTaskId = -1;
    private static boolean sRotated;
    private static volatile ClassLoader sHostClassLoader;
    private static volatile Method sWindowCropMethod;
    private static volatile boolean sWindowCropMethodResolved;
    private static volatile Method sSetAlphaMethod;
    private static volatile boolean sSetAlphaMethodResolved;
    private static ValueAnimator sTransitionAnimator;
    private static int sTransitionTaskId = -1;
    /** Shared animator used while two real task leashes exchange the main/slot positions. */
    private static ValueAnimator sSwapAnimator;
    private static boolean sSwapActive;
    private static SurfaceControl sSwapSelectedLeash;
    private static SurfaceControl sSwapOldLeash;
    private static int sSwapSelectedTaskId = -1;
    private static int sSwapOldTaskId = -1;
    private static float[] sSwapSelectedStart;
    private static float[] sSwapSelectedFinal;
    private static float[] sSwapOldStart;
    private static float[] sSwapOldFinal;
    private static Runnable sSwapFinishCallback;
    private static float sFinalDsdx = 1f;
    private static float sFinalDtdx;
    private static float sFinalDtdy;
    private static float sFinalDsdy = 1f;
    private static float sFinalPositionX;
    private static float sFinalPositionY;
    private static float sCurrentDsdx = 1f;
    private static float sCurrentDtdx;
    private static float sCurrentDtdy;
    private static float sCurrentDsdy = 1f;
    private static float sCurrentPositionX;
    private static float sCurrentPositionY;

    private TaskSurfaceTransformer() {}

    static void setHostClassLoader(ClassLoader classLoader) {
        sHostClassLoader = classLoader;
        LSPLogger.d("TaskSurfaceTransformer.setHostClassLoader: " + classLoader);
    }

    static String getDebugState() {
        return "taskId=" + sTaskId
                + " rotated=" + sRotated
                + " leashValid=" + (sLeash != null && sLeash.isValid())
                + " finalMatrix=" + sFinalDsdx + "," + sFinalDtdx + ","
                + sFinalDtdy + "," + sFinalDsdy
                + " finalPosition=" + sFinalPositionX + "," + sFinalPositionY
                + " currentMatrix=" + sCurrentDsdx + "," + sCurrentDtdx + ","
                + sCurrentDtdy + "," + sCurrentDsdy
                + " currentPosition=" + sCurrentPositionX + "," + sCurrentPositionY
                + " swapActive=" + sSwapActive
                + " swapSelected=" + sSwapSelectedTaskId
                + " swapOld=" + sSwapOldTaskId;
    }

    static boolean shrink(int taskId, int sidebarWidth, int screenWidth,
                          int topHeight, int screenHeight, boolean sidebarOnLeft) {
        return shrink(taskId, sidebarWidth, screenWidth, topHeight, screenHeight,
                sidebarOnLeft, false);
    }

    /**
     * Rewrites the portrait presentation when a framework transition has reset the task
     * leash behind our back. The caller must keep {@code force} bounded; otherwise this
     * would turn the normal idempotent reconcile path into continuous SurfaceFlinger work.
     */
    static boolean shrink(int taskId, int sidebarWidth, int screenWidth,
                          int topHeight, int screenHeight, boolean sidebarOnLeft,
                          boolean force) {
        if (screenWidth <= 0 || screenHeight <= 0
                || sidebarWidth <= 0 || sidebarWidth >= screenWidth
                || topHeight <= 0 || topHeight >= screenHeight) {
            LSPLogger.w("TaskSurfaceTransformer.shrink: invalid dimensions sidebar="
                    + sidebarWidth + " screen=" + screenWidth + "x" + screenHeight
                    + " top=" + topHeight);
            return false;
        }

        SurfaceControl leash = findTaskLeash(taskId);
        if (leash == null || !leash.isValid()) {
            LSPLogger.w("TaskSurfaceTransformer.shrink: no valid leash for taskId=" + taskId);
            return false;
        }

        float scaleX = (screenWidth - sidebarWidth) / (float) screenWidth;
        float scaleY = (screenHeight - topHeight) / (float) screenHeight;
        float positionX = sidebarOnLeft ? sidebarWidth : 0f;
        // Idempotence: the 120 ms reconcile loop re-invokes shrink for the settled
        // task. Re-issuing the same SurfaceControl.Transaction costs a binder
        // round-trip and a SurfaceFlinger merge each time — that was the constant
        // "rotate90 applied" spam in device logs and a direct source of jank.
        if (!force && sTaskId == taskId && !sRotated && leash == sLeash
                && Math.abs(sFinalDsdx - scaleX) < 0.0001f
                && Math.abs(sFinalDtdx) < 0.0001f && Math.abs(sFinalDtdy) < 0.0001f
                && Math.abs(sFinalDsdy - scaleY) < 0.0001f
                && Math.abs(sFinalPositionX - positionX) < 0.5f
                && Math.abs(sFinalPositionY - topHeight) < 0.5f) {
            return true;
        }
        try (SurfaceControl.Transaction transaction = new SurfaceControl.Transaction()) {
            // rotate90() crops the full-screen task to WMS's fixed-orientation content.
            // A portrait re-entry must clear that crop before applying its regular scale.
            setWindowCrop(transaction, leash, null);
            // Write the complete matrix every time. setScale alone can preserve stale
            // off-diagonal rotation terms after a fullscreen exit or task swap.
            if (!setLayerMatrix(transaction, leash, scaleX, 0f, 0f, scaleY)) {
                transaction.setScale(leash, scaleX, scaleY);
            }
            transaction.setPosition(leash, positionX, topHeight);
            transaction.apply();
            sFinalDsdx = scaleX;
            sFinalDtdx = 0f;
            sFinalDtdy = 0f;
            sFinalDsdy = scaleY;
            sFinalPositionX = positionX;
            sFinalPositionY = topHeight;
            setCurrentPresentation(scaleX, 0f, 0f, scaleY, positionX, topHeight);
            sLeash = leash;
            sTaskId = taskId;
            sRotated = false;
            String appliedLog = "TaskSurfaceTransformer.shrink: applied taskId=" + taskId
                    + " scaleX=" + scaleX + " positionX=" + positionX
                    + " scaleY=" + scaleY + " positionY=" + topHeight
                    + " leash=" + leash;
            if (force) {
                LSPLogger.d(appliedLog + " force=true");
            } else {
                LSPLogger.i(appliedLog);
            }
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskSurfaceTransformer.shrink: transaction failed", t);
            return false;
        }
    }

    /** A small settle for non-slot task changes (launch/reconcile paths). */
    static void animateReveal(final int taskId) {
        animateToFinal(taskId,
                sFinalDsdx * 0.965f, sFinalDtdx * 0.965f,
                sFinalDtdy * 0.965f, sFinalDsdy * 0.965f,
                sFinalPositionX + 12f, sFinalPositionY + 8f, 0.68f, 240L);
    }

    /**
     * Animates a task from the selected side slot into the main area.
     * Portrait geometry is exact; landscape keeps the proven reveal path because
     * its fixed-orientation matrix is owned by the rotation hook.
     */
    static void animateRevealFromSlot(final int taskId, int slotIndex,
            int sidebarWidth, int screenWidth, int topHeight, int screenHeight,
            boolean sidebarOnLeft) {
        if (sRotated || slotIndex < 0 || slotIndex >= 3
                || sidebarWidth <= 0 || screenWidth <= 0
                || topHeight < 0 || screenHeight <= topHeight) {
            animateReveal(taskId);
            return;
        }
        int slotHeight = Math.max(1, (screenHeight - topHeight) / 3);
        float slotScaleX = sidebarWidth / (float) screenWidth;
        float slotScaleY = slotHeight / (float) screenHeight;
        float slotPositionX = sidebarOnLeft ? 0f : screenWidth - sidebarWidth;
        float slotPositionY = topHeight + slotIndex * slotHeight;
        animateToFinal(taskId, slotScaleX, 0f, 0f, slotScaleY,
                slotPositionX, slotPositionY, 1f, 280L);
    }

    /**
     * Captures the presentation currently applied to a task.  This is deliberately
     * separate from the final presentation: a second tap may interrupt the first
     * transition and should continue from the frame that is actually on screen.
     */
    static float[] capturePresentation(int taskId) {
        if (taskId <= 0 || sTaskId != taskId) return null;
        return new float[] {
                sCurrentDsdx, sCurrentDtdx, sCurrentDtdy, sCurrentDsdy,
                sCurrentPositionX, sCurrentPositionY
        };
    }

    /** Computes the matrix/position for a clockwise 90 degree fit into a destination. */
    static float[] rotatedPresentation(Rect source, Rect destination) {
        if (source == null || destination == null
                || source.width() <= 0 || source.height() <= 0
                || destination.width() <= 0 || destination.height() <= 0) {
            return null;
        }
        float scale = Math.min(
                destination.width() / (float) source.height(),
                destination.height() / (float) source.width());
        float rotatedWidth = source.height() * scale;
        float rotatedHeight = source.width() * scale;
        float left = destination.left + (destination.width() - rotatedWidth) * 0.5f;
        float top = destination.top + (destination.height() - rotatedHeight) * 0.5f;
        return new float[] {
                0f, scale, -scale, 0f,
                left + source.bottom * scale,
                top - source.left * scale
        };
    }

    /**
     * Animates both real task surfaces in one choreographer-driven timeline.  The
     * selected task grows from its slot while the old main task shrinks into that
     * exact slot.  The old task is moved to its virtual display by the completion
     * callback only after it reaches the hand-off frame.
     */
    static boolean animateSwap(final int selectedTaskId, final int oldTaskId,
            float[] selectedStart, float[] oldStart, float[] oldFinal,
            final Runnable onFinished) {
        if (selectedTaskId <= 0 || oldTaskId <= 0
                || selectedStart == null || oldStart == null || oldFinal == null
                || selectedStart.length < 6 || oldStart.length < 6 || oldFinal.length < 6) {
            LSPLogger.w("TaskSurfaceTransformer.animateSwap: invalid presentation");
            return false;
        }
        cancelTransition();
        SurfaceControl selected = sTaskId == selectedTaskId
                ? sLeash : findTaskLeash(selectedTaskId);
        SurfaceControl old = sTaskId == oldTaskId ? sLeash : findTaskLeash(oldTaskId);
        if (selected == null || !selected.isValid() || old == null || !old.isValid()) {
            LSPLogger.w("TaskSurfaceTransformer.animateSwap: missing leash selected="
                    + selectedTaskId + " old=" + oldTaskId);
            return false;
        }

        final float[] selectedFinal = new float[] {
                sFinalDsdx, sFinalDtdx, sFinalDtdy, sFinalDsdy,
                sFinalPositionX, sFinalPositionY
        };
        sSwapSelectedLeash = selected;
        sSwapOldLeash = old;
        sSwapSelectedTaskId = selectedTaskId;
        sSwapOldTaskId = oldTaskId;
        sSwapSelectedStart = selectedStart.clone();
        sSwapSelectedFinal = selectedFinal;
        sSwapOldStart = oldStart.clone();
        sSwapOldFinal = oldFinal.clone();
        sSwapFinishCallback = onFinished;
        sSwapActive = true;

        if (!applyPresentationPair(selected, selectedStart, old, oldStart)) {
            clearSwapState();
            return false;
        }
        ValueAnimator animator = ValueAnimator.ofFloat(0f, 1f);
        animator.setDuration(360L);
        animator.setInterpolator(new PathInterpolator(0.22f, 1f, 0.36f, 1f));
        sSwapAnimator = animator;
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (!sSwapActive) return;
                float progress = (Float) valueAnimator.getAnimatedValue();
                float[] selectedFrame = interpolate(sSwapSelectedStart,
                        sSwapSelectedFinal, progress);
                float[] oldFrame = interpolate(sSwapOldStart, sSwapOldFinal, progress);
                if (applyPresentationPair(sSwapSelectedLeash, selectedFrame,
                        sSwapOldLeash, oldFrame)) {
                    setCurrentPresentation(selectedFrame[0], selectedFrame[1],
                            selectedFrame[2], selectedFrame[3],
                            selectedFrame[4], selectedFrame[5]);
                }
            }
        });
        animator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animation) {
                LSPLogger.d("TaskSurfaceTransformer.animateSwap: start selected="
                        + selectedTaskId + " old=" + oldTaskId);
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                if (sSwapActive) completeSwapAnimation();
            }

            @Override
            public void onAnimationCancel(Animator animation) {
                // A new tap calls finishSwapAnimation(), which commits both end frames
                // before the next swap starts.  Do not invoke the callback twice here.
            }

            @Override
            public void onAnimationRepeat(Animator animation) {
            }
        });
        animator.start();
        return true;
    }

    static boolean isSwapAnimating() {
        return sSwapActive;
    }

    /** Commits the hand-off frame immediately when another tap interrupts the curve. */
    static void finishSwapAnimation() {
        if (!sSwapActive) return;
        completeSwapAnimation();
    }

    private static void completeSwapAnimation() {
        if (!sSwapActive) return;
        sSwapActive = false;
        ValueAnimator animator = sSwapAnimator;
        sSwapAnimator = null;
        if (animator != null && animator.isRunning()) animator.cancel();
        applyPresentationPair(sSwapSelectedLeash, sSwapSelectedFinal,
                sSwapOldLeash, sSwapOldFinal);
        sLeash = sSwapSelectedLeash;
        sTaskId = sSwapSelectedTaskId;
        sFinalDsdx = sSwapSelectedFinal[0];
        sFinalDtdx = sSwapSelectedFinal[1];
        sFinalDtdy = sSwapSelectedFinal[2];
        sFinalDsdy = sSwapSelectedFinal[3];
        sFinalPositionX = sSwapSelectedFinal[4];
        sFinalPositionY = sSwapSelectedFinal[5];
        setCurrentPresentation(sFinalDsdx, sFinalDtdx, sFinalDtdy, sFinalDsdy,
                sFinalPositionX, sFinalPositionY);
        Runnable callback = sSwapFinishCallback;
        clearSwapState();
        if (callback != null) callback.run();
        LSPLogger.d("TaskSurfaceTransformer.animateSwap: end");
    }

    private static float[] interpolate(float[] start, float[] end, float progress) {
        float[] result = new float[6];
        for (int i = 0; i < result.length; i++) {
            result[i] = start[i] + (end[i] - start[i]) * progress;
        }
        return result;
    }

    private static void animateToFinal(final int taskId,
            final float startDsdx, final float startDtdx,
            final float startDtdy, final float startDsdy,
            final float startPositionX, final float startPositionY,
            final float startAlpha, long duration) {
        cancelTransition();
        SurfaceControl leash = sTaskId == taskId ? sLeash : findTaskLeash(taskId);
        if (leash == null || !leash.isValid()) {
            LSPLogger.w("TaskSurfaceTransformer.animateReveal: no valid leash for taskId="
                    + taskId);
            return;
        }

        final float finalDsdx = sFinalDsdx;
        final float finalDtdx = sFinalDtdx;
        final float finalDtdy = sFinalDtdy;
        final float finalDsdy = sFinalDsdy;
        final float finalPositionX = sFinalPositionX;
        final float finalPositionY = sFinalPositionY;
        final ValueAnimator animator = ValueAnimator.ofFloat(0f, 1f);
        animator.setDuration(duration);
        // Material standard-decelerate: quick response, long soft settle.
        animator.setInterpolator(new PathInterpolator(0.22f, 1f, 0.36f, 1f));
        sTransitionAnimator = animator;
        sTransitionTaskId = taskId;
        if (!applyPresentation(leash,
                startDsdx, startDtdx, startDtdy, startDsdy,
                startPositionX, startPositionY, startAlpha)) {
            sTransitionAnimator = null;
            sTransitionTaskId = -1;
            return;
        }
        if (sTaskId == taskId) {
            setCurrentPresentation(startDsdx, startDtdx, startDtdy, startDsdy,
                    startPositionX, startPositionY);
        }
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SurfaceControl current = sTaskId == taskId ? sLeash : findTaskLeash(taskId);
                if (current == null || !current.isValid()) return;
                float progress = (Float) valueAnimator.getAnimatedValue();
                float dsdx = startDsdx + (finalDsdx - startDsdx) * progress;
                float dtdx = startDtdx + (finalDtdx - startDtdx) * progress;
                float dtdy = startDtdy + (finalDtdy - startDtdy) * progress;
                float dsdy = startDsdy + (finalDsdy - startDsdy) * progress;
                float x = startPositionX + (finalPositionX - startPositionX) * progress;
                float y = startPositionY + (finalPositionY - startPositionY) * progress;
                float alpha = startAlpha + (1f - startAlpha) * progress;
                applyPresentation(current,
                        dsdx, dtdx, dtdy, dsdy,
                        x, y, alpha);
                if (sTaskId == taskId) {
                    setCurrentPresentation(dsdx, dtdx, dtdy, dsdy, x, y);
                }
            }
        });
        animator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animation) {
                LSPLogger.d("TaskSurfaceTransformer.animateReveal: start taskId=" + taskId);
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                finishTransition(taskId);
            }

            @Override
            public void onAnimationCancel(Animator animation) {
                // onAnimationEnd follows cancel(); finishTransition is idempotent.
            }

            @Override
            public void onAnimationRepeat(Animator animation) {
            }
        });
        animator.start();
    }

    /** Cancels a running reveal and leaves its leash fully visible. */
    static void cancelTransition() {
        if (sSwapActive) finishSwapAnimation();
        ValueAnimator animator = sTransitionAnimator;
        if (animator != null) animator.cancel();
        int taskId = sTransitionTaskId;
        if (taskId > 0) {
            SurfaceControl leash = sTaskId == taskId ? sLeash : findTaskLeash(taskId);
            if (leash != null && leash.isValid()) {
                applyPresentation(leash, sFinalDsdx, sFinalDtdx, sFinalDtdy, sFinalDsdy,
                        sFinalPositionX, sFinalPositionY, 1f);
            }
        }
        sTransitionAnimator = null;
        sTransitionTaskId = -1;
    }

    private static void finishTransition(int taskId) {
        SurfaceControl leash = sTaskId == taskId ? sLeash : findTaskLeash(taskId);
        if (leash != null && leash.isValid()) {
            applyPresentation(leash, sFinalDsdx, sFinalDtdx, sFinalDtdy, sFinalDsdy,
                    sFinalPositionX, sFinalPositionY, 1f);
        }
        if (sTransitionTaskId == taskId) {
            sTransitionAnimator = null;
            sTransitionTaskId = -1;
        }
        LSPLogger.d("TaskSurfaceTransformer.animateReveal: end taskId=" + taskId);
    }

    /** Rotates a landscape task into the portrait OneStep main area without non-uniform scaling. */
    static boolean rotate90(int taskId, Rect source, Rect destination) {
        return rotate90(taskId, source, destination, false);
    }

    /**
     * @param force true to bypass the idempotence guard. WMS resets the leash matrix on
     *              its own (in-task activity transitions, relayout after config dispatch);
     *              the steady low-rate refresh must rewrite it even when OUR bookkeeping
     *              says the transform is already applied — otherwise the task renders in
     *              the raw letterbox position, hidden behind the OneStep top bar, and the
     *              main area goes black (the regression the continuous spam used to mask).
     */
    static boolean rotate90(int taskId, Rect source, Rect destination, boolean force) {
        if (source == null || destination == null
                || source.width() <= 0 || source.height() <= 0
                || destination.width() <= 0 || destination.height() <= 0) {
            LSPLogger.w("TaskSurfaceTransformer.rotate90: invalid geometry taskId=" + taskId
                    + " source=" + source + " destination=" + destination);
            return false;
        }

        SurfaceControl leash = sTaskId == taskId ? sLeash : findTaskLeash(taskId);
        if (leash == null || !leash.isValid()) {
            // The cached leash can go stale across an in-task activity transition
            // (e.g. a game splash -> Unity player). Re-resolve before giving up;
            // falling through to the portrait shrink path here was a wrong-state trap.
            leash = findTaskLeash(taskId);
        }
        if (leash == null || !leash.isValid()) {
            LSPLogger.w("TaskSurfaceTransformer.rotate90: no valid leash for taskId=" + taskId);
            return false;
        }

        float scale = Math.min(
                destination.width() / (float) source.height(),
                destination.height() / (float) source.width());
        float rotatedWidth = source.height() * scale;
        float rotatedHeight = source.width() * scale;
        float left = destination.left + (destination.width() - rotatedWidth) * 0.5f;
        float top = destination.top + (destination.height() - rotatedHeight) * 0.5f;
        float positionX = left + source.bottom * scale;
        float positionY = top - source.left * scale;

        // Idempotence: skip when this exact rotation is already on the leash.
        if (!force && sTaskId == taskId && sRotated && leash == sLeash
                && Math.abs(sFinalDtdx - scale) < 0.0001f
                && Math.abs(sFinalDtdy + scale) < 0.0001f
                && Math.abs(sFinalPositionX - positionX) < 0.5f
                && Math.abs(sFinalPositionY - positionY) < 0.5f) {
            return true;
        }

        try (SurfaceControl.Transaction transaction = new SurfaceControl.Transaction()) {
            // SurfaceControl's float overload orders the off-diagonal values as
            // (dtdx, dtdy), producing [dsdx dtdy; dtdx dsdy].
            // Clockwise 90 degrees: x' = -scale*y + H*scale, y' = scale*x.
            if (!setLayerMatrix(transaction, leash, 0f, scale, -scale, 0f)) {
                LSPLogger.w("TaskSurfaceTransformer.rotate90: setMatrix unavailable");
                return false;
            }
            // The matrix is calculated from the fixed-orientation letterbox, not from the
            // full portrait task leash. Crop to that same source or the unused 1440x3200
            // area is rotated as well, bleeds under the side rail and hides edge controls.
            // shrink()/restore() always clear this crop before a portrait presentation.
            boolean cropApplied = setWindowCrop(transaction, leash, source);
            transaction.setPosition(leash, positionX, positionY);
            transaction.apply();
            sFinalDsdx = 0f;
            sFinalDtdx = scale;
            sFinalDtdy = -scale;
            sFinalDsdy = 0f;
            sFinalPositionX = positionX;
            sFinalPositionY = positionY;
            setCurrentPresentation(0f, scale, -scale, 0f, positionX, positionY);
            sLeash = leash;
            sTaskId = taskId;
            sRotated = true;
            String appliedLog = "TaskSurfaceTransformer.rotate90: applied taskId=" + taskId
                    + " source=" + source + " destination=" + destination
                    + " scale=" + scale + " position=" + positionX + "," + positionY
                    + " cropApplied=" + cropApplied
                    + " leash=" + leash;
            if (force) {
                LSPLogger.d(appliedLog);
            } else {
                LSPLogger.i(appliedLog);
            }
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskSurfaceTransformer.rotate90: transaction failed", t);
            return false;
        }
    }

    private static boolean setLayerMatrix(SurfaceControl.Transaction transaction,
            SurfaceControl leash, float dsdx, float dtdx, float dtdy, float dsdy) {
        try {
            Method method = SurfaceControl.Transaction.class.getDeclaredMethod("setMatrix",
                    SurfaceControl.class, float.class, float.class, float.class, float.class);
            method.setAccessible(true);
            method.invoke(transaction, leash, dsdx, dtdx, dtdy, dsdy);
            return true;
        } catch (NoSuchMethodException ignored) {
            // Android 16 also ships a Matrix overload on some framework builds.
        } catch (Throwable t) {
            LSPLogger.w("TaskSurfaceTransformer.setLayerMatrix(float) failed", t);
            return false;
        }

        try {
            Method method = SurfaceControl.Transaction.class.getDeclaredMethod("setMatrix",
                    SurfaceControl.class, Matrix.class, float[].class);
            method.setAccessible(true);
            Matrix matrix = new Matrix();
            matrix.setValues(new float[] {
                    dsdx, dtdx, 0f,
                    dtdy, dsdy, 0f,
                    0f, 0f, 1f
            });
            method.invoke(transaction, leash, matrix, new float[9]);
            return true;
        } catch (Throwable t) {
            LSPLogger.w("TaskSurfaceTransformer.setLayerMatrix(Matrix) failed", t);
            return false;
        }
    }

    /** Sets or clears the leash-local crop across Android SurfaceControl API variants. */
    private static boolean setWindowCrop(SurfaceControl.Transaction transaction,
            SurfaceControl leash, Rect crop) {
        Method method = resolveWindowCropMethod();
        if (method == null) return false;
        try {
            method.invoke(transaction, leash, crop == null ? null : new Rect(crop));
            return true;
        } catch (Throwable t) {
            LSPLogger.w("TaskSurfaceTransformer.setWindowCrop failed crop=" + crop, t);
            return false;
        }
    }

    private static boolean applyPresentation(SurfaceControl leash,
            float dsdx, float dtdx, float dtdy, float dsdy,
            float positionX, float positionY, float alpha) {
        try (SurfaceControl.Transaction transaction = new SurfaceControl.Transaction()) {
            if (!setLayerMatrix(transaction, leash, dsdx, dtdx, dtdy, dsdy)) {
                // A matrix is required for landscape. Portrait can fall back to setScale
                // on framework builds that omit the hidden matrix overload.
                if (Math.abs(dtdx) > 0.0001f || Math.abs(dtdy) > 0.0001f) return false;
                transaction.setScale(leash, dsdx, dsdy);
            }
            transaction.setPosition(leash, positionX, positionY);
            if (!setAlpha(transaction, leash, alpha)) return false;
            transaction.apply();
            return true;
        } catch (Throwable t) {
            LSPLogger.w("TaskSurfaceTransformer.applyPresentation failed: " + t);
            return false;
        }
    }

    private static boolean applyPresentationPair(SurfaceControl first, float[] firstFrame,
            SurfaceControl second, float[] secondFrame) {
        if (first == null || second == null || !first.isValid() || !second.isValid()
                || firstFrame == null || secondFrame == null
                || firstFrame.length < 6 || secondFrame.length < 6) return false;
        try (SurfaceControl.Transaction transaction = new SurfaceControl.Transaction()) {
            if (!applyPresentationToTransaction(transaction, first, firstFrame)
                    || !applyPresentationToTransaction(transaction, second, secondFrame)) {
                return false;
            }
            transaction.apply();
            return true;
        } catch (Throwable t) {
            LSPLogger.w("TaskSurfaceTransformer.applyPresentationPair failed: " + t);
            return false;
        }
    }

    private static boolean applyPresentationToTransaction(SurfaceControl.Transaction transaction,
            SurfaceControl leash, float[] frame) {
        if (!setLayerMatrix(transaction, leash, frame[0], frame[1], frame[2], frame[3])) {
            if (Math.abs(frame[1]) > 0.0001f || Math.abs(frame[2]) > 0.0001f) return false;
            transaction.setScale(leash, frame[0], frame[3]);
        }
        transaction.setPosition(leash, frame[4], frame[5]);
        setWindowCrop(transaction, leash, null);
        return setAlpha(transaction, leash, 1f);
    }

    private static void setCurrentPresentation(float dsdx, float dtdx, float dtdy,
            float dsdy, float positionX, float positionY) {
        sCurrentDsdx = dsdx;
        sCurrentDtdx = dtdx;
        sCurrentDtdy = dtdy;
        sCurrentDsdy = dsdy;
        sCurrentPositionX = positionX;
        sCurrentPositionY = positionY;
    }

    private static void clearSwapState() {
        sSwapSelectedLeash = null;
        sSwapOldLeash = null;
        sSwapSelectedTaskId = -1;
        sSwapOldTaskId = -1;
        sSwapSelectedStart = null;
        sSwapSelectedFinal = null;
        sSwapOldStart = null;
        sSwapOldFinal = null;
        sSwapFinishCallback = null;
    }

    private static boolean setAlpha(SurfaceControl.Transaction transaction,
            SurfaceControl leash, float alpha) {
        Method method = resolveSetAlphaMethod();
        if (method == null) return false;
        try {
            method.invoke(transaction, leash, Math.max(0f, Math.min(1f, alpha)));
            return true;
        } catch (Throwable t) {
            LSPLogger.w("TaskSurfaceTransformer.setAlpha failed: " + t);
            return false;
        }
    }

    private static Method resolveSetAlphaMethod() {
        if (sSetAlphaMethodResolved) return sSetAlphaMethod;
        synchronized (TaskSurfaceTransformer.class) {
            if (sSetAlphaMethodResolved) return sSetAlphaMethod;
            try {
                sSetAlphaMethod = SurfaceControl.Transaction.class.getDeclaredMethod(
                        "setAlpha", SurfaceControl.class, float.class);
                sSetAlphaMethod.setAccessible(true);
                LSPLogger.i("TaskSurfaceTransformer: using Transaction#setAlpha");
            } catch (Throwable t) {
                LSPLogger.w("TaskSurfaceTransformer: no setAlpha API: " + t);
            }
            sSetAlphaMethodResolved = true;
            return sSetAlphaMethod;
        }
    }

    private static Method resolveWindowCropMethod() {
        if (sWindowCropMethodResolved) return sWindowCropMethod;
        synchronized (TaskSurfaceTransformer.class) {
            if (sWindowCropMethodResolved) return sWindowCropMethod;
            String[] names = new String[] { "setWindowCrop", "setCrop" };
            for (String name : names) {
                try {
                    Method method = SurfaceControl.Transaction.class.getDeclaredMethod(name,
                            SurfaceControl.class, Rect.class);
                    method.setAccessible(true);
                    sWindowCropMethod = method;
                    LSPLogger.i("TaskSurfaceTransformer: using Transaction#" + name
                            + " for task crop");
                    break;
                } catch (NoSuchMethodException ignored) {
                } catch (Throwable t) {
                    LSPLogger.w("TaskSurfaceTransformer: cannot access Transaction#" + name,
                            t);
                }
            }
            sWindowCropMethodResolved = true;
            if (sWindowCropMethod == null) {
                LSPLogger.w("TaskSurfaceTransformer: no Rect crop API available");
            }
            return sWindowCropMethod;
        }
    }

    static boolean restore(int taskId) {
        cancelTransition();
        SurfaceControl leash = sTaskId == taskId ? sLeash : null;
        if (leash == null || !leash.isValid()) {
            leash = findTaskLeash(taskId);
        }
        if (leash == null || !leash.isValid()) {
            LSPLogger.w("TaskSurfaceTransformer.restore: no valid leash for taskId=" + taskId);
            clearState();
            return false;
        }

        try (SurfaceControl.Transaction transaction = new SurfaceControl.Transaction()) {
            setWindowCrop(transaction, leash, null);
            setAlpha(transaction, leash, 1f);
            if (!setLayerMatrix(transaction, leash, 1f, 0f, 0f, 1f)) {
                transaction.setScale(leash, 1f, 1f);
            }
            transaction.setPosition(leash, 0f, 0f);
            transaction.apply();
            sRotated = false;
            LSPLogger.i("TaskSurfaceTransformer.restore: restored taskId=" + taskId);
            clearState();
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskSurfaceTransformer.restore: transaction failed", t);
            clearState();
            return false;
        }
    }

    /**
     * Resets a task leash to identity before it is reparented to another display.
     *
     * Unlike {@link #restore(int)}, this never touches the tracked presentation of the
     * current main task. swapMainTaskWithDisplay() neutralizes the outgoing main leash
     * AFTER the incoming task was already transformed; calling restore() there wiped
     * sTaskId/sLeash/sFinal* through clearState(), and the next 120 ms reconcile then
     * re-applied the main transform from scratch (visible flicker + transaction spam).
     */
    static boolean neutralize(int taskId) {
        if (taskId == sTaskId) {
            return restore(taskId);
        }
        SurfaceControl leash = findTaskLeash(taskId);
        if (leash == null || !leash.isValid()) {
            LSPLogger.d("TaskSurfaceTransformer.neutralize: no valid leash taskId=" + taskId);
            return false;
        }
        try (SurfaceControl.Transaction transaction = new SurfaceControl.Transaction()) {
            setWindowCrop(transaction, leash, null);
            setAlpha(transaction, leash, 1f);
            if (!setLayerMatrix(transaction, leash, 1f, 0f, 0f, 1f)) {
                transaction.setScale(leash, 1f, 1f);
            }
            transaction.setPosition(leash, 0f, 0f);
            transaction.apply();
            LSPLogger.i("TaskSurfaceTransformer.neutralize: reset leash taskId=" + taskId);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("TaskSurfaceTransformer.neutralize: transaction failed", t);
            return false;
        }
    }

    private static SurfaceControl findTaskLeash(int taskId) {
        try {
            ClassLoader classLoader = sHostClassLoader;
            if (classLoader == null) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: host classLoader is null");
                return null;
            }
            Class<?> factoryClass = classLoader.loadClass(SYSTEMUI_FACTORY);
            Field initializerField = findField(factoryClass, INITIALIZER_FIELD);
            Object initializer = initializerField.get(null);
            if (initializer == null) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: initializer is null");
                return null;
            }

            Method getWmComponent = findMethod(initializer.getClass(), "getWMComponent");
            Object wmComponent = getWmComponent.invoke(initializer);
            if (wmComponent == null) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: WMComponent is null");
                return null;
            }

            Field providerField = findField(wmComponent.getClass(), ORGANIZER_PROVIDER_FIELD);
            Object provider = providerField.get(wmComponent);
            if (provider == null) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: organizer provider is null");
                return null;
            }

            Method providerGet = findMethod(provider.getClass(), "get");
            Object organizer = providerGet.invoke(provider);
            if (organizer == null) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: organizer is null");
                return null;
            }

            Field tasksField = findField(organizer.getClass(), TASKS_FIELD);
            Object tasksObject = tasksField.get(organizer);
            if (!(tasksObject instanceof SparseArray)) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: unexpected mTasks="
                        + tasksObject);
                return null;
            }

            Object lock = organizer;
            try {
                lock = findField(organizer.getClass(), LOCK_FIELD).get(organizer);
            } catch (Throwable ignored) {
            }

            Object appearedInfo;
            synchronized (lock != null ? lock : organizer) {
                appearedInfo = ((SparseArray<?>) tasksObject).get(taskId);
            }
            if (appearedInfo == null) {
                LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: task absent in organizer, id="
                        + taskId + " taskCount=" + ((SparseArray<?>) tasksObject).size());
                return null;
            }

            Method getLeash = findMethod(appearedInfo.getClass(), "getLeash");
            Object leash = getLeash.invoke(appearedInfo);
            if (leash instanceof SurfaceControl) {
                LSPLogger.d("TaskSurfaceTransformer.findTaskLeash: found taskId=" + taskId
                        + " organizer=" + organizer.getClass().getName());
                return (SurfaceControl) leash;
            }
            LSPLogger.w("TaskSurfaceTransformer.findTaskLeash: unexpected leash=" + leash);
        } catch (Throwable t) {
            LSPLogger.e("TaskSurfaceTransformer.findTaskLeash: failed", t);
        }
        return null;
    }

    private static Field findField(Class<?> type, String name) throws NoSuchFieldException {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                Field field = current.getDeclaredField(name);
                field.setAccessible(true);
                return field;
            } catch (NoSuchFieldException ignored) {
                current = current.getSuperclass();
            }
        }
        throw new NoSuchFieldException(type.getName() + "." + name);
    }

    private static Method findMethod(Class<?> type, String name) throws NoSuchMethodException {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            for (Method method : current.getDeclaredMethods()) {
                if (name.equals(method.getName()) && method.getParameterTypes().length == 0) {
                    method.setAccessible(true);
                    return method;
                }
            }
            current = current.getSuperclass();
        }
        throw new NoSuchMethodException(type.getName() + "#" + name + "()");
    }

    private static void clearState() {
        sLeash = null;
        sTaskId = -1;
        sRotated = false;
        sFinalDsdx = 1f;
        sFinalDtdx = 0f;
        sFinalDtdy = 0f;
        sFinalDsdy = 1f;
        sFinalPositionX = 0f;
        sFinalPositionY = 0f;
        setCurrentPresentation(1f, 0f, 0f, 1f, 0f, 0f);
    }
}
