package com.leaf.hyperdragshare.codex;

import android.os.Handler;
import android.os.HandlerThread;
import android.view.MotionEvent;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import de.robv.android.xposed.XposedHelpers;

final class MiuiMotionSource {
    interface Listener {
        void onMotionEvent(MotionEvent event);
    }

    private static final String TAG = "DragShare/MiuiInput";

    private final ClassLoader classLoader;
    private final Listener listener;

    private HandlerThread thread;
    private Object manager;
    private Object motionListener;
    private boolean firstEventLogged;

    MiuiMotionSource(ClassLoader classLoader, Listener listener) {
        this.classLoader = classLoader;
        this.listener = listener;
    }

    synchronized void start() {
        if (motionListener != null) {
            return;
        }
        try {
            Class<?> managerClass = XposedHelpers.findClass(
                    "miui.hardware.input.MiuiInputManager", classLoader);
            Class<?> listenerClass = XposedHelpers.findClass(
                    "miui.hardware.input.MiuiInputManager$MiuiMotionEventListener", classLoader);
            Object inputManager = XposedHelpers.callStaticMethod(managerClass, "getInstance");
            if (inputManager == null) {
                return;
            }

            HandlerThread inputThread = new HandlerThread("drag-share-input");
            inputThread.start();
            Handler handler = new Handler(inputThread.getLooper());

            InvocationHandler invocationHandler = (proxy, method, args) -> {
                if (method.getDeclaringClass() == Object.class) {
                    return handleObjectMethod(proxy, method, args);
                }
                if ("onMotionEvent".equals(method.getName())
                        && args != null
                        && args.length == 1
                        && args[0] instanceof MotionEvent) {
                    if (!firstEventLogged) {
                        firstEventLogged = true;
                        MotionEvent first = (MotionEvent) args[0];
                        DragShareLog.i(TAG, "first event action="
                                + MotionEvent.actionToString(first.getActionMasked())
                                + " point=" + Math.round(first.getRawX())
                                + "," + Math.round(first.getRawY()));
                    }
                    MotionEvent current = (MotionEvent) args[0];
                    DragShareLog.d(TAG, "event action="
                            + MotionEvent.actionToString(current.getActionMasked())
                            + " point=" + Math.round(current.getRawX())
                            + "," + Math.round(current.getRawY()));
                    listener.onMotionEvent(MotionEvent.obtain((MotionEvent) args[0]));
                }
                return null;
            };
            Object proxy = Proxy.newProxyInstance(
                    listenerClass.getClassLoader(),
                    new Class<?>[]{listenerClass},
                    invocationHandler);
            XposedHelpers.callMethod(
                    inputManager,
                    "registerMiuiMotionEventListener",
                    proxy,
                    handler);

            thread = inputThread;
            manager = inputManager;
            motionListener = proxy;
            DragShareLog.i(TAG, "fallback listener registered");
        } catch (Throwable error) {
            DragShareLog.w(TAG, "fallback listener unavailable", error);
            stop();
        }
    }

    synchronized void stop() {
        Object inputManager = manager;
        Object listenerObject = motionListener;
        HandlerThread inputThread = thread;
        manager = null;
        motionListener = null;
        thread = null;

        if (inputManager != null && listenerObject != null) {
            try {
                XposedHelpers.callMethod(
                        inputManager,
                        "unregisterMiuiMotionEventListener",
                        listenerObject);
            } catch (Throwable error) {
                DragShareLog.w(TAG, "unable to unregister fallback listener", error);
            }
        }
        if (inputThread != null) {
            inputThread.quitSafely();
        }
    }

    private Object handleObjectMethod(Object proxy, Method method, Object[] args) {
        switch (method.getName()) {
            case "equals":
                return args != null && args.length == 1 && proxy == args[0];
            case "hashCode":
                return System.identityHashCode(proxy);
            case "toString":
                return "DragShareMiuiMotionListener";
            default:
                return null;
        }
    }
}
