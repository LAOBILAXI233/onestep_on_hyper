package com.hyper.sidebar.util;

import android.content.ClipData;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.IInterface;
import android.view.DragEvent;
import android.view.Display;
import android.view.View;

import com.hyper.sidebar.lsp.LSPLogger;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * Reflection bridge for HyperOS' cross-display drag implementation.
 *
 * <p>The framework class lives in {@code miui-framework.jar}, so keeping the dependency behind
 * reflection lets the module remain loadable on non-Xiaomi builds.</p>
 */
public final class MiuiMirrorDragBridge {
    public static final int DEFAULT_DRAG_FLAGS = View.DRAG_FLAG_GLOBAL
            | View.DRAG_FLAG_GLOBAL_URI_READ;

    private static final String CLASS_NAME = "com.xiaomi.mirror.MirrorManager";
    private static final String MIRROR_SERVICE_NAME = "miui.mirror_service";
    private static final String MIRROR_SERVICE_INTERFACE =
            "com.xiaomi.mirror.IMirrorService";
    private static final String MIRROR_SERVICE_STUB = MIRROR_SERVICE_INTERFACE + "$Stub";
    private static final String IWINDOW_CLASS_NAME = "android.view.IWindow";
    private static final Object API_LOCK = new Object();
    private static final Object DRAG_LOCK = new Object();

    private static volatile Api sApi;
    private static volatile DirectApi sDirectApi;

    private MiuiMirrorDragBridge() {
    }

    /** Returns whether the HyperOS mirror drag API can be resolved in this process. */
    public static boolean isAvailable() {
        return getApi() != null;
    }

    /** Starts a mirror drag with the URI read permission expected by share targets. */
    public static IBinder start(ClipData data, int sourceDisplayId) {
        return start(data, DEFAULT_DRAG_FLAGS, sourceDisplayId);
    }

    /**
     * Starts a mirror drag originating on {@code sourceDisplayId}. The caller owns the returned
     * token until a drop has been injected successfully; call {@link #cancel(IBinder)} on an
     * abandoned sequence.
     */
    public static IBinder start(ClipData data, int flags, int sourceDisplayId) {
        if (data == null || data.getItemCount() == 0) {
            LSPLogger.w("MiuiMirrorDragBridge.start: empty ClipData");
            return null;
        }
        if (sourceDisplayId < 0) {
            LSPLogger.w("MiuiMirrorDragBridge.start: invalid sourceDisplayId="
                    + sourceDisplayId);
            return null;
        }

        Api api = getApi();
        if (api == null) {
            return null;
        }
        try {
            Object result = api.start.invoke(api.manager, data, flags, sourceDisplayId);
            if (!(result instanceof IBinder)) {
                LSPLogger.w("MiuiMirrorDragBridge.start: framework returned no token"
                        + " sourceDisplayId=" + sourceDisplayId
                        + " items=" + data.getItemCount());
                return null;
            }
            IBinder token = (IBinder) result;
            LSPLogger.i("MiuiMirrorDragBridge.start: sourceDisplayId=" + sourceDisplayId
                    + " flags=0x" + Integer.toHexString(flags)
                    + " items=" + data.getItemCount()
                    + " token=" + token);
            return token;
        } catch (Throwable t) {
            invalidateApi(api);
            logInvocationFailure("MiuiMirrorDragBridge.start: invocation failed"
                    + " sourceDisplayId=" + sourceDisplayId, t);
            return null;
        }
    }

