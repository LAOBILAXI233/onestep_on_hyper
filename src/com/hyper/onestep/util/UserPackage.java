package com.hyper.onestep.util;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.os.UserHandle;

public class UserPackage {
    private static final LOG log = LOG.getInstance(UserPackage.class);

    /**
     * UserHandle.USER_OWNER 在 SDK 36 中已被移除（@SystemApi@hide），
     * 主用户的 userId 始终为 0，这里直接使用字面量保持兼容。
     */
    public static final int USER_OWNER = 0;

    private static Context mContext;

    public static void registerCallback(Context context) {
        log.error("registerCallback");
        mContext = context;
        LauncherApps service = getService(context);
        if (service != null) {
            service.registerCallback(mCallback);
        }
    }

    public static void unregisterCallback(Context context) {
        log.error("unregisterCallback");
        LauncherApps service = getService(context);
        if (service != null) {
            mContext = null;
            service.unregisterCallback(mCallback);
        }
    }

    private static LauncherApps getService(Context context) {
        return ((LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE));
    }

    private static final ServiceCallback mCallback = new ServiceCallback();

    private static class ServiceCallback extends LauncherApps.Callback {

        public void onPackageRemoved(String packageName, UserHandle user) {
            int userId = user != null ? user.hashCode() : -1;
            log.error("onPackageRemoved ["+packageName+"], userId ["+userId+"]");
        }

        public void onPackageAdded(String packageName, UserHandle user) {
        }

        public void onPackageChanged(String packageName, UserHandle user) {
        }

        public void onPackagesAvailable(String[] packageNames, UserHandle user, boolean replacing) {
        }

        public void onPackagesUnavailable(String[] packageNames, UserHandle user, boolean replacing) {
        }
    }
}