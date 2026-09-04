package com.leaf.hyperdragshare.codex;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;

import de.robv.android.xposed.XposedHelpers;

final class PortalContentCaptureSource {
    private PortalContentCaptureSource() {}

    static CapturedContent capture(Object taplusService) {
        if (taplusService == null) {
            return null;
        }
        Class<?> serviceClass = taplusService.getClass();
        try {
            Object textMode = XposedHelpers.getStaticObjectField(serviceClass, "sIsTextMode");
            if (Boolean.TRUE.equals(textMode)) {
                String value = (String) XposedHelpers.getStaticObjectField(serviceClass, "sContent");
                CapturedContent text = CapturedContent.text(value, null, null);
                if (text != null) {
                    return text;
                }
            }
        } catch (Throwable ignored) {
            
        }
        try {
            Bitmap value = (Bitmap) XposedHelpers.callStaticMethod(serviceClass, "getBitmap");
            return CapturedContent.image(value, null, null, false);
        } catch (Throwable ignored) {
            return null;
        }
    }

    static PointF initialPoint(Object taplusService, float fallbackX, float fallbackY) {
        if (fallbackX >= 0f && fallbackY >= 0f) {
            return new PointF(fallbackX, fallbackY);
        }
        if (taplusService != null) {
            try {
                PointF point = (PointF) XposedHelpers.callMethod(
                        taplusService,
                        "getFirstTouchPoint");
                if (point != null) {
                    return new PointF(point.x, point.y);
                }
            } catch (Throwable ignored) {
                
            }
            try {
                Point point = (Point) XposedHelpers.callStaticMethod(
                        taplusService.getClass(),
                        "getInjectorPoint");
                if (point != null) {
                    return new PointF(point.x, point.y);
                }
            } catch (Throwable ignored) {
                
            }
        }
        return null;
    }
}
