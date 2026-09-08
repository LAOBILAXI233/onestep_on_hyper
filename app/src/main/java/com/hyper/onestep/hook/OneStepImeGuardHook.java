package com.hyper.onestep.hook;

import android.os.IBinder;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;

import com.hyper.onestep.system.input.ImeGuardLease;

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
    private static final int IMMS_DISPLAY_DEFAULT = 0;

    private static volatile boolean installed;

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

    private static synchronized void install(Class<?> immsClass)
            throws ReflectiveOperationException {
        if (installed) {
            return;
        }
        HookBridgeCompat.disableHiddenApiRestrictions();
        installed = installHideInterceptor(immsClass);
        Log.i(TAG, installed ? "installed" : "inactive");
    }

    private static boolean installHideInterceptor(Class<?> immsClass)
            throws ReflectiveOperationException {
        ClassLoader loader = immsClass.getClassLoader();
        Class<?> reasons = Class.forName(
                "com.android.internal.inputmethod.SoftInputShowHideReason", false, loader);
        int transientHideReason = reasons.getField("HIDE_UNSPECIFIED_WINDOW").getInt(null);
        Field wmField = immsClass.getDeclaredField("mWindowManagerInternal");
        wmField.setAccessible(true);
        Class<?> wmClass = Class.forName("com.android.server.wm.WindowManagerInternal",
                false, loader);
        Method topFocusedDisplay = wmClass.getMethod("getTopFocusedDisplayId");
        Method windowDisplay = wmClass.getMethod("getDisplayIdForWindow", IBinder.class);
        Method keyguardLocked = wmClass.getMethod("isKeyguardLocked");
        Method imeDisplay = null;
        try {
            imeDisplay = immsClass.getDeclaredMethod("getCurTokenDisplayIdLocked");
            imeDisplay.setAccessible(true);
        } catch (NoSuchMethodException ignored) {
        }
        Method currentImeDisplay = imeDisplay;
        Method bindingControllerMethod = null;
        Method bindingDisplayMethod = null;
        try {
            bindingControllerMethod = immsClass.getDeclaredMethod(
                    "getInputMethodBindingController", int.class);
            bindingControllerMethod.setAccessible(true);
            bindingDisplayMethod = bindingControllerMethod.getReturnType()
                    .getDeclaredMethod("getCurTokenDisplayId");
            bindingDisplayMethod.setAccessible(true);
        } catch (NoSuchMethodException ignored) {
        }
        Method bindingController = bindingControllerMethod;
        Method bindingDisplay = bindingDisplayMethod;
        XC_MethodHook interceptor = new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                int reasonIndex = hideReasonIndex((Method) param.method);
                if (reasonIndex < 0 || !(param.args[0] instanceof IBinder)
                        || !Integer.valueOf(transientHideReason).equals(param.args[reasonIndex])) {
                    return;
                }
                ImeGuardLease lease = ImeGuardLease.parse(
                        readSystemProp(ImeGuardLease.PROPERTY, "0"), SystemClock.uptimeMillis());
                if (lease == null) {
                    return;
                }
                try {
                    Object wm = wmField.get(param.thisObject);
                    if (!Boolean.FALSE.equals(keyguardLocked.invoke(wm))
                            || !Integer.valueOf(lease.displayId).equals(topFocusedDisplay.invoke(wm))
                            || !Integer.valueOf(IMMS_DISPLAY_DEFAULT).equals(
                                    windowDisplay.invoke(wm, param.args[0]))) {
                        return;
                    }
                    Object imeDisplayId;
                    if (param.args.length == 6) {
                        if (bindingController == null || bindingDisplay == null) {
                            return;
                        }
                        Object controller = bindingController.invoke(param.thisObject, param.args[5]);
                        imeDisplayId = bindingDisplay.invoke(controller);
                    } else {
                        if (currentImeDisplay == null) {
                            return;
                        }
                        imeDisplayId = currentImeDisplay.invoke(param.thisObject);
                    }
                    if (!Integer.valueOf(lease.displayId).equals(imeDisplayId)) {
                        return;
                    }
                    if (reasonIndex == 4 && param.args[1] != null) {
                        Class<?> tracker = Class.forName("android.view.inputmethod.ImeTracker",
                                false, loader);
                        Object logger = tracker.getMethod("forLogging").invoke(null);
                        int phase = tracker.getField("PHASE_SERVER_SHOULD_HIDE").getInt(null);
                        Class<?> tokenClass = Class.forName(
                                "android.view.inputmethod.ImeTracker$Token", false, loader);
                        tracker.getMethod("onCancelled", tokenClass, int.class)
                                .invoke(logger, param.args[1], phase);
                    }
                } catch (ReflectiveOperationException | RuntimeException e) {
                    return;
                }
                Object receiver = param.args[reasonIndex - 1];
                if (receiver instanceof ResultReceiver) {
                    try {
                        ((ResultReceiver) receiver).send(
                                InputMethodManager.RESULT_UNCHANGED_SHOWN, null);
                    } catch (RuntimeException e) {
                        Log.w(TAG, "IME hide result delivery failed", e);
                    }
                }
                param.setResult(Boolean.FALSE);
                Log.d(TAG, "Ignored transient default-display IME hide; focused display="
                        + lease.displayId);
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
        return hideReasonIndex(method) >= 0;
    }

    static int hideReasonIndex(Method method) {
        if (method == null || !"hideCurrentInputLocked".equals(method.getName())
                || method.getReturnType() != boolean.class) {
            return -1;
        }
        Class<?>[] types = method.getParameterTypes();
        if (types.length == 4 && types[0] == IBinder.class && types[1] == int.class
                && types[2] == ResultReceiver.class && types[3] == int.class) {
            return 3;
        }
        if ((types.length == 5 || types.length == 6) && types[0] == IBinder.class
                && "android.view.inputmethod.ImeTracker$Token".equals(types[1].getName())
                && types[2] == int.class && types[3] == ResultReceiver.class
                && types[4] == int.class && (types.length == 5 || types[5] == int.class)) {
            return 4;
        }
        return -1;
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