    /** Starts a mirror drag through IMirrorService using the anchor's real IWindow. */
    public static IBinder start(View anchor, ClipData data, int flags) {
        if (data == null || data.getItemCount() == 0) {
            LSPLogger.w("MiuiMirrorDragBridge.startDirect: empty ClipData");
            return null;
        }

        AnchorInfo anchorInfo = resolveAnchor(anchor);
        if (anchorInfo == null) {
            return null;
        }
        DirectApi api = getDirectApi();
        if (api == null) {
            return null;
        }

        try {
            Object result = api.performDrag.invoke(api.service, anchorInfo.window, flags,
                    anchorInfo.sourceDisplayId, data, null);
            if (!(result instanceof IBinder)) {
                LSPLogger.w("MiuiMirrorDragBridge.startDirect: service returned no token"
                        + " sourceDisplayId=" + anchorInfo.sourceDisplayId
                        + " window=" + anchorInfo.windowBinder
                        + " flags=0x" + Integer.toHexString(flags)
                        + " items=" + data.getItemCount());
                return null;
            }
            IBinder token = (IBinder) result;
            LSPLogger.i("MiuiMirrorDragBridge.startDirect: sourceDisplayId="
                    + anchorInfo.sourceDisplayId
                    + " window=" + anchorInfo.windowBinder
                    + " flags=0x" + Integer.toHexString(flags)
                    + " items=" + data.getItemCount()
                    + " token=" + token);
            return token;
        } catch (Throwable t) {
            invalidateDirectApi(api);
            logInvocationFailure("MiuiMirrorDragBridge.startDirect: performDrag failed"
                    + " sourceDisplayId=" + anchorInfo.sourceDisplayId
                    + " window=" + anchorInfo.windowBinder
                    + " flags=0x" + Integer.toHexString(flags), t);
            return null;
        }
    }

    public static boolean injectStarted(int displayId, float x, float y) {
        // HyperOS maps action 5 to broadcastDragStarted() for the destination display.
        return inject(DragEvent.ACTION_DRAG_ENTERED, displayId, x, y);
    }

    public static boolean injectLocation(int displayId, float x, float y) {
        return inject(DragEvent.ACTION_DRAG_LOCATION, displayId, x, y);
    }

    public static boolean injectDrop(int displayId, float x, float y) {
        return inject(DragEvent.ACTION_DROP, displayId, x, y);
    }

    /** Injects one supported mirror drag action into the target display. */
    public static boolean inject(int action, int displayId, float x, float y) {
        if (!isSupportedAction(action) || displayId < 0 || !isFinite(x) || !isFinite(y)) {
            LSPLogger.w("MiuiMirrorDragBridge.inject: invalid event action=" + action
                    + " displayId=" + displayId + " x=" + x + " y=" + y);
            return false;
        }

        Api api = getApi();
        if (api == null) {
            return false;
        }
        try {
            api.inject.invoke(api.manager, action, displayId, x, y);
            LSPLogger.i("MiuiMirrorDragBridge.inject: action=" + actionName(action)
                    + " displayId=" + displayId + " x=" + x + " y=" + y);
            return true;
        } catch (Throwable t) {
            invalidateApi(api);
            LSPLogger.w("MiuiMirrorDragBridge.inject: invocation failed action="
                    + actionName(action) + " displayId=" + displayId, unwrap(t));
            return false;
        }
    }

    /**
     * Starts a mirror drag and immediately delivers ENTERED, LOCATION and DROP at one point.
     * Any failure before DROP automatically cancels the framework token.
     */
    public static IBinder startAndDrop(ClipData data, int displayId, float x, float y) {
        return startAndDrop(data, DEFAULT_DRAG_FLAGS, displayId, x, y);
    }

    public static IBinder startAndDrop(ClipData data, int flags, int displayId,
            float x, float y) {
        if (!isFinite(x) || !isFinite(y)) {
            LSPLogger.w("MiuiMirrorDragBridge.startAndDrop: invalid coordinates x="
                    + x + " y=" + y);
            return null;
        }

        synchronized (DRAG_LOCK) {
            IBinder token = start(data, flags, Display.DEFAULT_DISPLAY);
            return deliverDrop(token, displayId, x, y);
        }
    }

