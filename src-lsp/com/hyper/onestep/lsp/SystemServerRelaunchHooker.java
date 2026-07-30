package com.hyper.onestep.lsp;
import io.github.libxposed.api.XposedInterface;
/** Marks OneStep virtual displays as HyperOS UIAgent displays for relaunch policy. */
public final class SystemServerRelaunchHooker implements XposedInterface.Hooker {
    // 拦截UIAgent显示查询，将OneStep虚拟显示标记为UIAgent显示以避免重启
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(0);
        if (arg instanceof Integer && isOneStepDisplay((Integer) arg)) {
            LSPLogger.d("SystemServerRelaunchHooker: UIAgent display=" + arg);
            return true;
        }
        return chain.proceed();
    }
    // 判断指定displayId是否属于OneStep槽位虚拟显示
    static boolean isOneStepDisplay(int displayId) {
        try {
            String name = getDisplayNameFromGlobal(displayId);
            return name != null && name.startsWith("OneStep-slot-");
        } catch (Throwable t) {
            LSPLogger.d("SystemServerRelaunchHooker: global display lookup failed: " + t);
            return false;
        }
    }
    private static String getDisplayNameFromGlobal(int displayId) throws Throwable {
        Class<?> globalClass = Class.forName("android.hardware.display.DisplayManagerGlobal");
        java.lang.reflect.Method getInstance = globalClass.getDeclaredMethod("getInstance");
        getInstance.setAccessible(true);
        Object global = getInstance.invoke(null);
        java.lang.reflect.Method getDisplayInfo = null;
        for (java.lang.reflect.Method method : globalClass.getDeclaredMethods()) {
            if ("getDisplayInfo".equals(method.getName())
                    && method.getParameterTypes().length == 1
                    && method.getParameterTypes()[0] == int.class) {
                getDisplayInfo = method;
                break;
            }
        }
        if (getDisplayInfo == null) return null;
        getDisplayInfo.setAccessible(true);
        Object displayInfo = getDisplayInfo.invoke(global, displayId);
        if (displayInfo == null) return null;
        java.lang.reflect.Field name = displayInfo.getClass().getDeclaredField("name");
        name.setAccessible(true);
        Object value = name.get(displayInfo);
        return value instanceof String ? (String) value : null;
    }
}
