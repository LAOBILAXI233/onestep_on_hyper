package com.hyper.onestep.hook;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;

public final class OneStepBackgroundTaskActivationHook {
    private static final String TAG = "OneStepBgTaskActivate";
    private static final String ACTIVITY_TASK_MANAGER_SERVICE_CLASS =
            "com.android.server.wm.ActivityTaskManagerService";

    private static final String ONE_STEP_DISPLAY_PREFIX = "OneStepSlot-";
    private static final String LEGACY_ONE_STEP_DISPLAY_PREFIX = "OneStep-slot-";
    private static final long CLASS_WAIT_TIMEOUT_MS = 120_000L;
    private static final long CLASS_WAIT_INTERVAL_MS = 100L;

    private static boolean installationStarted;
    private static boolean installed;

    private OneStepBackgroundTaskActivationHook() {
    }

    public static synchronized void bootstrap(ClassLoader systemServerClassLoader) {
        if (installed || installationStarted) {
            return;
        }
        if (systemServerClassLoader == null) {
            Log.e(TAG, "system_server class loader unavailable");
            return;
        }
        installationStarted = true;
        Thread installer = new Thread(
                () -> awaitAndInstall(systemServerClassLoader),
                "OneStepBgTaskActivateInstaller");
        installer.setContextClassLoader(systemServerClassLoader);
        installer.setDaemon(true);
        installer.start();
    }

    private static void awaitAndInstall(ClassLoader classLoader) {
        long deadline = android.os.SystemClock.uptimeMillis() + CLASS_WAIT_TIMEOUT_MS;
        ReflectiveOperationException lastFailure = null;
        while (android.os.SystemClock.uptimeMillis() < deadline) {
            try {
                Class<?> serviceClass = Class.forName(
                        ACTIVITY_TASK_MANAGER_SERVICE_CLASS, false, classLoader);
                Method method = findStartActivityFromRecents(serviceClass);
                if (method == null) {
                    throw new NoSuchMethodException(
                            "startActivityFromRecents(int, Bundle) not found");
                }
                XposedBridge.hookMethod(method, ROUTER);
                HookBridgeCompat.deoptimizeMethod(method);
                installed = true;
                Log.i(TAG, "installed on ActivityTaskManagerService#startActivityFromRecents");
                return;
            } catch (ReflectiveOperationException | RuntimeException e) {
                lastFailure = e instanceof ReflectiveOperationException
                        ? (ReflectiveOperationException) e : null;
                if (lastFailure == null) {
                    Log.e(TAG, "unexpected install failure", e);
                    return;
                }
            }
            try {
                Thread.sleep(CLASS_WAIT_INTERVAL_MS);
            } catch (InterruptedException ignored) {
                return;
            }
        }
        Log.e(TAG, "gave up installing; last failure", lastFailure != null
                ? lastFailure : new IllegalStateException("timeout"));
    }

    private static Method findStartActivityFromRecents(Class<?> serviceClass) {
        for (Method candidate : serviceClass.getDeclaredMethods()) {
            if (!"startActivityFromRecents".equals(candidate.getName())) {
                continue;
            }
            Class<?>[] types = candidate.getParameterTypes();
            if (types.length == 2 && types[0] == int.class && types[1] == Bundle.class) {
                candidate.setAccessible(true);
                return candidate;
            }
        }
        return null;
    }