    /**
     * Starts from the anchor window's display, then injects the drop into {@code targetDisplayId}.
     */
    public static IBinder startAndDrop(View anchor, ClipData data, int flags,
            int targetDisplayId, float x, float y) {
        if (!isFinite(x) || !isFinite(y)) {
            LSPLogger.w("MiuiMirrorDragBridge.startAndDrop: invalid coordinates x="
                    + x + " y=" + y);
            return null;
        }

        synchronized (DRAG_LOCK) {
            IBinder token = start(anchor, data, flags);
            return deliverDrop(token, targetDisplayId, x, y);
        }
    }

    private static IBinder deliverDrop(IBinder token, int targetDisplayId, float x, float y) {
        if (token == null) {
            return null;
        }

        boolean dropped = false;
        try {
            if (!injectStarted(targetDisplayId, x, y)
                    || !injectLocation(targetDisplayId, x, y)
                    || !injectDrop(targetDisplayId, x, y)) {
                return null;
            }
            dropped = true;
            LSPLogger.i("MiuiMirrorDragBridge.startAndDrop: DROP delivered targetDisplayId="
                    + targetDisplayId + " x=" + x + " y=" + y + " token=" + token);
            return token;
        } finally {
            if (!dropped) {
                cancel(token);
            }
        }
    }

    /** Cancels an incomplete mirror drag. A successful DROP must not be cancelled here. */
    public static boolean cancel(IBinder token) {
        if (token == null) {
            return false;
        }
        Api api = getApi();
        if (api == null) {
            return false;
        }
        try {
            api.cancel.invoke(api.manager, token);
            LSPLogger.i("MiuiMirrorDragBridge.cancel: token=" + token);
            return true;
        } catch (Throwable t) {
            invalidateApi(api);
            LSPLogger.w("MiuiMirrorDragBridge.cancel: invocation failed token=" + token,
                    unwrap(t));
            return false;
        }
    }

    private static Api getApi() {
        Api api = sApi;
        if (api != null) {
            return api;
        }
        synchronized (API_LOCK) {
            api = sApi;
            if (api != null) {
                return api;
            }
            try {
                Class<?> managerClass = Class.forName(CLASS_NAME);
                Method get = accessible(managerClass.getDeclaredMethod("get"));
                Object manager = get.invoke(null);
                if (manager == null) {
                    throw new IllegalStateException("MirrorManager.get() returned null");
                }

                Method start = accessible(managerClass.getDeclaredMethod("startMirrorDrag",
                        ClipData.class, int.class, int.class));
                Method inject = accessible(managerClass.getDeclaredMethod("injectDragEvent",
                        int.class, int.class, float.class, float.class));
                Method cancel = accessible(managerClass.getDeclaredMethod("cancelDragAndDrop",
                        IBinder.class));
                api = new Api(manager, start, inject, cancel);
                sApi = api;
                LSPLogger.i("MiuiMirrorDragBridge: HyperOS mirror drag API ready classLoader="
                        + managerClass.getClassLoader());
                return api;
            } catch (Throwable t) {
                LSPLogger.w("MiuiMirrorDragBridge: HyperOS mirror drag API unavailable",
                        unwrap(t));
                return null;
            }
        }
    }

