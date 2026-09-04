package com.leaf.hyperdragshare.codex;

import android.app.Application;

public final class DragShareApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        DragShareLog.configure(DragShareSettings.readLocal(this));
        DragShareDiagnostics.captureRuntimeOnce(this, "module application created", null);
        TextSegmenter.preloadIfEnabled(this);
    }
}
