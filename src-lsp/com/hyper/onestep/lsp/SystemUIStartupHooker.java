package com.hyper.onestep.lsp;
import io.github.libxposed.api.XposedInterface;
// 拦截 SystemUI 启动并接入 OneStep 初始化
public class SystemUIStartupHooker implements XposedInterface.Hooker {
    // 拦截SystemUI启动并在原方法返回后初始化侧边栏控制器
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        LSPLogger.i("SystemUIStartupHooker.intercept: BEFORE proceed");
        Object thisObject = null;
        try {
            thisObject = chain.getThisObject();
            LSPLogger.d("SystemUIStartupHooker.intercept: thisObject=" + thisObject
                    + " class=" + (thisObject == null ? "null"
                            : thisObject.getClass().getName()));
        } catch (Throwable t) {
            LSPLogger.e("SystemUIStartupHooker.intercept: getThisObject failed", t);
        }
        Object result;
        try {
            result = chain.proceed();
            LSPLogger.i("SystemUIStartupHooker.intercept: AFTER proceed, result=" + result);
        } catch (Throwable t) {
            LSPLogger.e("SystemUIStartupHooker.intercept: original method threw", t);
            throw t;
        }
        try {
            if (thisObject == null) {
                LSPLogger.e("SystemUIStartupHooker.intercept: thisObject null, skip sidebar init");
                return result;
            }
            android.content.Context context = extractContext(thisObject);
            if (context == null) {
                LSPLogger.e("SystemUIStartupHooker.intercept: extractContext returned null, "
                        + "sidebar init aborted");
                return result;
            }
            LSPLogger.i("SystemUIStartupHooker.intercept: context extracted="
                    + context + " pkg=" + context.getPackageName());
            LSPLogger.initialize(context);
            try {
                com.hyper.onestep.SidebarApplication.setInstance(context);
            } catch (Throwable t) {
                LSPLogger.w("SystemUIStartupHooker.intercept: "
                        + "SidebarApplication.setInstance failed: " + t.getMessage());
            }
            LSPLogger.i("SystemUIStartupHooker.intercept: calling SidebarController.init()");
            com.hyper.onestep.SidebarController controller =
                    com.hyper.onestep.SidebarController.getInstance(context);
            controller.init();
            LSPLogger.i("SystemUIStartupHooker.intercept: SidebarController.init() returned");
        } catch (Throwable t) {
            LSPLogger.e("SystemUIStartupHooker.intercept: sidebar init failed", t);
        }
        return result;
    }
    private android.content.Context extractContext(Object obj) {
        LSPLogger.d("extractContext: scanning class hierarchy for mContext field");
        Class<?> c = obj.getClass();
        int depth = 0;
        while (c != null && c != Object.class) {
            try {
                java.lang.reflect.Field f = c.getDeclaredField("mContext");
                f.setAccessible(true);
                Object v = f.get(obj);
                LSPLogger.d("extractContext: found mContext at depth=" + depth
                        + " in " + c.getName() + " value=" + v);
                if (v instanceof android.content.Context) {
                    return (android.content.Context) v;
                }
            } catch (NoSuchFieldException ignored) {
            } catch (Throwable t) {
                LSPLogger.w("extractContext: reflection error at " + c.getName()
                        + ": " + t.getMessage());
                break;
            }
            c = c.getSuperclass();
            depth++;
        }
        LSPLogger.w("extractContext: mContext not found in hierarchy, scanning by type");
        c = obj.getClass();
        while (c != null && c != Object.class) {
            for (java.lang.reflect.Field f : c.getDeclaredFields()) {
                if (!android.content.Context.class.isAssignableFrom(f.getType())) {
                    continue;
                }
                try {
                    f.setAccessible(true);
                    Object v = f.get(obj);
                    if (v instanceof android.content.Context) {
                        LSPLogger.i("extractContext: fallback found Context field "
                                + f.getName() + " in " + c.getName());
                        return (android.content.Context) v;
                    }
                } catch (Throwable ignored) {
                }
            }
            c = c.getSuperclass();
        }
        return null;
    }
}
