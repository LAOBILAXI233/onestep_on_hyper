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
        if (!mReset) {
            alignVirtualDisplayLetterbox(chain.getArg(0), activityRecord);
        }
        Object result = chain.proceed();
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
