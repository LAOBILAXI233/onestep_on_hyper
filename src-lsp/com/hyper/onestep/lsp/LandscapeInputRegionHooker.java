package com.hyper.onestep.lsp;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;

import io.github.libxposed.api.XposedInterface;

/** Keeps a rotated landscape task's modal input region inside its actual window surface. */
public final class LandscapeInputRegionHooker implements XposedInterface.Hooker {
    private static volatile String sLastTrace;

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object result = chain.proceed();
        Object regionArg = chain.getArg(0);
        if (!(regionArg instanceof Region)) return result;

        Object windowState = chain.getThisObject();
        Object activityRecord;
        try {
            activityRecord = RequestedOrientationHooker.readField(
                    windowState, "mActivityRecord");
        } catch (Throwable ignored) {
            return result;
        }
        Integer taskId = RequestedOrientationHooker.findTaskId(activityRecord);
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        if (taskId == null || context == null) return result;

        OneStepStateBridge.State state = OneStepStateBridge.read(context);
        if (!state.canTransform()) return result;

        Integer requested = OneStepStateBridge.getTaskRequestedOrientation(context, taskId);
        int orientation = requested != null ? requested
                : RequestedOrientationHooker.readRequestedOrientation(activityRecord);
        if (!RequestedOrientationHooker.isLandscape(orientation)) return result;

        Rect frame = findWindowFrame(windowState);
        if (frame == null || frame.width() <= 0 || frame.height() <= 0) return result;

        Region region = (Region) regionArg;
        Rect before = new Rect();
        region.getBounds(before);
        Rect localWindowBounds = new Rect(0, 0, frame.width(), frame.height());
        region.op(localWindowBounds, Region.Op.INTERSECT);
        Rect after = new Rect();
        region.getBounds(after);

        if (!before.equals(after)) {
            String trace = "taskId=" + taskId + " orientation=" + orientation
                    + " frame=" + frame + " before=" + before + " after=" + after;
            if (!trace.equals(sLastTrace)) {
                sLastTrace = trace;
                LSPLogger.i("LandscapeInputRegionHooker: clipped " + trace);
            }
        }
        return result;
    }

    private static Rect findWindowFrame(Object windowState) {
        try {
            Object frames = RequestedOrientationHooker.readField(windowState, "mWindowFrames");
            Object frame = RequestedOrientationHooker.readField(frames, "mFrame");
            return frame instanceof Rect ? new Rect((Rect) frame) : null;
        } catch (Throwable t) {
            LSPLogger.d("LandscapeInputRegionHooker.findWindowFrame: " + t);
            return null;
        }
    }
}
