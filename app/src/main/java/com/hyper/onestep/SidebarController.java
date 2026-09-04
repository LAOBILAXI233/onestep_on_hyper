package com.hyper.onestep;

import android.content.Context;

import com.hyper.onestep.view.ContentView;

public final class SidebarController {

    public interface Host {
        Context getHostContext();

        void resumeTopView();

        void dismissContent(boolean animate);

        void showContent(ContentView.ContentType contentType);

        ContentView.ContentType getCurrentContentType();

        void setSidebarMode(int mode);

        int getSidebarMode();

        void toggleMainTaskRotation();

        void exitOneStepMode();

        DragHandle getSidebarRootView();
    }

    public interface DragHandle {
        void stopDrag();
    }

    private static volatile Host sHost;

    public static void setHost(Host host) {
        sHost = host;
    }

    public static SidebarController getInstance(Context context) {
        return new SidebarController();
    }

    public static SidebarController peekInstance() {
        return new SidebarController();
    }

    private static Host host() {
        return sHost;
    }

    public Context getHostContext() {
        Host host = host();
        return host == null ? null : host.getHostContext();
    }

    public void resumeTopView() {
        Host host = host();
        if (host != null) {
            host.resumeTopView();
        }
    }

    public void dismissContent(boolean animate) {
        Host host = host();
        if (host != null) {
            host.dismissContent(animate);
        }
    }

    public void showContent(ContentView.ContentType contentType) {
        Host host = host();
        if (host != null) {
            host.showContent(contentType);
        }
    }

    public ContentView.ContentType getCurrentContentType() {
        Host host = host();
        return host == null ? ContentView.ContentType.NONE : host.getCurrentContentType();
    }

    public void setSidebarMode(int mode) {
        Host host = host();
        if (host != null) {
            host.setSidebarMode(mode);
        }
    }

    public int getSidebarMode() {
        Host host = host();
        return host == null ? SidebarMode.MODE_LEFT : host.getSidebarMode();
    }

    public void toggleMainTaskRotation() {
        Host host = host();
        if (host != null) {
            host.toggleMainTaskRotation();
        }
    }

    public void exitOneStepMode() {
        Host host = host();
        if (host != null) {
            host.exitOneStepMode();
        }
    }

    public DragHandle getSidebarRootView() {
        Host host = host();
        return host == null ? null : host.getSidebarRootView();
    }
}
