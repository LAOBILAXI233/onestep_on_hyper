package com.hyper.onestep;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;

import com.hyper.onestep.lsp.LSPLogger;

/**
 * Stub for the original SidebarApplication.
 *
 * The original SmartisanOS app was a full Application; here, the LSP module runs
 * inside SystemUI's process and has no real Application instance of its own.
 *
 * We expose a setInstance(Context) / getInstance() API so legacy callers
 * (CalendarIcon, NetworkHandler, Tracker.init, etc.) still compile and have a
 * usable Context reference.
 */
public class SidebarApplication extends Application {

    private static volatile SidebarApplication sInstance;

    public static SidebarApplication getInstance() {
        if (sInstance == null) {
            LSPLogger.w("SidebarApplication.getInstance: sInstance is null, "
                    + "LSP module not initialized via setInstance()");
        }
        return sInstance;
    }

    /**
     * Set by the LSP hook initialization path. The passed-in Context is wrapped
     * in a fake SidebarApplication so legacy getInstance().getAssets() / etc. work.
     *
     * 在 SystemUI 进程内运行时，传入的 context 是 SystemUIApplication，其 getResources()
     * 找不到本模块 APK 的 R 资源。这里用 createPackageContext 把 Context 切到本模块，
     * 这样后续通过 getInstance() 拿到的 Context 可以正常加载 R 资源。
     */
    public static synchronized void setInstance(Context context) {
        if (sInstance == null && context != null) {
            try {
                Context wrapped = context;
                try {
                    wrapped = context.createPackageContext(
                            "com.hyper.onestep",
                            Context.CONTEXT_IGNORE_SECURITY);
                    LSPLogger.i("SidebarApplication.setInstance: wrapped to our pkg="
                            + wrapped.getPackageName());
                } catch (Throwable t) {
                    LSPLogger.e("SidebarApplication.setInstance: createPackageContext "
                            + "failed, fallback to original", t);
                    wrapped = context.getApplicationContext();
                }
                sInstance = new SidebarApplication();
                sInstance.attachBaseContext(wrapped);
                LSPLogger.i("SidebarApplication.setInstance: ok, pkg="
                        + sInstance.getPackageName()
                        + " resourcesPkg=" + sInstance.getResources()
                            .getResourcePackageName(com.hyper.onestep.R.dimen.sidebar_width));
            } catch (Throwable t) {
                LSPLogger.e("SidebarApplication.setInstance: failed", t);
            }
        }
    }

    @Override
    public AssetManager getAssets() {
        if (sInstance != null && sInstance != this) {
            return sInstance.getAssets();
        }
        return super.getAssets();
    }
}
