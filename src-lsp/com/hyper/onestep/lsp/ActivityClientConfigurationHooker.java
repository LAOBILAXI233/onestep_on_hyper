package com.hyper.onestep.lsp;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import io.github.libxposed.api.XposedInterface;

/**
 * Forces the landscape OneStep resource scale on the app process.
 *
 * system_server already rewrites ActivityRecord's override to 270dpi for the 1440x648
 * letterbox (see LandscapeConfigurationHooker). Android 16 ResourcesManager can still
 * rebase that override against display 0's physical 600dpi before the Activity sees it.
 * Evidence: rotate90 with letterbox source scales the leash by ~1.667 while the client
 * kept 600dpi → UI draws at full physical control size and looks huge after the upscale.
 *
 * Mutate the Configuration argument before proceed, then re-apply DisplayMetrics after
 * the framework rebases, so Bilibili (and other scoped apps) actually receive 270dpi.
 */
public final class ActivityClientConfigurationHooker implements XposedInterface.Hooker {
    private static volatile String sLastSnapshot;

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object record = chain.getArgs().isEmpty() ? null : chain.getArg(0);
        Configuration incoming = chain.getArgs().size() > 1
                && chain.getArg(1) instanceof Configuration
                ? (Configuration) chain.getArg(1) : null;
        int displayId = chain.getArgs().size() > 2 && chain.getArg(2) instanceof Integer
                ? (Integer) chain.getArg(2) : -1;

        Activity activity = findActivity(record);
        LandscapeConfigurationHooker.ConfigurationGeometry patched =
                patchIncomingConfiguration(activity, incoming, displayId);

        Object result = chain.proceed();

        // Framework may have rebased metrics from the physical display after proceed.
        // Re-apply density onto the live Resources objects the app actually reads.
        if (patched != null && patched.valid && activity != null) {
            forceResourcesDensity(activity, patched);
        }

