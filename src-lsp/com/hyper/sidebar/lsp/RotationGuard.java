package com.hyper.sidebar.lsp;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

import java.lang.reflect.Method;

/** Keeps the OneStep shell in its portrait geometry while a task requests landscape. */
public final class RotationGuard {
    private static final int DEFAULT_DISPLAY = 0;
    private static final int ROTATION_0 = 0;
    private static final int FIXED_TO_USER_ROTATION_DEFAULT = 0;
    private static final int FIXED_TO_USER_ROTATION_ENABLED = 2;

    private static boolean sLocked;
    private static int sOriginalAccelerometer = -1;
    private static int sOriginalUserRotation = -1;

    private RotationGuard() {}

    public static synchronized void lockPortrait(Context context) {
        if (sLocked) return;
        sLocked = true;
        captureSettings(context);

        Object windowManager = getWindowManagerService();
        if (windowManager == null) {
            LSPLogger.w("RotationGuard.lockPortrait: IWindowManager unavailable");
            return;
        }

        // Freeze the logical display before the task can deliver another orientation request.
        putSystemSetting(context, Settings.System.ACCELEROMETER_ROTATION, 0);
        putSystemSetting(context, Settings.System.USER_ROTATION, ROTATION_0);
        boolean ignored = invoke(windowManager, "setIgnoreOrientationRequest",
                DEFAULT_DISPLAY, true);
        boolean fixed = invoke(windowManager, "setFixedToUserRotation",
                DEFAULT_DISPLAY, FIXED_TO_USER_ROTATION_ENABLED);
        boolean frozen = invoke(windowManager, "freezeRotation", ROTATION_0);
        LSPLogger.i("RotationGuard.lockPortrait: ignored=" + ignored
                + " fixed=" + fixed + " frozen=" + frozen
                + " originalAccel=" + sOriginalAccelerometer
                + " originalUserRotation=" + sOriginalUserRotation);
    }

    public static synchronized void unlock(Context context) {
        if (!sLocked) return;

        Object windowManager = getWindowManagerService();
        try {
            if (windowManager != null) {
                invoke(windowManager, "setIgnoreOrientationRequest",
                        DEFAULT_DISPLAY, false);
                invoke(windowManager, "setFixedToUserRotation",
                        DEFAULT_DISPLAY, FIXED_TO_USER_ROTATION_DEFAULT);
            }

            restoreSettings(context);
            if (windowManager != null) {
                if (sOriginalAccelerometer == 1) {
                    invoke(windowManager, "thawRotation");
                } else if (sOriginalAccelerometer == 0 && sOriginalUserRotation >= 0) {
                    invoke(windowManager, "freezeRotation", sOriginalUserRotation);
                }
            }
            LSPLogger.i("RotationGuard.unlock: restored accel="
                    + sOriginalAccelerometer + " userRotation=" + sOriginalUserRotation);
        } catch (Throwable t) {
            // Orientation cleanup must never take down SystemUI during OneStep exit.
            LSPLogger.e("RotationGuard.unlock failed", t);
        } finally {
            sLocked = false;
            sOriginalAccelerometer = -1;
            sOriginalUserRotation = -1;
        }
    }

    private static void captureSettings(Context context) {
        if (context == null) return;
        try {
            ContentResolver resolver = context.getContentResolver();
            sOriginalAccelerometer = Settings.System.getInt(resolver,
                    Settings.System.ACCELEROMETER_ROTATION, -1);
            sOriginalUserRotation = Settings.System.getInt(resolver,
                    Settings.System.USER_ROTATION, -1);
        } catch (Throwable t) {
            LSPLogger.w("RotationGuard.captureSettings failed", t);
        }
    }

    private static void restoreSettings(Context context) {
        if (context == null) return;
        if (sOriginalAccelerometer >= 0) {
            putSystemSetting(context, Settings.System.ACCELEROMETER_ROTATION,
                    sOriginalAccelerometer);
        }
        if (sOriginalUserRotation >= 0) {
            putSystemSetting(context, Settings.System.USER_ROTATION, sOriginalUserRotation);
        }
    }

    private static void putSystemSetting(Context context, String name, int value) {
        if (context == null) return;
        try {
            Settings.System.putInt(context.getContentResolver(), name, value);
        } catch (Throwable t) {
            LSPLogger.w("RotationGuard.putSystemSetting failed: " + name, t);
        }
    }

    private static Object getWindowManagerService() {
        try {
            Class<?> global = Class.forName("android.view.WindowManagerGlobal");
            Method method = global.getDeclaredMethod("getWindowManagerService");
            method.setAccessible(true);
            return method.invoke(null);
        } catch (Throwable t) {
            LSPLogger.w("RotationGuard.getWindowManagerService failed", t);
            return null;
        }
    }

    private static boolean invoke(Object target, String name, Object... args) {
        try {
            Class<?> iface = Class.forName("android.view.IWindowManager");
            Method method = findMethod(iface, name, args);
            if (method == null) {
                LSPLogger.d("RotationGuard: missing IWindowManager#" + name);
                return false;
            }
            method.setAccessible(true);
            method.invoke(target, args);
            return true;
        } catch (Throwable t) {
            LSPLogger.w("RotationGuard.invoke failed: " + name, t);
            return false;
        }
    }

    private static Method findMethod(Class<?> type, String name, Object[] args) {
        for (Method method : type.getDeclaredMethods()) {
            if (!name.equals(method.getName())
                    || method.getParameterTypes().length != args.length) {
                continue;
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            boolean matches = true;
            for (int i = 0; i < parameterTypes.length; i++) {
                if (!accepts(parameterTypes[i], args[i])) {
                    matches = false;
                    break;
                }
            }
            if (matches) return method;
        }
        return null;
    }

    private static boolean accepts(Class<?> parameterType, Object value) {
        if (!parameterType.isPrimitive()) {
            return value == null || parameterType.isAssignableFrom(value.getClass());
        }
        if (parameterType == int.class) return value instanceof Integer;
        if (parameterType == boolean.class) return value instanceof Boolean;
        if (parameterType == long.class) return value instanceof Long;
        if (parameterType == float.class) return value instanceof Float;
        if (parameterType == double.class) return value instanceof Double;
        if (parameterType == short.class) return value instanceof Short;
        if (parameterType == byte.class) return value instanceof Byte;
        if (parameterType == char.class) return value instanceof Character;
        return false;
    }
}
