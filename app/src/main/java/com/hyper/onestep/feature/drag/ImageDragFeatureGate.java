package com.hyper.onestep.feature.drag;

import java.lang.reflect.Method;

public final class ImageDragFeatureGate {
    public static final String PROPERTY = "onestep.hook.image_drag";

    private ImageDragFeatureGate() {
    }

    public static boolean isEnabled() {
        return Boolean.TRUE.equals(readEnabledOrNull());
    }

    
    
    
    public static Boolean readEnabledOrNull() {
        try {
            Class<?> properties = Class.forName("android.os.SystemProperties");
            Method get = properties.getDeclaredMethod(
                    "get", String.class, String.class);
            get.setAccessible(true);
            Object value = get.invoke(null, PROPERTY, "");
            if ("1".equals(value)) {
                return Boolean.TRUE;
            }
            if ("0".equals(value)) {
                return Boolean.FALSE;
            }
            return null;
        } catch (ReflectiveOperationException | RuntimeException e) {
            return null;
        }
    }
}
