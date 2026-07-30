package com.hyper.onestep.lsp;

import android.view.MotionEvent;

import io.github.libxposed.api.XposedInterface;

/** Inversely maps launcher input before its transformed DecorView dispatches the event. */
public final class LauncherTouchHooker implements XposedInterface.Hooker {
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(0);
        MotionEvent event = arg instanceof MotionEvent ? (MotionEvent) arg : null;
        boolean mapped = LauncherTransformController.toContent(event);
        try {
            return chain.proceed();
        } finally {
            if (mapped) LauncherTransformController.toScreen(event);
        }
    }
}
