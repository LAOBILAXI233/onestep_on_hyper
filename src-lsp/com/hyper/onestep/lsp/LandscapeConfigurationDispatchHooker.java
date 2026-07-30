package com.hyper.onestep.lsp;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;

import io.github.libxposed.api.XposedInterface;

/**
 * Last-mile guard for the Configuration object placed in the client transaction.
 *
 * HyperOS builds the merged override configuration before ActivityRecord's private
 * configuration dispatch helpers run.  A later display/embedding pass can put the physical
 * 600dpi value back into that object even though resolveOverrideConfiguration() logged the
 * corrected value.  Mutating the exact argument consumed by ActivityConfigurationChangeItem /
 * MoveToDisplayItem makes the resource scale observable at the app boundary.
 */
public final class LandscapeConfigurationDispatchHooker implements XposedInterface.Hooker {
    private final boolean mMovedToDisplay;

    public LandscapeConfigurationDispatchHooker(boolean movedToDisplay) {
        mMovedToDisplay = movedToDisplay;
    }

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object activityRecord = chain.getThisObject();
        Configuration configuration = findConfiguration(chain);
        int targetDisplay = mMovedToDisplay ? readInt(chain.getArg(0), -1)
                : RequestedOrientationHooker.findDisplayId(activityRecord);
        if (configuration != null && targetDisplay == 0 && shouldTransform(activityRecord)) {
            Context context = RequestedOrientationHooker.findContext(activityRecord);
            OneStepStateBridge.State state = OneStepStateBridge.read(context);
            int taskId = valueOrDefault(RequestedOrientationHooker.findTaskId(activityRecord), -1);
            Rect source = OneStepStateBridge.getTaskFixedLetterboxBounds(context, taskId);
            int physicalDensity = LandscapeConfigurationHooker.physicalDensity(
                    context, configuration);
            LandscapeConfigurationHooker.ConfigurationGeometry geometry =
                    LandscapeConfigurationHooker.applyLandscapeConfiguration(
                            configuration, state, physicalDensity, source,
                            mMovedToDisplay ? "moveDispatch" : "configDispatch");
            if (geometry.valid) {
                LSPLogger.i("LandscapeConfigurationDispatchHooker: taskId=" + taskId
                        + " phase=" + (mMovedToDisplay ? "move" : "config")
                        + " display=" + targetDisplay + " finalDensity="
                        + configuration.densityDpi + " finalLogical="
                        + configuration.screenWidthDp + "x" + configuration.screenHeightDp
                        + "dp source=" + geometry.source
                        + " config=" + configuration);
            }
        }
        return chain.proceed();
    }

    private static Configuration findConfiguration(XposedInterface.Chain chain) {
        int index = !chain.getArgs().isEmpty() && chain.getArg(0) instanceof Configuration ? 0 : 1;
        Object value = chain.getArgs().size() > index ? chain.getArg(index) : null;
        return value instanceof Configuration ? (Configuration) value : null;
    }

    private static boolean shouldTransform(Object activityRecord) {
        if (!RequestedOrientationHooker.isTopActivityRecord(activityRecord)) return false;
        int orientation = RequestedOrientationHooker.readRequestedOrientation(activityRecord);
        if (!RequestedOrientationHooker.isLandscape(orientation)) return false;
        OneStepStateBridge.State state = OneStepStateBridge.read(
                RequestedOrientationHooker.findContext(activityRecord));
        return state.canTransform();
    }

    private static int valueOrDefault(Integer value, int fallback) {
        return value == null ? fallback : value;
    }

    private static int readInt(Object value, int fallback) {
        return value instanceof Integer ? (Integer) value : fallback;
    }
}