    private static final XC_MethodHook ROUTER = new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            try {
                int taskId = taskIdArgument(param);
                Bundle options = optionsArgument(param);
                if (taskId <= 0 || options == null) {
                    return;
                }
                Context context = findContext(param.thisObject);
                if (context == null) {
                    return;
                }
                routeParkedTaskToDefaultDisplay(context, taskId, options);
            } catch (Throwable t) {
                Log.w(TAG, "route failed", t);
            }
        }
    };

    private static void routeParkedTaskToDefaultDisplay(
            Context context, int taskId, Bundle optionsBundle) {
        int displayId = findTaskDisplayId(context, taskId);
        if (displayId < 0 || !isOneStepDisplay(displayId)) {
            return;
        }
        try {
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(0);
            optionsBundle.putAll(options.toBundle());
            Log.i(TAG, "routed task=" + taskId + " from display=" + displayId
                    + " through Recents options");
        } catch (Throwable t) {
            Log.e(TAG, "route failed task=" + taskId + " display=" + displayId, t);
        }
    }

    private static int taskIdArgument(XC_MethodHook.MethodHookParam param) {
        for (Object argument : param.args) {
            if (argument instanceof Integer && (Integer) argument > 0) {
                return (Integer) argument;
            }
        }
        return -1;
    }

    private static Bundle optionsArgument(XC_MethodHook.MethodHookParam param) {
        for (Object argument : param.args) {
            if (argument instanceof Bundle) {
                return (Bundle) argument;
            }
        }
        return null;
    }

    private static int findTaskDisplayId(Context context, int taskId) {
        try {
            ActivityManager am = (ActivityManager) context
                    .getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) {
                return -1;
            }
            List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(100);
            if (tasks == null) {
                return -1;
            }
            for (ActivityManager.RunningTaskInfo task : tasks) {
                if (task.taskId == taskId) {
                    Integer displayId = readPublicIntField(task, "displayId");
                    return displayId != null ? displayId : -1;
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "findTaskDisplayId failed for task=" + taskId, t);
        }
        return -1;
    }

    
    private static Integer readPublicIntField(Object target, String fieldName) {
        try {
            Field field = target.getClass().getField(fieldName);
            field.setAccessible(true);
            Object value = field.get(target);
            return value instanceof Integer ? (Integer) value : null;
        } catch (Throwable t) {
            Log.w(TAG, "read " + fieldName + " failed on " + target.getClass().getName(), t);
            return null;
        }
    }

    private static boolean isOneStepDisplay(int displayId) {
        try {
            String name = getDisplayNameFromGlobal(displayId);
            return name != null && (name.startsWith(ONE_STEP_DISPLAY_PREFIX)
                    || name.startsWith(LEGACY_ONE_STEP_DISPLAY_PREFIX));
        } catch (Throwable t) {
            Log.d(TAG, "global display lookup failed for display=" + displayId, t);
            return false;
        }
    }

    private static String getDisplayNameFromGlobal(int displayId) throws Exception {
        Class<?> globalClass = Class.forName("android.hardware.display.DisplayManagerGlobal");
        Method getInstance = globalClass.getDeclaredMethod("getInstance");
        getInstance.setAccessible(true);
        Object global = getInstance.invoke(null);
        Method getDisplayInfo = null;
        for (Method method : globalClass.getDeclaredMethods()) {
            if ("getDisplayInfo".equals(method.getName())
                    && method.getParameterTypes().length == 1
                    && method.getParameterTypes()[0] == int.class) {
                getDisplayInfo = method;
                break;
            }
        }
        if (getDisplayInfo == null) {
            return null;
        }
        getDisplayInfo.setAccessible(true);
        Object info = getDisplayInfo.invoke(global, displayId);
        if (info == null) {
            return null;
        }
        Field nameField = info.getClass().getField("name");
        nameField.setAccessible(true);
        Object name = nameField.get(info);
        return name instanceof String ? (String) name : null;
    }

    private static Context findContext(Object target) {
        for (Class<?> type = target == null ? null : target.getClass();
                type != null && type != Object.class; type = type.getSuperclass()) {
            for (Field field : type.getDeclaredFields()) {
                if (!Context.class.isAssignableFrom(field.getType())) {
                    continue;
                }
                try {
                    field.setAccessible(true);
                    Object value = field.get(target);
                    if (value instanceof Context) {
                        return (Context) value;
                    }
                } catch (Throwable ignored) {
                }
            }
        }
        return null;
    }
}
