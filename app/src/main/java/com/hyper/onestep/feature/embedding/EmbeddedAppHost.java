package com.hyper.onestep.feature.embedding;

import android.view.View;

import com.hyper.onestep.model.LauncherApp;

public interface EmbeddedAppHost {
    boolean isAvailable();

    View getView();

    default boolean canStartBeforeLayout() {
        return false;
    }

    boolean start(LauncherApp app);

    default boolean restart(LauncherApp app) {
        return start(app);
    }

    void refreshContainerSize();

    default void refreshContainerSize(boolean forceVirtualDisplayResize) {
        refreshContainerSize();
    }

    default void setRenderingEnabled(boolean enabled) {
        View view = getView();
        if (view != null) {
            view.setVisibility(enabled ? View.VISIBLE : View.INVISIBLE);
        }
    }

    default boolean isRenderingEnabled() {
        View view = getView();
        return view != null && view.getVisibility() == View.VISIBLE;
    }

    void sendBack();

    void sendHome();

    void invalidateTaskResolution();

    void closeApp(LauncherApp app, Runnable onClosed);

    void release();

    String getUnavailableReason();
}
