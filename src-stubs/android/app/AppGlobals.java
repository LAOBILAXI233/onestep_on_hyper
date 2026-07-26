package android.app;

/**
 * Stub for hidden android.app.AppGlobals.
 * Reflectively calls the real AppGlobals at runtime.
 */
public class AppGlobals {
    public static Object getInitialApplication() {
        try {
            Class<?> clazz = Class.forName("android.app.AppGlobals");
            return clazz.getMethod("getInitialApplication").invoke(null);
        } catch (Throwable t) {
            return null;
        }
    }

    public static Object getPackageManager() {
        try {
            Class<?> clazz = Class.forName("android.app.AppGlobals");
            return clazz.getMethod("getPackageManager").invoke(null);
        } catch (Throwable t) {
            return null;
        }
    }
}
