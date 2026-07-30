package com.hyper.onestep.lsp;

import android.content.ComponentName;
import android.content.Context;

import io.github.libxposed.api.XposedInterface;

/**
 * Keeps HyperOS' embedded-video policy from tearing down a OneStep landscape task.
 *
 * HyperOS calls MiuiEmbeddingWindowService#resizeSpecialVideoInEmbedded, which delegates to
 * MiuiActivityEmbeddingController#resizeSpecialVideoInEmbedded, from the ActivityRecord
 * display/orientation path.  When the task is not one of MIUI's
 * embedded-video layouts, the implementation exits the video fullscreen state and
 * clears its bounds.  That reset races the OneStep orientation hook and produces
 * the observed black frame followed by a portrait request from Bilibili.
 *
 * This is deliberately narrow: only Bilibili, only the known player Activity, only
 * a fixed landscape request, and only while OneStep is currently active.  Portrait
 * requests (normal fullscreen exit) always continue through the ROM implementation.
 */
public final class EmbeddedVideoFullscreenHooker implements XposedInterface.Hooker {
    private static final String TARGET_PACKAGE = "tv.danmaku.bili";
    private static final String TARGET_ACTIVITY =
            "com.bilibili.ship.theseus.detail.UnitedBizDetailsActivity";

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object activityRecord = chain.getArg(0);
        Object orientation = chain.getArg(1);
        Object event = chain.getArg(2);
        if (orientation instanceof Integer
                && shouldKeepLandscape(activityRecord, (Integer) orientation, event)
                && shouldKeepLandscape(activityRecord)) {
            LSPLogger.i("EmbeddedVideoFullscreenHooker: suppress HyperOS reset"
                    + " orientation=" + orientation
                    + " event=" + event + " "
                    + RequestedOrientationHooker.describeActivityRecord(activityRecord));
            // The caller currently ignores this boolean.  Returning false preserves the
            // method's "no resize" meaning without entering MIUI's own fullscreen state.
            return Boolean.FALSE;
        }
        return chain.proceed();
    }

    private static boolean shouldKeepLandscape(Object activityRecord, int orientation,
            Object event) {
        // Portrait / unspecified must always reach HyperOS.  Evidence: after the player exits
        // fullscreen, Bilibili publishes orientation=1; displayChanged can still arrive with
        // a stale landscape origin and used to keep suppressing HyperOS cleanup, which left
        // the task stuck under OneStep's rotate90 path.
        if (RequestedOrientationHooker.isPortrait(orientation)
                || !RequestedOrientationHooker.isLandscape(orientation)
                        && "requestedOrientation".equals(String.valueOf(event))) {
            return false;
        }
        if (RequestedOrientationHooker.isLandscape(orientation)) {
            // preHandleSetRequestedOrientation invokes this method before ActivityRecord has
            // committed the new value, so the argument is authoritative for this event.
            // Only suppress while the live record is still landscape-top; once the app has
            // already flipped to portrait, let HyperOS run its reset.
            int live = RequestedOrientationHooker.readRequestedOrientation(activityRecord);
            if (RequestedOrientationHooker.isPortrait(live)) {
                LSPLogger.i("EmbeddedVideoFullscreenHooker: allow HyperOS reset,"
                        + " live already portrait=" + live + " event=" + event);
                return false;
            }
            return true;
        }
        // Display/projection callbacks carry ActivityRecordImpl.mOriginRequestOrientation,
        // which can be stale after the user has exited video fullscreen.  Do not suppress a
        // reset in that case; only preserve while the record is still landscape.
        return event != null && !"requestedOrientation".equals(String.valueOf(event))
                && RequestedOrientationHooker.isLandscape(
                        RequestedOrientationHooker.readRequestedOrientation(activityRecord));
    }

    private static boolean shouldKeepLandscape(Object activityRecord) {
        if (activityRecord == null || !RequestedOrientationHooker.isTopActivityRecord(
                activityRecord)) {
            return false;
        }
        ComponentName component = readComponent(activityRecord);
        if (component == null || !TARGET_PACKAGE.equals(component.getPackageName())
                || !TARGET_ACTIVITY.equals(component.getClassName())) {
            return false;
        }
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        OneStepStateBridge.State state = OneStepStateBridge.read(context);
        return state.canTransform();
    }

    private static ComponentName readComponent(Object activityRecord) {
        try {
            Object value = RequestedOrientationHooker.readField(
                    activityRecord, "mActivityComponent");
            return value instanceof ComponentName ? (ComponentName) value : null;
        } catch (Throwable ignored) {
            return null;
        }
    }
}
