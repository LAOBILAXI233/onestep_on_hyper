package com.leaf.hyperdragshare.codex;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public final class MainHook implements IXposedHookLoadPackage {
    static final String TAPLUS_PACKAGE = "com.miui.contentextension";

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) {
        if (TAPLUS_PACKAGE.equals(lpparam.packageName)) {
            PortalHooks.install(lpparam.classLoader);
        }
    }
}
