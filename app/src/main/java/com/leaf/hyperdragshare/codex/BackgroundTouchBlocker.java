package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.os.Build;
import android.view.Display;

import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

final class BackgroundTouchBlocker {
    private static final String TAG = "DragShare/InputBlocker";
    private static final String MONITOR_NAME = "DragShare background lock";
    private static final long ROOT_COMMAND_TIMEOUT_MILLIS = 1_000L;
    private static final long ROOT_TRANSACTION_WAIT_MILLIS = 50L;
    private static final Pattern SUCCESSFUL_SERVICE_CALL = Pattern.compile(
            "Result:\\s*Parcel\\(\\s*(?:0x[0-9a-fA-F]+:\\s*)?00000000(?=\\s|\\)|$)");

    private final Context context;
    private final MethodInvoker methodInvoker;
    private final RootTouchCanceller rootTouchCanceller;
    private Object inputMonitor;
    private boolean started;

    BackgroundTouchBlocker(Context context) {
        this(context, new ReflectiveMethodInvoker(), new RootServiceCallCanceller());
    }

    BackgroundTouchBlocker(Context context, MethodInvoker methodInvoker) {
        this(context, methodInvoker, new RootServiceCallCanceller());
    }

    BackgroundTouchBlocker(
            Context context,
            MethodInvoker methodInvoker,
            RootTouchCanceller rootTouchCanceller) {
        this.context = context == null ? null : context.getApplicationContext();
        this.methodInvoker = methodInvoker == null ? new ReflectiveMethodInvoker() : methodInvoker;
        this.rootTouchCanceller = rootTouchCanceller == null
                ? new RootServiceCallCanceller()
                : rootTouchCanceller;
        this.rootTouchCanceller.prepare();
    }

    synchronized boolean start() {
        if (started) {
            return true;
        }
        if (context == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
            log("gesture monitor unavailable on this Android version");
            return false;
        }

        Object monitor = null;
        try {
            Object inputManager = context.getSystemService(Context.INPUT_SERVICE);
            if (inputManager == null) {
                log("InputManager service is null");
                return false;
            }

            
            
            
            try {
                methodInvoker.invoke(inputManager, "cancelCurrentTouch");
                started = true;
                log("foreground touch stream cancelled");
                return true;
            } catch (Throwable unavailable) {
                log("cancelCurrentTouch unavailable; trying gesture monitor", unavailable);
            }

            int displayId = resolveDisplayId();

            monitor = methodInvoker.invoke(
                    inputManager,
                    "monitorGestureInput",
                    MONITOR_NAME,
                    displayId);
            if (monitor == null) {
                log("monitorGestureInput returned null");
            } else {
                
                
                methodInvoker.invoke(monitor, "pilferPointers");
                inputMonitor = monitor;
                started = true;
                log("foreground touch stream pilfered");
                return true;
            }
        } catch (Throwable error) {
            if (monitor != null) {
                try {
                    methodInvoker.invoke(monitor, "dispose");
                } catch (Throwable ignored) {
                    
                }
            }
            log("gesture monitor unavailable; trying root cancellation", error);
        }

        try {
            if (rootTouchCanceller.cancelCurrentTouch()) {
                started = true;
                log("foreground touch stream cancelled through root");
                return true;
            }
            log("root cancelCurrentTouch command failed");
        } catch (Throwable error) {
            log("unable to cancel foreground touch stream through root", error);
        }
        return false;
    }

    static String rootServiceCallCommand(int transactionCode) {
        if (transactionCode <= 0) {
            throw new IllegalArgumentException("transactionCode must be positive");
        }
        return "uid=$(/system/bin/id -u); "
                + "[ \"$uid\" = 0 ] || exit 1; "
                + "/system/bin/service call input " + transactionCode;
    }

    static boolean isSuccessfulServiceCallResult(String result) {
        return result != null && SUCCESSFUL_SERVICE_CALL.matcher(result).find();
    }

