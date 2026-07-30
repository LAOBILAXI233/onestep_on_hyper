package com.hyper.onestep.lsp;

import android.content.Context;
import android.graphics.Rect;

import io.github.libxposed.api.XposedInterface;

/** Publishes the actual WMS fixed-orientation letterbox bounds for each task. */
public final class FixedOrientationBoundsHooker implements XposedInterface.Hooker {
    private final boolean mReset;

    public FixedOrientationBoundsHooker(boolean reset) {
        mReset = reset;
    }

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object policy = chain.getThisObject();
        Object activityRecord = null;
        try {
            activityRecord = RequestedOrientationHooker.readField(policy, "mActivityRecord");
        } catch (Throwable t) {
            LSPLogger.d("FixedOrientationBoundsHooker: activity lookup failed: " + t);
        }

        // Align the OneStep virtual-display letterbox with the physical panel's.
        // Display 0 letterboxes a landscape task at (0, statusBar, w, statusBar+h)
        // appBounds -> Configuration change -> apps exit their fullscreen player /
        // re-render. Forcing the identical rect makes the move a zero-diff no-op.
        if (!mReset) {
            alignVirtualDisplayLetterbox(chain.getArg(0), activityRecord);
        }

        Object result = chain.proceed();
        // reset() fires whenever WMS re-evaluates aspect-ratio policy (task focus
        // change, display move, etc.) even while the task stays landscape. Evidence
        // 2026-07-23 21:17: TaskSwitcherView's texture-transform log alternated
        // between the real published rect (0,169-1440,817) and the (0,0-1440,648)
        // fallback every few reconcile ticks — reset() was clearing the published
        // bounds during that gap and the consumer briefly fell back to a wrong
        // letterbox, cropping the frame to a thin strip. Only setFixedLetterboxBounds
        // (mReset=false) with a real, non-empty Rect should update the published
        // value; reset() must leave the last known-good bounds alone so a reconcile
        // tick in between the two calls does not read a false "no bounds published"
        // state and mis-crop the slot's TextureView matrix.
        if (mReset) return result;
        Integer taskId = RequestedOrientationHooker.findTaskId(activityRecord);
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        if (taskId == null || context == null
                || !RequestedOrientationHooker.isTopActivityRecord(activityRecord)) {
            LSPLogger.d("FixedOrientationBoundsHooker: skip non-top task=" + taskId
                    + " activity=" + activityRecord);
            return result;
        }

        Object value = chain.getArg(0);
        Rect bounds = value instanceof Rect && !((Rect) value).isEmpty()
                ? new Rect((Rect) value) : null;
        if (bounds == null) {
            // A real setFixedLetterboxBounds call with an empty rect still means
            // "no letterbox published yet" — leave the prior value in place rather
            // than clearing it, for the same reconcile-gap reason as reset() above.
            LSPLogger.d("FixedOrientationBoundsHooker: empty bounds, keep prior task="
                    + taskId);
            return result;
        }
        OneStepStateBridge.setTaskFixedLetterboxBounds(context, taskId, bounds);
        LSPLogger.i("FixedOrientationBoundsHooker: taskId=" + taskId
                + " bounds=" + bounds + " reset=" + mReset
                + " " + RequestedOrientationHooker.describeActivityRecord(activityRecord));
        return result;
    }

    private void alignVirtualDisplayLetterbox(Object arg, Object activityRecord) {
        if (!(arg instanceof Rect)) return;
        Rect rect = (Rect) arg;
        if (rect.isEmpty() || rect.width() <= rect.height()) return;
        int displayId = RequestedOrientationHooker.findDisplayId(activityRecord);
        if (displayId <= 0 || !SystemServerRelaunchHooker.isOneStepDisplay(displayId)) {
            return;
        }
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        int topInset = 0;
        if (context != null) {
            try {
                int resourceId = context.getResources().getIdentifier(
                        "status_bar_height", "dimen", "android");
                if (resourceId != 0) {
                    topInset = context.getResources().getDimensionPixelSize(resourceId);
                }
            } catch (Throwable ignored) {
            }
        }
        if (topInset <= 0 || rect.top == topInset) return;
        LSPLogger.i("FixedOrientationBoundsHooker: align VD letterbox top "
                + rect.top + " -> " + topInset
                + " " + RequestedOrientationHooker.describeActivityRecord(activityRecord));
        rect.offsetTo(rect.left, topInset);
    }
}
