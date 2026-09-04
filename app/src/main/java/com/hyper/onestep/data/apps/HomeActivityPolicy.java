package com.hyper.onestep.data.apps;

import android.content.pm.ApplicationInfo;

public final class HomeActivityPolicy {
    private HomeActivityPolicy() {
    }

    public static boolean isSystemHome(int applicationFlags, String sourceDir) {
        int systemFlags = ApplicationInfo.FLAG_SYSTEM
                | ApplicationInfo.FLAG_UPDATED_SYSTEM_APP;
        if ((applicationFlags & systemFlags) != 0) {
            return true;
        }
        return sourceDir != null
                && (sourceDir.startsWith("/system/")
                || sourceDir.startsWith("/system_ext/")
                || sourceDir.startsWith("/product/")
                || sourceDir.startsWith("/vendor/")
                || sourceDir.startsWith("/odm/"));
    }
}
