package com.leaf.hyperdragshare.codex;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.view.accessibility.AccessibilityManager;

import java.util.List;

final class AccessibilityRuntimeStatus {
    private static volatile boolean connected;
    private static volatile boolean rootInputReady;

    private AccessibilityRuntimeStatus() {}

    static void setConnected(boolean value) {
        connected = value;
        if (!value) {
            rootInputReady = false;
        }
    }

    static void setRootInputReady(boolean value) {
        rootInputReady = value && connected;
    }

    static boolean isConnected() {
        return connected;
    }

    static boolean isRootInputReady() {
        return rootInputReady;
    }

    static boolean isServiceEnabled(Context context) {
        if (context == null) {
            return false;
        }
        try {
            AccessibilityManager manager = (AccessibilityManager) context.getSystemService(
                    Context.ACCESSIBILITY_SERVICE);
            if (manager == null) {
                return false;
            }
            List<AccessibilityServiceInfo> services = manager.getEnabledAccessibilityServiceList(
                    AccessibilityServiceInfo.FEEDBACK_ALL_MASK);
            for (AccessibilityServiceInfo service : services) {
                if (service == null || service.getResolveInfo() == null
                        || service.getResolveInfo().serviceInfo == null) {
                    continue;
                }
                String packageName = service.getResolveInfo().serviceInfo.packageName;
                String className = service.getResolveInfo().serviceInfo.name;
                if (context.getPackageName().equals(packageName)
                        && (DragShareAccessibilityService.class.getName().equals(className)
                        || className.endsWith(".DragShareAccessibilityService"))) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
            
        }
        return false;
    }
}
