package com.hyper.sidebar.lsp;

import io.github.libxposed.api.XposedInterface;

/**
 * CentralSurfacesImpl.startCentralSurfaces 的 hooker。
 *
 * 在原方法执行完毕后，调用 SidebarController.init() 初始化侧边栏窗口。
 */
public class SystemUIStartupHooker implements XposedInterface.Hooker {

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

        // 先执行原方法，确保 SystemUI 自身初始化完成
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

            // 反射获取 CentralSurfacesImpl 内的 mContext
            android.content.Context context = extractContext(thisObject);
            if (context == null) {
                LSPLogger.e("SystemUIStartupHooker.intercept: extractContext returned null, "
                        + "sidebar init aborted");
                return result;
            }
            LSPLogger.i("SystemUIStartupHooker.intercept: context extracted="
                    + context + " pkg=" + context.getPackageName());
            LSPLogger.initialize(context);

            // 先初始化 SidebarApplication stub，让 CalendarIcon / NetworkHandler
            // 等遗留调用方通过 SidebarApplication.getInstance() 拿到可用 Context
            try {
                com.hyper.sidebar.SidebarApplication.setInstance(context);
            } catch (Throwable t) {
                LSPLogger.w("SystemUIStartupHooker.intercept: "
                        + "SidebarApplication.setInstance failed: " + t.getMessage());
            }

            LSPLogger.i("SystemUIStartupHooker.intercept: calling SidebarController.init()");
            com.hyper.sidebar.SidebarController controller =
                    com.hyper.sidebar.SidebarController.getInstance(context);
            controller.init();
            LSPLogger.i("SystemUIStartupHooker.intercept: SidebarController.init() returned");
        } catch (Throwable t) {
            LSPLogger.e("SystemUIStartupHooker.intercept: sidebar init failed", t);
            // 不让 hook 异常影响 SystemUI 启动
        }

        return result;
    }

    /**
     * 从 CentralSurfacesImpl 实例反射获取 Context。
     */
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

        // 兜底：扫描所有字段，找第一个 Context 类型实例
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
