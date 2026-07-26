package android.os;

import java.lang.reflect.Method;

/**
 * Stub for hidden android.os.SystemProperties.
 * Reflectively calls the real SystemProperties at runtime.
 */
public class SystemProperties {
    private static Method sGetInt;
    private static Method sGet;
    private static boolean sInited;

    private static void init() {
        if (sInited) return;
        sInited = true;
        try {
            Class<?> clazz = Class.forName("android.os.SystemProperties");
            sGetInt = clazz.getMethod("getInt", String.class, int.class);
            sGet = clazz.getMethod("get", String.class, String.class);
        } catch (Throwable t) {
            // ignore
        }
    }

    public static int getInt(String key, int def) {
        init();
        if (sGetInt != null) {
            try {
                return (Integer) sGetInt.invoke(null, key, def);
            } catch (Throwable t) {
                // ignore
            }
        }
        return def;
    }

    public static String get(String key, String def) {
        init();
        if (sGet != null) {
            try {
                return (String) sGet.invoke(null, key, def);
            } catch (Throwable t) {
                // ignore
            }
        }
        return def;
    }
}
