package com.hyper.onestep.lsp;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.WindowManager;
// OneStep 跨进程窗口类型与兼容性工具
public final class OneStepCompat {
    private static final String TAG = "OneStepCompat";
    public static final String SYSTEMUI_PACKAGE = "com.android.systemui";
    private static final int WINDOW_TYPE_FOR_SYSTEMUI = resolveWindowType();
    private OneStepCompat() {}
    private static int resolveWindowType() {
        try {
            java.lang.reflect.Field f = WindowManager.LayoutParams.class
                    .getDeclaredField("TYPE_NAVIGATION_BAR_PANEL");
            f.setAccessible(true);
            int v = f.getInt(null);
            LSPLogger.i("OneStepCompat.resolveWindowType: reflected -> " + v);
            return v;
        } catch (Throwable t) {
            LSPLogger.w("OneStepCompat.resolveWindowType: reflection failed, "
                    + "fallback to 2024 (" + t.getMessage() + ")");
            return 2024;
        }
    }
    // 返回当前进程适用的OneStep窗口类型
    public static int getWindowType() {
        boolean isSysUI = isSystemUIProcess();
        int type = isSysUI ? WINDOW_TYPE_FOR_SYSTEMUI
                : WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        LSPLogger.d("OneStepCompat.getWindowType: isSystemUI=" + isSysUI
                + " -> type=" + type);
        return type;
    }
    // 判断当前进程是否为SystemUI进程
    public static boolean isSystemUIProcess() {
        String processName = getCurrentProcessName();
        boolean result = SYSTEMUI_PACKAGE.equals(processName);
        LSPLogger.d("OneStepCompat.isSystemUIProcess: processName=" + processName
                + " -> " + result);
        return result;
    }
    private static String sProcessNameCache;
    private static String getCurrentProcessName() {
        if (sProcessNameCache != null) {
            return sProcessNameCache;
        }
        try {
            String name = (String) Class.forName("android.app.ActivityThread")
                    .getMethod("currentProcessName")
                    .invoke(null);
            if (name != null) {
                sProcessNameCache = name;
                LSPLogger.d("OneStepCompat.getCurrentProcessName: via ActivityThread -> " + name);
                return name;
            }
        } catch (Throwable t) {
            LSPLogger.w("OneStepCompat.getCurrentProcessName: ActivityThread unavailable: "
                    + t.getMessage());
        }
        try {
            Object app = OneStepCompat.class.getClassLoader()
                    .loadClass("android.app.AppGlobals")
                    .getMethod("getInitialApplication")
                    .invoke(null);
            sProcessNameCache = String.valueOf(app);
            LSPLogger.d("OneStepCompat.getCurrentProcessName: via AppGlobals -> " + sProcessNameCache);
            return sProcessNameCache;
        } catch (Throwable t) {
            LSPLogger.w("OneStepCompat.getCurrentProcessName: AppGlobals fallback failed", t);
        }
        sProcessNameCache = "";
        return sProcessNameCache;
    }
    // 检查设备是否配置显示导航栏
    public static boolean hasNavigationBar(Context context) {
        try {
            Resources r = context.getResources();
            int resId = r.getIdentifier("config_showNavigationBar", "bool", "android");
            LSPLogger.d("OneStepCompat.hasNavigationBar: resId=" + resId);
            if (resId != 0) {
                boolean v = r.getBoolean(resId);
                LSPLogger.d("OneStepCompat.hasNavigationBar: -> " + v);
                return v;
            }
        } catch (Throwable t) {
            LSPLogger.e("OneStepCompat.hasNavigationBar: lookup failed", t);
        }
        LSPLogger.w("OneStepCompat.hasNavigationBar: fallback -> false");
        return false;
    }
    // 获取导航栏高度（像素），失败时回退到默认密度值
    public static int getNavigationBarHeight(Context context) {
        try {
            Resources r = context.getResources();
            int resId = r.getIdentifier("navigation_bar_height", "dimen", "android");
            LSPLogger.d("OneStepCompat.getNavigationBarHeight: resId=" + resId);
            if (resId != 0) {
                int v = r.getDimensionPixelSize(resId);
                LSPLogger.d("OneStepCompat.getNavigationBarHeight: -> " + v + "px");
                return v;
            }
        } catch (Throwable t) {
            LSPLogger.e("OneStepCompat.getNavigationBarHeight: lookup failed", t);
        }
        int fallback = (int) (48 * context.getResources().getDisplayMetrics().density);
        LSPLogger.w("OneStepCompat.getNavigationBarHeight: fallback -> " + fallback + "px");
        return fallback;
    }
    // 获取状态栏高度（像素），失败时回退到默认密度值
    public static int getStatusBarHeight(Context context) {
        try {
            Resources r = context.getResources();
            int resId = r.getIdentifier("status_bar_height", "dimen", "android");
            LSPLogger.d("OneStepCompat.getStatusBarHeight: resId=" + resId);
            if (resId != 0) {
                int v = r.getDimensionPixelSize(resId);
                LSPLogger.d("OneStepCompat.getStatusBarHeight: -> " + v + "px");
                return v;
            }
        } catch (Throwable t) {
            LSPLogger.e("OneStepCompat.getStatusBarHeight: lookup failed", t);
        }
        int fallback = (int) (24 * context.getResources().getDisplayMetrics().density);
        LSPLogger.w("OneStepCompat.getStatusBarHeight: fallback -> " + fallback + "px");
        return fallback;
    }
}