    private static DirectApi getDirectApi() {
        DirectApi api = sDirectApi;
        if (api != null && api.binder.isBinderAlive()) {
            return api;
        }
        synchronized (API_LOCK) {
            api = sDirectApi;
            if (api != null && api.binder.isBinderAlive()) {
                return api;
            }
            sDirectApi = null;
            try {
                Class<?> serviceManagerClass = Class.forName("android.os.ServiceManager");
                Method getService = accessible(serviceManagerClass.getDeclaredMethod(
                        "getService", String.class));
                Object binderResult = getService.invoke(null, MIRROR_SERVICE_NAME);
                if (!(binderResult instanceof IBinder)) {
                    throw new IllegalStateException("ServiceManager returned no binder for "
                            + MIRROR_SERVICE_NAME);
                }
                IBinder binder = (IBinder) binderResult;

                Class<?> stubClass = Class.forName(MIRROR_SERVICE_STUB);
                Method asInterface = accessible(stubClass.getDeclaredMethod(
                        "asInterface", IBinder.class));
                Object service = asInterface.invoke(null, binder);
                if (service == null) {
                    throw new IllegalStateException("IMirrorService.Stub.asInterface returned null");
                }

                Class<?> serviceInterface = Class.forName(MIRROR_SERVICE_INTERFACE);
                Class<?> iWindowClass = Class.forName(IWINDOW_CLASS_NAME);
                Method performDrag = accessible(serviceInterface.getDeclaredMethod("performDrag",
                        iWindowClass, int.class, int.class, ClipData.class, Bitmap.class));
                api = new DirectApi(binder, service, performDrag);
                sDirectApi = api;
                LSPLogger.i("MiuiMirrorDragBridge: direct IMirrorService API ready"
                        + " binder=" + binder + " proxy=" + service.getClass().getName());
                return api;
            } catch (Throwable t) {
                logInvocationFailure("MiuiMirrorDragBridge: direct IMirrorService unavailable",
                        t);
                return null;
            }
        }
    }

    private static AnchorInfo resolveAnchor(View anchor) {
        if (anchor == null || !anchor.isAttachedToWindow()) {
            LSPLogger.w("MiuiMirrorDragBridge.resolveAnchor: anchor is null or detached");
            return null;
        }
        try {
            Method getViewRootImpl = accessible(View.class.getDeclaredMethod("getViewRootImpl"));
            Object viewRoot = getViewRootImpl.invoke(anchor);
            if (viewRoot == null) {
                throw new IllegalStateException("anchor has no ViewRootImpl");
            }

            Field windowField = accessible(findField(viewRoot.getClass(), "mWindow"));
            Object window = windowField.get(viewRoot);
            Class<?> iWindowClass = Class.forName(IWINDOW_CLASS_NAME);
            if (window == null || !iWindowClass.isInstance(window)) {
                throw new IllegalStateException("ViewRootImpl.mWindow is not IWindow: "
                        + (window == null ? "null" : window.getClass().getName()));
            }

            int viewDisplayId = anchor.getDisplay() == null
                    ? Display.INVALID_DISPLAY : anchor.getDisplay().getDisplayId();
            int rootDisplayId = getRootDisplayId(viewRoot);
            if (viewDisplayId >= 0 && rootDisplayId >= 0
                    && viewDisplayId != rootDisplayId) {
                LSPLogger.w("MiuiMirrorDragBridge.resolveAnchor: display mismatch view="
                        + viewDisplayId + " root=" + rootDisplayId);
            }
            int sourceDisplayId = rootDisplayId >= 0 ? rootDisplayId : viewDisplayId;
            if (sourceDisplayId < 0) {
                throw new IllegalStateException("anchor has no valid source display");
            }

            IBinder windowBinder = window instanceof IInterface
                    ? ((IInterface) window).asBinder() : null;
            if (windowBinder == null || !windowBinder.isBinderAlive()) {
                throw new IllegalStateException("anchor IWindow binder is null or dead");
            }
            LSPLogger.i("MiuiMirrorDragBridge.resolveAnchor: sourceDisplayId="
                    + sourceDisplayId + " viewDisplayId=" + viewDisplayId
                    + " rootDisplayId=" + rootDisplayId
                    + " root=" + viewRoot.getClass().getName()
                    + " window=" + windowBinder);
            return new AnchorInfo(window, windowBinder, sourceDisplayId);
        } catch (Throwable t) {
            logInvocationFailure("MiuiMirrorDragBridge.resolveAnchor: failed", t);
            return null;
        }
    }

