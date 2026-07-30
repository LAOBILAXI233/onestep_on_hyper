package com.hyper.onestep.lsp;

import android.graphics.Bitmap;
import android.hardware.HardwareBuffer;
import android.view.Display;

import java.lang.reflect.Method;

/** Captures a display from code injected into {@code system_server}. */
public final class ScreenCaptureCompat {
    private static final String LOCAL_SERVICES = "com.android.server.LocalServices";
    private static final String DISPLAY_MANAGER_INTERNAL =
            "android.hardware.display.DisplayManagerInternal";

    private ScreenCaptureCompat() {}

    public static Bitmap captureDefaultDisplay(ClassLoader systemServerClassLoader) {
        return captureDisplay(systemServerClassLoader, Display.DEFAULT_DISPLAY);
    }

    /**
     * Returns an independent software bitmap, or {@code null} when capture is unavailable.
     *
     * <p>The returned screenshot respects the platform's secure-layer policy. The hardware
     * buffer obtained from SurfaceFlinger is copied before it is closed, so callers may pass the
     * result to another Binder service without retaining native display resources.</p>
     */
    public static Bitmap captureDisplay(ClassLoader systemServerClassLoader, int displayId) {
        if (systemServerClassLoader == null) {
            LSPLogger.w("ScreenCaptureCompat: system_server ClassLoader is null");
            return null;
        }

        Object screenshot = null;
        HardwareBuffer hardwareBuffer = null;
        Bitmap wrappedBitmap = null;
        try {
            Class<?> localServicesClass = Class.forName(
                    LOCAL_SERVICES, false, systemServerClassLoader);
            Class<?> displayManagerInternalClass = Class.forName(
                    DISPLAY_MANAGER_INTERNAL, false, systemServerClassLoader);

            Method getService = localServicesClass.getDeclaredMethod("getService", Class.class);
            getService.setAccessible(true);
            Object displayManager = getService.invoke(null, displayManagerInternalClass);
            if (displayManager == null) {
                LSPLogger.w("ScreenCaptureCompat: DisplayManagerInternal is unavailable");
                return null;
            }

            Method capture = findCaptureMethod(displayManagerInternalClass);
            screenshot = capture.invoke(displayManager, displayId);
            if (screenshot == null) {
                LSPLogger.w("ScreenCaptureCompat: capture returned null for display=" + displayId);
                return null;
            }

            Method asBitmap = screenshot.getClass().getDeclaredMethod("asBitmap");
            asBitmap.setAccessible(true);
            Object bitmapValue = asBitmap.invoke(screenshot);
            if (!(bitmapValue instanceof Bitmap)) {
                LSPLogger.w("ScreenCaptureCompat: screenshot did not contain a Bitmap");
                return null;
            }
            wrappedBitmap = (Bitmap) bitmapValue;

            Method getHardwareBuffer = screenshot.getClass().getDeclaredMethod(
                    "getHardwareBuffer");
            getHardwareBuffer.setAccessible(true);
            Object bufferValue = getHardwareBuffer.invoke(screenshot);
            if (bufferValue instanceof HardwareBuffer) {
                hardwareBuffer = (HardwareBuffer) bufferValue;
            }

            Bitmap copy = wrappedBitmap.copy(Bitmap.Config.ARGB_8888, false);
            if (copy == null) {
                LSPLogger.w("ScreenCaptureCompat: hardware Bitmap copy returned null");
                return null;
            }
            LSPLogger.i("ScreenCaptureCompat: captured display=" + displayId
                    + " size=" + copy.getWidth() + "x" + copy.getHeight());
            return copy;
        } catch (Throwable error) {
            LSPLogger.e("ScreenCaptureCompat: display capture failed", error);
            return null;
        } finally {
            if (wrappedBitmap != null) {
                try {
                    wrappedBitmap.recycle();
                } catch (Throwable ignored) {
                }
            }
            if (hardwareBuffer != null) {
                try {
                    hardwareBuffer.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static Method findCaptureMethod(Class<?> displayManagerInternalClass)
            throws NoSuchMethodException {
        try {
            Method method = displayManagerInternalClass.getDeclaredMethod(
                    "userScreenshot", int.class);
            method.setAccessible(true);
            return method;
        } catch (NoSuchMethodException missingUserScreenshot) {
            Method method = displayManagerInternalClass.getDeclaredMethod(
                    "systemScreenshot", int.class);
            method.setAccessible(true);
            return method;
        }
    }
}
