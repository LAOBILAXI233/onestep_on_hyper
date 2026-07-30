package com.hyper.onestep.lsp;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;
import java.lang.reflect.Field;
import io.github.libxposed.api.XposedInterface;
/**
 * Routes a parked task to display 0 as part of the Recents launch transaction.
 *
 * <p>A standalone moveRootTaskToDisplay before startActivityFromRecents creates a separate
 * no-animation reparent, briefly exposing a black surface before Launcher starts its own
 * TO_FRONT transition. Supplying display 0 through the existing launch options lets ATMS include
 * the reparent in that same Recents transition.</p>
 */
public final class BackgroundTaskActivationHooker implements XposedInterface.Hooker {
    // 拦截Recents启动，将停靠在OneStep显示的任务通过启动选项路由到默认显示
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Context context = findContext(chain.getThisObject());
        int taskId = taskIdArgument(chain);
        Bundle options = optionsArgument(chain);
        if (context != null && taskId > 0 && options != null) {
            routeParkedTaskToDefaultDisplay(context, taskId, options);
        }
        return chain.proceed();
    }
    private static int taskIdArgument(XposedInterface.Chain chain) {
        for (Object argument : chain.getArgs()) {
            if (argument instanceof Integer && (Integer) argument > 0) {
                return (Integer) argument;
            }
        }
        return -1;
    }
    private static Bundle optionsArgument(XposedInterface.Chain chain) {
        for (Object argument : chain.getArgs()) {
            if (argument instanceof Bundle) return (Bundle) argument;
        }
        return null;
    }
    private static void routeParkedTaskToDefaultDisplay(Context context, int taskId,
            Bundle optionsBundle) {
        if (OneStepStateBridge.read(context).enabled) return;
        int displayId = TaskResizer.findTaskDisplayId(context, taskId);
        if (!SystemServerRelaunchHooker.isOneStepDisplay(displayId)) return;
        try {
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(0);
            optionsBundle.putAll(options.toBundle());
            LSPLogger.i("BackgroundTaskActivationHooker: routed task=" + taskId
                    + " from display=" + displayId + " through Recents options");
        } catch (Throwable t) {
            LSPLogger.e("BackgroundTaskActivationHooker: route failed task=" + taskId
                    + " display=" + displayId, t);
        }
    }
    private static Context findContext(Object target) {
        for (Class<?> type = target == null ? null : target.getClass();
                type != null && type != Object.class; type = type.getSuperclass()) {
            for (Field field : type.getDeclaredFields()) {
                if (!Context.class.isAssignableFrom(field.getType())) continue;
                try {
                    field.setAccessible(true);
                    Object value = field.get(target);
                    if (value instanceof Context) return (Context) value;
                } catch (Throwable ignored) {
                }
            }
        }
        LSPLogger.d("BackgroundTaskActivationHooker: system context unavailable");
        return null;
    }
}