    private static int getRootDisplayId(Object viewRoot) {
        try {
            Field displayField = accessible(findField(viewRoot.getClass(), "mDisplay"));
            Object display = displayField.get(viewRoot);
            return display instanceof Display
                    ? ((Display) display).getDisplayId() : Display.INVALID_DISPLAY;
        } catch (Throwable t) {
            LSPLogger.w("MiuiMirrorDragBridge.getRootDisplayId: unavailable "
                    + throwableChain(t));
            return Display.INVALID_DISPLAY;
        }
    }

    private static Field findField(Class<?> type, String name) throws NoSuchFieldException {
        Class<?> current = type;
        while (current != null) {
            try {
                return current.getDeclaredField(name);
            } catch (NoSuchFieldException ignored) {
                current = current.getSuperclass();
            }
        }
        throw new NoSuchFieldException(type.getName() + "." + name);
    }

    private static Method accessible(Method method) {
        method.setAccessible(true);
        return method;
    }

    private static Field accessible(Field field) {
        field.setAccessible(true);
        return field;
    }

    private static void invalidateApi(Api failedApi) {
        synchronized (API_LOCK) {
            if (sApi == failedApi) {
                sApi = null;
            }
        }
    }

    private static void invalidateDirectApi(DirectApi failedApi) {
        synchronized (API_LOCK) {
            if (sDirectApi == failedApi) {
                sDirectApi = null;
            }
        }
    }

    private static boolean isSupportedAction(int action) {
        return action == DragEvent.ACTION_DRAG_ENTERED
                || action == DragEvent.ACTION_DRAG_LOCATION
                || action == DragEvent.ACTION_DROP;
    }

    private static boolean isFinite(float value) {
        return !Float.isNaN(value) && !Float.isInfinite(value);
    }

    private static String actionName(int action) {
        switch (action) {
            case DragEvent.ACTION_DRAG_ENTERED:
                return "ENTERED";
            case DragEvent.ACTION_DRAG_LOCATION:
                return "LOCATION";
            case DragEvent.ACTION_DROP:
                return "DROP";
            default:
                return String.valueOf(action);
        }
    }

    private static void logInvocationFailure(String message, Throwable throwable) {
        LSPLogger.w(message + " causeChain=" + throwableChain(throwable), unwrap(throwable));
    }

    private static String throwableChain(Throwable throwable) {
        StringBuilder result = new StringBuilder();
        Throwable current = throwable;
        int depth = 0;
        while (current != null && depth++ < 8) {
            if (result.length() > 0) result.append(" <- ");
            result.append(current.getClass().getName());
            if (current.getMessage() != null && !current.getMessage().isEmpty()) {
                result.append(": ").append(current.getMessage());
            }
            Throwable next = current.getCause();
            if (next == current) break;
            current = next;
        }
        return result.toString();
    }

    private static Throwable unwrap(Throwable throwable) {
        Throwable current = throwable;
        while (current instanceof InvocationTargetException
                && current.getCause() != null && current.getCause() != current) {
            current = current.getCause();
        }
        return current;
    }

    private static final class Api {
        final Object manager;
        final Method start;
        final Method inject;
        final Method cancel;

        Api(Object manager, Method start, Method inject, Method cancel) {
            this.manager = manager;
            this.start = start;
            this.inject = inject;
            this.cancel = cancel;
        }
    }

    private static final class DirectApi {
        final IBinder binder;
        final Object service;
        final Method performDrag;

        DirectApi(IBinder binder, Object service, Method performDrag) {
            this.binder = binder;
            this.service = service;
            this.performDrag = performDrag;
        }
    }

    private static final class AnchorInfo {
        final Object window;
        final IBinder windowBinder;
        final int sourceDisplayId;

        AnchorInfo(Object window, IBinder windowBinder, int sourceDisplayId) {
            this.window = window;
            this.windowBinder = windowBinder;
            this.sourceDisplayId = sourceDisplayId;
        }
    }
}