        Application application = activity == null ? currentApplication()
                : activity.getApplication();
        String snapshot = "ActivityClientConfigurationHooker: display=" + displayId
                + " patched=" + (patched != null && patched.valid
                ? ("density=" + patched.targetDensity
                        + " logical=" + patched.targetWidthDp + "x" + patched.targetHeightDp
                        + "dp scale=" + patched.scale)
                : "false")
                + " incoming=" + incoming
                + " activity=" + (activity == null ? "null"
                        : activity.getClass().getName() + "@"
                                + Integer.toHexString(System.identityHashCode(activity)))
                + " activityDisplay=" + readActivityDisplayId(activity)
                + " window=" + describeWindow(activity)
                + "\n  activityRes=" + describeResources(
                        activity == null ? null : activity.getResources())
                + "\n  applicationRes=" + describeResources(
                        application == null ? null : application.getResources())
                + "\n  systemRes=" + describeResources(Resources.getSystem());
        if (!snapshot.equals(sLastSnapshot)) {
            sLastSnapshot = snapshot;
            LSPLogger.i(snapshot);
        }
        return result;
    }

    private static LandscapeConfigurationHooker.ConfigurationGeometry patchIncomingConfiguration(
            Activity activity, Configuration incoming, int displayId) {
        if (incoming == null || activity == null) return null;
        // Only rewrite the default-display OneStep main presentation. Virtual-display
        // previews already use a full 3200x1440@600 landscape surface and must keep it.
        int activityDisplay = readActivityDisplayId(activity);
        if (displayId > 0 || activityDisplay > 0) return null;

        OneStepStateBridge.State state = OneStepStateBridge.read(activity);
        if (!state.canTransform()) return null;

        int taskId = readTaskId(activity);
        if (!isLandscapeMainCandidate(activity, incoming, taskId)) return null;

        Rect source = OneStepStateBridge.getTaskFixedLetterboxBounds(activity, taskId);
        // Must use the physical panel density, not activity Resources after we forced 270dpi.
        // Otherwise the second config pass becomes 270/referenceScale ≈ 121dpi and collapses.
        int physicalDensity = readPhysicalDisplayDensity(activity);
        if (physicalDensity <= 0) {
            physicalDensity = LandscapeConfigurationHooker.physicalDensity(activity, incoming);
        }
        if (physicalDensity <= 0) physicalDensity = 600;
        LandscapeConfigurationHooker.ConfigurationGeometry geometry =
                LandscapeConfigurationHooker.applyLandscapeConfiguration(
                        incoming, state, physicalDensity, source, "clientIncoming");
        if (geometry.valid && geometry.changed) {
            LSPLogger.i("ActivityClientConfigurationHooker: forced incoming density="
                    + geometry.targetDensity + " logical=" + geometry.targetWidthDp + "x"
                    + geometry.targetHeightDp + "dp source=" + geometry.source
                    + " taskId=" + taskId + " physicalDensity=" + physicalDensity);
        }
        return geometry.valid ? geometry : null;
    }

    private static boolean isLandscapeMainCandidate(Activity activity, Configuration incoming,
            int taskId) {
        if (isLandscapeConfiguration(incoming) || isLandscapeWindow(activity)) return true;
        if (OneStepStateBridge.isTaskLandscape(activity, taskId)) return true;
        Integer requested = OneStepStateBridge.getTaskRequestedOrientation(activity, taskId);
        if (requested != null && RequestedOrientationHooker.isLandscape(requested)) return true;
        // Fixed letterbox bounds only exist after WMS laid out a landscape fixed-orientation task.
        Rect letterbox = OneStepStateBridge.getTaskFixedLetterboxBounds(activity, taskId);
        return letterbox != null && letterbox.width() > 0 && letterbox.height() > 0
                && letterbox.width() > letterbox.height();
    }

    private static int readPhysicalDisplayDensity(Activity activity) {
        if (activity == null) return 0;
        try {
            Display display = activity.getDisplay();
            if (display == null || display.getDisplayId() != Display.DEFAULT_DISPLAY) {
                // Prefer default panel metrics even if the Activity was briefly reassigned.
                Object service = activity.getSystemService(Context.DISPLAY_SERVICE);
                if (service instanceof android.hardware.display.DisplayManager) {
                    display = ((android.hardware.display.DisplayManager) service)
                            .getDisplay(Display.DEFAULT_DISPLAY);
                }
            }
            if (display == null) return 0;
            DisplayMetrics metrics = new DisplayMetrics();
            display.getRealMetrics(metrics);
            return metrics.densityDpi;
        } catch (Throwable t) {
            return 0;
        }
    }

    private static void forceResourcesDensity(Activity activity,
            LandscapeConfigurationHooker.ConfigurationGeometry geometry) {
        try {
            Resources resources = activity.getResources();
            if (resources == null) return;
            Configuration configuration = new Configuration(resources.getConfiguration());
            boolean configDirty = configuration.densityDpi != geometry.targetDensity
                    || configuration.screenWidthDp != geometry.targetWidthDp
                    || configuration.screenHeightDp != geometry.targetHeightDp
                    || configuration.orientation != Configuration.ORIENTATION_LANDSCAPE;
            configuration.densityDpi = geometry.targetDensity;
            configuration.screenWidthDp = geometry.targetWidthDp;
            configuration.screenHeightDp = geometry.targetHeightDp;
            configuration.smallestScreenWidthDp = Math.min(
                    geometry.targetWidthDp, geometry.targetHeightDp);
            configuration.orientation = Configuration.ORIENTATION_LANDSCAPE;

            DisplayMetrics metrics = resources.getDisplayMetrics();
            float density = geometry.targetDensity / 160f;
            boolean metricsDirty = metrics.densityDpi != geometry.targetDensity
                    || Math.abs(metrics.density - density) > 0.001f;
            metrics.densityDpi = geometry.targetDensity;
            metrics.density = density;
            // Preserve the user's font scale relative to the new density.
            float fontScale = configuration.fontScale > 0f ? configuration.fontScale : 1f;
            metrics.scaledDensity = density * fontScale;

            if (configDirty || metricsDirty) {
                // updateConfiguration is deprecated but still the only public way to push both
                // Configuration and DisplayMetrics through the ResourcesImpl path HyperOS uses.
                resources.updateConfiguration(configuration, metrics);
                applyOverrideConfiguration(activity, configuration);
                LSPLogger.i("ActivityClientConfigurationHooker: forced resources density="
                        + geometry.targetDensity + " metricsDpi=" + metrics.densityDpi
                        + " density=" + metrics.density);
            }
        } catch (Throwable t) {
            LSPLogger.w("ActivityClientConfigurationHooker: force resources failed", t);
        }
    }

    private static void applyOverrideConfiguration(Activity activity,
            Configuration configuration) {
        try {
            Method method = Activity.class.getDeclaredMethod(
                    "applyOverrideConfiguration", Configuration.class);
            method.setAccessible(true);
            method.invoke(activity, configuration);
        } catch (Throwable ignored) {
            // Optional on some framework builds.
        }
    }

    private static boolean isLandscapeConfiguration(Configuration configuration) {
        if (configuration == null) return false;
        if (configuration.orientation == Configuration.ORIENTATION_LANDSCAPE) return true;
        return configuration.screenWidthDp > 0 && configuration.screenHeightDp > 0
                && configuration.screenWidthDp > configuration.screenHeightDp;
    }

    private static boolean isLandscapeWindow(Activity activity) {
        if (activity == null) return false;
        try {
            Rect bounds = activity.getWindowManager().getCurrentWindowMetrics().getBounds();
            return bounds != null && bounds.width() > bounds.height();
        } catch (Throwable t) {
            return false;
        }
    }

    private static int readTaskId(Activity activity) {
        if (activity == null) return -1;
        try {
            Method method = Activity.class.getDeclaredMethod("getTaskId");
            method.setAccessible(true);
            Object value = method.invoke(activity);
            return value instanceof Integer ? (Integer) value : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    private static Activity findActivity(Object record) {
        if (record == null) return null;
        if (record instanceof Activity) return (Activity) record;
        String[] names = new String[] { "activity", "mActivity" };
        for (String name : names) {
            try {
                Object value = findField(record.getClass(), name).get(record);
                if (value instanceof Activity) return (Activity) value;
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    private static Application currentApplication() {
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Object value = activityThread.getDeclaredMethod("currentApplication").invoke(null);
            return value instanceof Application ? (Application) value : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int readActivityDisplayId(Activity activity) {
        if (activity == null) return -1;
        try {
            Display display = activity.getDisplay();
            return display == null ? -1 : display.getDisplayId();
        } catch (Throwable t) {
            return -1;
        }
    }

    private static String describeWindow(Activity activity) {
        if (activity == null) return "null";
        try {
            Rect bounds = activity.getWindowManager().getCurrentWindowMetrics().getBounds();
            return bounds == null ? "null" : bounds.toShortString();
        } catch (Throwable t) {
            return "unavailable(" + t.getClass().getSimpleName() + ")";
        }
    }

    private static String describeResources(Resources resources) {
        if (resources == null) return "null";
        try {
            Configuration configuration = resources.getConfiguration();
            DisplayMetrics metrics = resources.getDisplayMetrics();
            return resources.getClass().getName() + "@"
                    + Integer.toHexString(System.identityHashCode(resources))
                    + " config={density=" + configuration.densityDpi
                    + " w=" + configuration.screenWidthDp
                    + " h=" + configuration.screenHeightDp
                    + " sw=" + configuration.smallestScreenWidthDp
                    + " orientation=" + configuration.orientation
                    + "} metrics={px=" + metrics.widthPixels + "x" + metrics.heightPixels
                    + " densityDpi=" + metrics.densityDpi
                    + " density=" + metrics.density
                    + " scaledDensity=" + metrics.scaledDensity + "}";
        } catch (Throwable t) {
            return "unavailable(" + t + ")";
        }
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
}
