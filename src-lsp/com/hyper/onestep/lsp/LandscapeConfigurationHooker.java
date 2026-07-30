package com.hyper.onestep.lsp;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import io.github.libxposed.api.XposedInterface;
// 为顶层横屏 Activity 计算并应用 OneStep 横屏配置
public final class LandscapeConfigurationHooker implements XposedInterface.Hooker {
    private static volatile String sLastTrace;
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object result = chain.proceed();
        Object activityRecord = chain.getThisObject();
        if (!RequestedOrientationHooker.isTopActivityRecord(activityRecord)) return result;
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        OneStepStateBridge.State state = OneStepStateBridge.read(context);
        if (!state.canTransform() || findDisplayId(activityRecord) != 0) return result;
        int requestedOrientation = findRequestedOrientation(activityRecord);
        if (!RequestedOrientationHooker.isLandscape(requestedOrientation)) return result;
        String trace = RequestedOrientationHooker.describeActivityRecord(activityRecord)
                + " requested=" + requestedOrientation
                + " state=" + state.screenWidth + "x" + state.screenHeight;
        if (!trace.equals(sLastTrace)) {
            sLastTrace = trace;
            LSPLogger.i("LandscapeConfigurationHooker.resolve: " + trace);
        }
        Object parentArg = chain.getArg(0);
        if (!(parentArg instanceof Configuration)) return result;
        Configuration parent = (Configuration) parentArg;
        int physicalDensity = parent.densityDpi;
        if (physicalDensity <= 0 && context != null) {
            physicalDensity = context.getResources().getDisplayMetrics().densityDpi;
        }
        if (physicalDensity <= 0 || state.screenWidth <= 0 || state.screenHeight <= 0) {
            return result;
        }
        Object value = RequestedOrientationHooker.readField(
                activityRecord, "mResolvedOverrideConfiguration");
        if (!(value instanceof Configuration)) return result;
        Configuration resolved = (Configuration) value;
        Integer taskId = RequestedOrientationHooker.findTaskId(activityRecord);
        Rect source = OneStepStateBridge.getTaskFixedLetterboxBounds(context,
                taskId == null ? -1 : taskId);
        ConfigurationGeometry geometry = applyLandscapeConfiguration(resolved, state,
                physicalDensity, source, "resolve");
        if (geometry.changed) {
            LSPLogger.i("LandscapeConfigurationHooker: taskId="
                    + taskId
                    + " density=" + geometry.targetDensity + " logical="
                    + geometry.targetWidthDp + "x" + geometry.targetHeightDp + "dp"
                    + " source=" + geometry.source + " scale=" + geometry.scale
                    + " physicalDensity=" + physicalDensity);
        }
        return result;
    }
    static ConfigurationGeometry applyLandscapeConfiguration(Configuration configuration,
            OneStepStateBridge.State state, int physicalDensity, Rect preferredSource,
            String phase) {
        if (configuration == null || state == null || physicalDensity <= 0
                || state.screenWidth <= state.sidebarWidth
                || state.screenHeight <= state.topHeight) {
            return ConfigurationGeometry.invalid();
        }
        Rect source = preferredSource == null ? null : new Rect(preferredSource);
        if (source == null || source.width() <= 0 || source.height() <= 0
                || source.right > state.screenWidth || source.bottom > state.screenHeight) {
            int sourceWidth = state.screenWidth;
            int sourceHeight = Math.max(1, Math.round(
                    sourceWidth * sourceWidth / (float) state.screenHeight));
            source = new Rect(0, 0, sourceWidth, sourceHeight);
        }
        int destinationWidth = state.screenWidth - state.sidebarWidth;
        int destinationHeight = state.screenHeight - state.topHeight;
        float scale = Math.min(destinationWidth / (float) source.height(),
                destinationHeight / (float) source.width());
        if (!(scale > 0f) || Float.isNaN(scale) || Float.isInfinite(scale)) {
            return ConfigurationGeometry.invalid();
        }
        float referenceScale = Math.min(
                state.screenHeight / (float) source.width(),
                state.screenWidth / (float) source.height());
        if (!(referenceScale > 0f) || Float.isNaN(referenceScale)
                || Float.isInfinite(referenceScale)) {
            return ConfigurationGeometry.invalid();
        }
        int targetDensity = Math.max(1, Math.round(physicalDensity / referenceScale));
        int targetWidthDp = Math.max(1, Math.round(source.width() * 160f / targetDensity));
        int targetHeightDp = Math.max(1, Math.round(source.height() * 160f / targetDensity));
        int targetSmallestDp = Math.min(targetWidthDp, targetHeightDp);
        boolean changed = configuration.densityDpi != targetDensity
                || configuration.screenWidthDp != targetWidthDp
                || configuration.screenHeightDp != targetHeightDp
                || configuration.smallestScreenWidthDp != targetSmallestDp
                || configuration.orientation != Configuration.ORIENTATION_LANDSCAPE;
        configuration.densityDpi = targetDensity;
        configuration.screenWidthDp = targetWidthDp;
        configuration.screenHeightDp = targetHeightDp;
        configuration.smallestScreenWidthDp = targetSmallestDp;
        writeCompatDp(configuration, "compatScreenWidthDp", targetWidthDp);
        writeCompatDp(configuration, "compatScreenHeightDp", targetHeightDp);
        writeCompatDp(configuration, "compatSmallestScreenWidthDp", targetSmallestDp);
        configuration.orientation = Configuration.ORIENTATION_LANDSCAPE;
        configuration.screenLayout = (configuration.screenLayout
                & ~Configuration.SCREENLAYOUT_SIZE_MASK)
                | Configuration.SCREENLAYOUT_SIZE_NORMAL;
        configuration.screenLayout = (configuration.screenLayout
                & ~Configuration.SCREENLAYOUT_LONG_MASK)
                | Configuration.SCREENLAYOUT_LONG_YES;
        if (changed && phase != null) {
            LSPLogger.d("LandscapeConfigurationHooker." + phase + ": density="
                    + targetDensity + " logical=" + targetWidthDp + "x" + targetHeightDp
                    + "dp source=" + source + " destination=" + destinationWidth + "x"
                    + destinationHeight + " surfaceScale=" + scale
                    + " referenceScale=" + referenceScale);
        }
        return new ConfigurationGeometry(true, changed, targetDensity, targetWidthDp,
                targetHeightDp, source, scale, referenceScale);
    }
    static int physicalDensity(Context context, Configuration configuration) {
        int density = 0;
        if (context != null) {
            try {
                density = context.getResources().getDisplayMetrics().densityDpi;
            } catch (Throwable ignored) {
            }
        }
        if (density <= 0 && configuration != null) density = configuration.densityDpi;
        return density;
    }
    static final class ConfigurationGeometry {
        final boolean valid;
        final boolean changed;
        final int targetDensity;
        final int targetWidthDp;
        final int targetHeightDp;
        final Rect source;
        final float scale;
        final float referenceScale;
        ConfigurationGeometry(boolean valid, boolean changed, int targetDensity,
                int targetWidthDp, int targetHeightDp, Rect source, float scale,
                float referenceScale) {
            this.valid = valid;
            this.changed = changed;
            this.targetDensity = targetDensity;
            this.targetWidthDp = targetWidthDp;
            this.targetHeightDp = targetHeightDp;
            this.source = source;
            this.scale = scale;
            this.referenceScale = referenceScale;
        }
        static ConfigurationGeometry invalid() {
            return new ConfigurationGeometry(false, false, 0, 0, 0, null, 0f, 0f);
        }
    }
    private static int findDisplayId(Object activityRecord) {
        try {
            Object value = findMethod(activityRecord.getClass(), "getDisplayId")
                    .invoke(activityRecord);
            return value instanceof Integer ? (Integer) value : -1;
        } catch (Throwable t) {
            LSPLogger.d("LandscapeConfigurationHooker.findDisplayId: " + t);
            return -1;
        }
    }
    private static int findRequestedOrientation(Object activityRecord) {
        try {
            Object value = findMethod(activityRecord.getClass(), "getRequestedOrientation")
                    .invoke(activityRecord);
            return value instanceof Integer ? (Integer) value
                    : android.content.pm.ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        } catch (Throwable t) {
            LSPLogger.d("LandscapeConfigurationHooker.findRequestedOrientation: " + t);
            return android.content.pm.ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        }
    }
    private static Method findMethod(Class<?> type, String name)
            throws NoSuchMethodException {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                Method method = current.getDeclaredMethod(name);
                method.setAccessible(true);
                return method;
            } catch (NoSuchMethodException ignored) {
                current = current.getSuperclass();
            }
        }
        throw new NoSuchMethodException(type.getName() + "#" + name + "()");
    }
    private static void writeCompatDp(Configuration configuration, String name, int value) {
        try {
            Field field = configuration.getClass().getDeclaredField(name);
            field.setAccessible(true);
            field.setInt(configuration, value);
        } catch (NoSuchFieldException ignored) {
        } catch (Throwable t) {
            LSPLogger.d("LandscapeConfigurationHooker.writeCompatDp: " + name + " " + t);
        }
    }
}