    private int resolveDisplayId() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
            return Display.DEFAULT_DISPLAY;
        }
        try {
            Display display = context.getDisplay();
            if (display != null) {
                return display.getDisplayId();
            }
        } catch (Throwable ignored) {
            
            log("context has no display; using the default display for gesture monitor");
        }
        return Display.DEFAULT_DISPLAY;
    }

    synchronized void stop() {
        Object monitor = inputMonitor;
        inputMonitor = null;
        started = false;
        if (monitor == null) {
            return;
        }
        try {
            methodInvoker.invoke(monitor, "dispose");
        } catch (Throwable error) {
            log("unable to dispose gesture monitor", error);
        }
    }

    private static void log(String message) {
        DragShareLog.i(TAG, message);
    }

    private static void log(String message, Throwable error) {
        DragShareLog.w(TAG, message, error);
    }

    interface MethodInvoker {
        Object invoke(Object target, String methodName, Object... args) throws Throwable;
    }

    interface RootTouchCanceller {
        boolean cancelCurrentTouch() throws Throwable;

        default void prepare() {}
    }

    private static final class RootServiceCallCanceller implements RootTouchCanceller {
        private final FutureTask<Integer> transactionCodeTask = new FutureTask<>(() -> {
            int transactionCode =
                    FrameworkBinderTransactionResolver.resolveCancelCurrentTouchTransactionCode();
            if (transactionCode <= 0) {
                throw new IllegalStateException("Invalid dynamically resolved input transaction");
            }
            log("resolved root input transaction dynamically");
            return transactionCode;
        });
        private boolean transactionCodeTaskStarted;

        @Override
        public synchronized void prepare() {
            if (transactionCodeTaskStarted) {
                return;
            }
            transactionCodeTaskStarted = true;
            Thread thread = new Thread(transactionCodeTask, "drag-share-input-transaction");
            thread.setDaemon(true);
            thread.start();
        }

        @Override
        public boolean cancelCurrentTouch() throws Throwable {
            prepare();
            int transactionCode = awaitTransactionCode();
            if (transactionCode <= 0) {
                return false;
            }
            java.lang.Process process = null;
            try {
                process = new ProcessBuilder(
                        "su",
                        "-c",
                        rootServiceCallCommand(transactionCode))
                        .redirectErrorStream(true)
                        .start();
                if (!process.waitFor(ROOT_COMMAND_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS)) {
                    process.destroyForcibly();
                    return false;
                }
                String result;
                try (InputStream output = process.getInputStream()) {
                    result = new String(output.readAllBytes(), StandardCharsets.UTF_8);
                }
                return process.exitValue() == 0 && isSuccessfulServiceCallResult(result);
            } catch (InterruptedException error) {
                Thread.currentThread().interrupt();
                throw error;
            } finally {
                if (process != null && process.isAlive()) {
                    process.destroyForcibly();
                }
            }
        }

        private int awaitTransactionCode() throws Throwable {
            try {
                return transactionCodeTask.get(ROOT_TRANSACTION_WAIT_MILLIS, TimeUnit.MILLISECONDS);
            } catch (TimeoutException ignored) {
                return -1;
            } catch (ExecutionException error) {
                if (error.getCause() != null) {
                    throw error.getCause();
                }
                throw error;
            } catch (InterruptedException error) {
                Thread.currentThread().interrupt();
                throw error;
            }
        }
    }

    private static final class ReflectiveMethodInvoker implements MethodInvoker {
        @Override
        public Object invoke(Object target, String methodName, Object... args) throws Throwable {
            if (target == null) {
                throw new NullPointerException("target");
            }
            Method method = findMethod(target.getClass(), methodName, args);
            method.setAccessible(true);
            try {
                return method.invoke(target, args);
            } catch (InvocationTargetException error) {
                if (error.getCause() != null) {
                    throw error.getCause();
                }
                throw error;
            }
        }

        private static Method findMethod(Class<?> type, String name, Object[] args)
                throws NoSuchMethodException {
            for (Class<?> current = type; current != null; current = current.getSuperclass()) {
                for (Method method : current.getDeclaredMethods()) {
                    if (name.equals(method.getName()) && matches(method.getParameterTypes(), args)) {
                        return method;
                    }
                }
            }
            throw new NoSuchMethodException(type.getName() + "." + name);
        }

        private static boolean matches(Class<?>[] parameterTypes, Object[] args) {
            if (parameterTypes.length != args.length) {
                return false;
            }
            for (int index = 0; index < parameterTypes.length; index++) {
                Object value = args[index];
                Class<?> parameter = parameterTypes[index];
                if (value == null) {
                    if (parameter.isPrimitive()) {
                        return false;
                    }
                    continue;
                }
                Class<?> valueType = value.getClass();
                if (parameter.isPrimitive()) {
                    if (!primitiveWrapper(parameter).isAssignableFrom(valueType)) {
                        return false;
                    }
                } else if (!parameter.isAssignableFrom(valueType)) {
                    return false;
                }
            }
            return true;
        }

        private static Class<?> primitiveWrapper(Class<?> primitive) {
            if (primitive == boolean.class) return Boolean.class;
            if (primitive == byte.class) return Byte.class;
            if (primitive == char.class) return Character.class;
            if (primitive == short.class) return Short.class;
            if (primitive == int.class) return Integer.class;
            if (primitive == long.class) return Long.class;
            if (primitive == float.class) return Float.class;
            if (primitive == double.class) return Double.class;
            return Void.class;
        }
    }
}
