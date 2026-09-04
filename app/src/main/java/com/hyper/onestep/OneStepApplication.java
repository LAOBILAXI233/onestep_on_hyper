package com.hyper.onestep;

import android.app.Application;
import android.os.UserManager;

import com.hyper.onestep.data.apps.LauncherAppRepository;
import com.leaf.hyperdragshare.codex.DragShareLog;
import com.leaf.hyperdragshare.codex.DragShareSettings;
import com.leaf.hyperdragshare.codex.TextSegmenter;

public final class OneStepApplication extends Application {
    private static volatile OneStepApplication sInstance;

    public static OneStepApplication getInstance() {
        return sInstance;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sInstance = this;
        DragShareLog.configure(DragShareSettings.readLocal(this));
        TextSegmenter.preloadIfEnabled(this);
        UserManager userManager = getSystemService(UserManager.class);
        if (userManager == null || userManager.isUserUnlocked()) {
            LauncherAppRepository.preloadLauncherApps(this);
        }
    }
}
