package com.hyper.onestep.lsp;

import android.app.Activity;

import io.github.libxposed.api.XposedInterface;

/** Attaches the transform coordinator after Launcher lifecycle callbacks complete. */
public final class LauncherLifecycleHooker implements XposedInterface.Hooker {
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object result = chain.proceed();
        Object target = chain.getThisObject();
        if (target instanceof Activity) {
            LSPLogger.initialize((Activity) target);
            LauncherTransformController.attach((Activity) target);
        }
        return result;
    }
}
