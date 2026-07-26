package com.hyper.sidebar.lsp;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.Configuration;

import java.lang.reflect.Method;

import io.github.libxposed.api.XposedInterface;

/** Prevents HyperOS from recreating an Activity while its task crosses a OneStep display. */
public final class ActivityRelaunchPolicyHooker implements XposedInterface.Hooker {
    private final Object mForceNotRelaunch;

    public ActivityRelaunchPolicyHooker(Object forceNotRelaunch) {
        mForceNotRelaunch = forceNotRelaunch;
    }

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object oldConfig = chain.getArg(0);
        Object newConfig = chain.getArg(1);
        Object activityRecord = readActivityRecord(chain.getThisObject());
        if (oldConfig instanceof Configuration && newConfig instanceof Configuration) {
            int oldDisplayId = getDisplayId((Configuration) oldConfig);
            int newDisplayId = getDisplayId((Configuration) newConfig);

            if (isOneStepDisplayTransfer(oldDisplayId, newDisplayId)) {
                LSPLogger.i("ActivityRelaunchPolicyHooker: suppress OneStep display relaunch oldDisplay="
                        + oldDisplayId + " newDisplay=" + newDisplayId
                        + " activity=" + RequestedOrientationHooker.describeActivityRecord(activityRecord)
                        + " changes=" + chain.getArg(2));
                return mForceNotRelaunch;
            }

            // HyperOS also relaunches records when only their fixed orientation changes on
            // display 0. OneStep owns the presentation transform, so recreating an Activity
            // here only destroys its state and produces a black frame. Apply this to every
            // top Activity while OneStep is active; app/package checks are not a compatibility
            // strategy.
            if (shouldSuppressOneStepOrientationRelaunch(activityRecord)) {
                int requested = RequestedOrientationHooker.readRequestedOrientation(
                        activityRecord);
                LSPLogger.i("ActivityRelaunchPolicyHooker: suppress orientation relaunch "
                        + RequestedOrientationHooker.describeActivityRecord(activityRecord)
                        + " requested=" + requested + " changes=" + chain.getArg(2));
                return mForceNotRelaunch;
            }
        }
        return chain.proceed();
    }

    private static boolean isOneStepDisplayTransfer(int oldDisplayId, int newDisplayId) {
        if (oldDisplayId < 0 || newDisplayId < 0 || oldDisplayId == newDisplayId) {
            return false;
        }
        return oldDisplayId == 0 && SystemServerRelaunchHooker.isOneStepDisplay(newDisplayId)
                || newDisplayId == 0 && SystemServerRelaunchHooker.isOneStepDisplay(oldDisplayId);
    }

    private static boolean shouldSuppressOneStepOrientationRelaunch(Object activityRecord) {
        if (activityRecord == null || !RequestedOrientationHooker.isTopActivityRecord(
                activityRecord)) {
            return false;
        }
        ComponentName component = readComponent(activityRecord);
        if (component == null) {
            return false;
        }
        int requested = RequestedOrientationHooker.readRequestedOrientation(activityRecord);
        if (!RequestedOrientationHooker.isLandscape(requested)
                && !RequestedOrientationHooker.isPortrait(requested)) {
            return false;
        }
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        OneStepStateBridge.State state = OneStepStateBridge.read(context);
        return state.canTransform();
    }

    private static ComponentName readComponent(Object activityRecord) {
        try {
            Object value = RequestedOrientationHooker.readField(activityRecord,
                    "mActivityComponent");
            return value instanceof ComponentName ? (ComponentName) value : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Object readActivityRecord(Object activityRecordImpl) {
        if (activityRecordImpl == null) return null;
        try {
            return RequestedOrientationHooker.readField(activityRecordImpl, "mAr");
        } catch (Throwable t) {
            LSPLogger.d("ActivityRelaunchPolicyHooker: ActivityRecord lookup failed: " + t);
            return null;
        }
    }

    private static int getDisplayId(Configuration config) {
        try {
            Method getExtraConfig = findMethod(config.getClass(), "getExtraConfig");
            if (getExtraConfig == null) return -1;
            getExtraConfig.setAccessible(true);
            Object extraConfig = getExtraConfig.invoke(config);
            if (extraConfig == null) return -1;
            Method getDisplayId = findMethod(extraConfig.getClass(), "getDisplayId");
            if (getDisplayId == null) return -1;
            getDisplayId.setAccessible(true);
            Object result = getDisplayId.invoke(extraConfig);
            return result instanceof Integer ? (Integer) result : -1;
        } catch (Throwable t) {
            LSPLogger.d("ActivityRelaunchPolicyHooker: display id lookup failed: " + t);
            return -1;
        }
    }

    private static Method findMethod(Class<?> type, String name) {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                return current.getDeclaredMethod(name);
            } catch (NoSuchMethodException ignored) {
                current = current.getSuperclass();
            }
        }
        return null;
    }
}
