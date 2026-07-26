package android.os;

import java.lang.reflect.Method;

/**
 * Stub for hidden android.os.ServiceManager.
 * Reflectively calls the real ServiceManager at runtime.
 */
public class ServiceManager {

    public static IBinder getService(String name) {
        try {
            Class<?> clazz = Class.forName("android.os.ServiceManager");
            Method m = clazz.getMethod("getService", String.class);
            return (IBinder) m.invoke(null, name);
        } catch (Throwable t) {
            return null;
        }
    }

    public static IBinder checkService(String name) {
        try {
            Class<?> clazz = Class.forName("android.os.ServiceManager");
            Method m = clazz.getMethod("checkService", String.class);
            return (IBinder) m.invoke(null, name);
        } catch (Throwable t) {
            return null;
        }
    }

    public static String[] listServices() {
        try {
            Class<?> clazz = Class.forName("android.os.ServiceManager");
            Method m = clazz.getMethod("listServices");
            return (String[]) m.invoke(null);
        } catch (Throwable t) {
            return new String[0];
        }
    }
}
