package com.hyper.onestep.hook;

import android.os.SystemClock;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;

public final class OneStepImeGuardHook {
    private static final String TAG = "OneStepImeGuard";
    private static final String IMMS_CLASS =
            "com.android.server.inputmethod.InputMethodManagerService";
    private static final String GUARD_DISPLAY_PROP = "onestep.ime.guard_display";
    private static final String GUARD_AT_PROP = "onestep.ime.guard_at";
    private static final long GUARD_TTL_MS = 60_000L;
    private static final long RESTORE_DEBOUNCE_MS = 250L;
    private static final int IMMS_DISPLAY_DEFAULT = 0;

    private static volatile boolean installed;
    private static volatile boolean clientHideInFlight;
    private static volatile long lastRestoreAtUptimeMs;

    private OneStepImeGuardHook() {
    }

    public static void bootstrap(ClassLoader systemServerClassLoader) {
        if (systemServerClassLoader == null || installed) {
            return;
        }
        Thread installer = new Thread(
                () -> awaitAndInstall(systemServerClassLoader),
                "OneStepImeGuardInstaller");
        installer.setContextClassLoader(systemServerClassLoader);
        installer.setDaemon(true);
        installer.start();
    }

    private static void awaitAndInstall(ClassLoader fallback) {
        long deadline = SystemClock.uptimeMillis() + 120_000L;
        Throwable lastFailure = null;
        while (SystemClock.uptimeMillis() < deadline) {
            try {
                Class<?> immsClass = findSystemServerClass(IMMS_CLASS, fallback);
                install(immsClass);
                return;
            } catch (ClassNotFoundException e) {
                lastFailure = e;
                sleepSilently(100L);
            } catch (Throwable t) {
                Log.e(TAG, "IME guard installation failed", t);
                return;
            }
        }
        Log.e(TAG, "timed out waiting for InputMethodManagerService", lastFailure);
    }

    private static synchronized void install(Class<?> immsClass) {
        if (installed) {
            return;
        }
        HookBridgeCompat.disableHiddenApiRestrictions();
        installClientHideMarkers(immsClass);
        installed = installHideInterceptor(immsClass);
        Log.i(TAG, installed ? "installed" : "inactive");
    }

    private static void installClientHideMarkers(Class<?> immsClass) {
        XC_MethodHook marker = new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                clientHideInFlight = true;
            }

            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                clientHideInFlight = false;
            }
        };
        boolean marked = false;
        for (Method method : immsClass.getDeclaredMethods()) {
            String name = method.getName();
            if ("hideMySoftInput".equals(name) || "hideSoftInput".equals(name)) {
                method.setAccessible(true);
                XposedBridge.hookMethod(method, marker);
                marked = true;
            }
        }
        Log.i(TAG, "client hide markers=" + marked);
    }

    private static boolean installHideInterceptor(Class<?> immsClass) {
        XC_MethodHook interceptor = new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                if (clientHideInFlight) {
                    return;
                }
                long guardAt = parseLongProp(GUARD_AT_PROP);
                if (guardAt <= 0L
                        || SystemClock.uptimeMillis() - guardAt > GUARD_TTL_MS) {
                    return;
                }
                int guardDisplay = (int) parseLongProp(GUARD_DISPLAY_PROP);
                if (guardDisplay <= IMMS_DISPLAY_DEFAULT) {
                    return;
                }
                param.setResult(Boolean.TRUE);
                Log.i(TAG, "Blocked server-side IME hide while hosted display "
                        + guardDisplay + " owns input focus");
            }
        };
        int hooked = 0;
        for (Method target : immsClass.getDeclaredMethods()) {
            if (!isHideCurrentInputLockedTarget(target)) {
                continue;
            }
            target.setAccessible(true);
            XposedBridge.hookMethod(target, interceptor);
            hooked++;
        }
        if (hooked == 0) {
            Log.w(TAG, "hideCurrentInputLocked not found; guard inactive");
            return false;
        }
        Log.i(TAG, "hideCurrentInputLocked overloads=" + hooked);
        return true;
    }

    static boolean isHideCurrentInputLockedTarget(Method method) {
        return method != null
                && "hideCurrentInputLocked".equals(method.getName())
                && method.getReturnType() == boolean.class
                && method.getParameterTypes().length > 0;
    }

    private static long parseLongProp(String key) {
        try {
            return Long.parseLong(readSystemProp(key, "0").trim());
        } catch (RuntimeException e) {
            return 0L;
        }
    }

    private static String readSystemProp(String key, String fallback) {
        try {
            Class<?> properties = Class.forName("android.os.SystemProperties");
            Method get = properties.getDeclaredMethod(
                    "get", String.class, String.class);
            get.setAccessible(true);
            Object value = get.invoke(null, key, fallback);
            return value instanceof String ? (String) value : fallback;
        } catch (ReflectiveOperationException | RuntimeException e) {
            return fallback;
        }
    }

    private static void sleepSilently(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException ignored) {
            Thread.currentThread().interrupt();
        }
    }

    private static Class<?> findSystemServerClass(String className, ClassLoader fallback)
            throws ClassNotFoundException {
        Set<ClassLoader> candidates = Collections.newSetFromMap(new IdentityHashMap<>());
        addClassLoaderChain(candidates, fallback);
        addClassLoaderChain(candidates, Thread.currentThread().getContextClassLoader());
        try {
            for (Thread thread : Thread.getAllStackTraces().keySet()) {
                addClassLoaderChain(candidates, thread.getContextClassLoader());
            }
        } catch (RuntimeException ignored) {
        }
        ClassNotFoundException lastFailure = null;
        for (ClassLoader candidate : candidates) {
            try {
                return Class.forName(className, false, candidate);
            } catch (ClassNotFoundException e) {
                lastFailure = e;
            }
        }
        throw new ClassNotFoundException(className, lastFailure);
    }

    private static void addClassLoaderChain(Set<ClassLoader> candidates,
                                            ClassLoader loader) {
        ClassLoader current = loader;
        while (current != null && candidates.add(current)) {
            current = current.getParent();
        }
    }
}
