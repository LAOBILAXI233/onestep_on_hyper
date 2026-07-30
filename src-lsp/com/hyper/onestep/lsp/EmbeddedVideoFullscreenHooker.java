package com.hyper.onestep.lsp;
import android.content.ComponentName;
import android.content.Context;
import io.github.libxposed.api.XposedInterface;
// 阻止 HyperOS 把哔哩哔哩内嵌视频重置为竖屏
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
            return Boolean.FALSE;
        }
        return chain.proceed();
    }
    private static boolean shouldKeepLandscape(Object activityRecord, int orientation,
            Object event) {
        if (RequestedOrientationHooker.isPortrait(orientation)
                || !RequestedOrientationHooker.isLandscape(orientation)
                        && "requestedOrientation".equals(String.valueOf(event))) {
            return false;
        }
        if (RequestedOrientationHooker.isLandscape(orientation)) {
            int live = RequestedOrientationHooker.readRequestedOrientation(activityRecord);
            if (RequestedOrientationHooker.isPortrait(live)) {
                LSPLogger.i("EmbeddedVideoFullscreenHooker: allow HyperOS reset,"
                        + " live already portrait=" + live + " event=" + event);
                return false;
            }
            return true;
        }
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
