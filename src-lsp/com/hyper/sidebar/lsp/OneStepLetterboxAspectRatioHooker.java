package com.hyper.sidebar.lsp;

import android.content.Context;

import io.github.libxposed.api.XposedInterface;

/** Uses the physical display ratio for fixed-orientation apps while OneStep is active. */
public final class OneStepLetterboxAspectRatioHooker implements XposedInterface.Hooker {
    private static volatile Context sContext;
    private static volatile boolean sLoggedEnabled;

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object activityRecord = null;
        try {
            activityRecord = RequestedOrientationHooker.readField(
                    chain.getThisObject(), "mActivityRecord");
            RequestedOrientationHooker.publishCurrent(activityRecord);
        } catch (Throwable t) {
            LSPLogger.d("OneStepLetterboxAspectRatioHooker: activity lookup failed: " + t);
        }

        Context context = sContext;
        if (context == null) {
            context = findContext(activityRecord);
            if (context != null) sContext = context;
        }

        OneStepStateBridge.State state = OneStepStateBridge.read(context);
        if (state.canTransform() && state.screenHeight > state.screenWidth) {
            float aspectRatio = state.screenHeight / (float) state.screenWidth;
            if (!sLoggedEnabled) {
                sLoggedEnabled = true;
                LSPLogger.i("OneStepLetterboxAspectRatioHooker: override=" + aspectRatio);
            }
            return aspectRatio;
        }
        sLoggedEnabled = false;
        return chain.proceed();
    }

    private static Context findContext(Object target) {
        if (target == null) return null;
        try {
            Object service = RequestedOrientationHooker.readField(target, "mAtmService");
            Object value = RequestedOrientationHooker.readField(service, "mContext");
            return value instanceof Context ? (Context) value : null;
        } catch (Throwable t) {
            LSPLogger.d("OneStepLetterboxAspectRatioHooker: context lookup failed: " + t);
            return null;
        }
    }
}
