package com.hyper.onestep.lsp;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;

public final class MultiTaskController {

    public static final String APP_DRAG_MIME = "application/vnd.hyper.onestep.app";

    public static final String APP_DRAG_LOCAL_STATE = "hyper-onestep-app-drag";

    public interface LaunchHost {
        void openAppInMain(String packageName);
    }

    private static volatile LaunchHost sLaunchHost;
    private static volatile MultiTaskController sInstance;

    private final Context mContext;

    private MultiTaskController(Context context) {
        mContext = context.getApplicationContext();
    }

    public static MultiTaskController getInstance(Context context) {
        if (sInstance == null) {
            synchronized (MultiTaskController.class) {
                if (sInstance == null) {
                    sInstance = new MultiTaskController(context);
                }
            }
        }
        return sInstance;
    }

    public static void setLaunchHost(LaunchHost host) {
        sLaunchHost = host;
    }

    public void openAppInMain(String packageName) {
        openAppInMain(packageName == null ? null : ComponentName.unflattenFromString(packageName));
    }

    public void openAppInMain(ComponentName componentName) {
        if (componentName == null) {
            return;
        }
        String packageName = componentName.getPackageName();
        LaunchHost host = sLaunchHost;
        if (host != null && packageName != null && !packageName.isEmpty()) {
            host.openAppInMain(packageName);
        }
    }

    private void openAppInMainLegacy(String packageName) {
        LaunchHost host = sLaunchHost;
        if (host != null && packageName != null && !packageName.isEmpty()) {
            host.openAppInMain(packageName);
        }
    }

    public void unusedOpenAppInMain(String packageName) {
        LaunchHost host = sLaunchHost;
        if (host != null && packageName != null && !packageName.isEmpty()) {
            host.openAppInMain(packageName);
        }
    }

    public static ClipData createAppDragData(String packageName) {
        ClipData clipData = new ClipData("onestep-app",
                new String[]{APP_DRAG_MIME},
                new ClipData.Item(packageName));
        return clipData;
    }

    public static ClipData createAppDragData(ComponentName componentName) {
        return createAppDragData(componentName == null ? null : componentName.flattenToString());
    }

    public Context getContext() {
        return mContext;
    }
}
