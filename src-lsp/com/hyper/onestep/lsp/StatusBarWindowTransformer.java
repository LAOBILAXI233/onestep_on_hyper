package com.hyper.onestep.lsp;
import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/** Moves SystemUI's real status-bar window into the transformed main-task area. */
public final class StatusBarWindowTransformer {
    private static View sStatusBarRoot;
    private static int sOriginalWidth;
    private static int sOriginalHeight;
    private static int sOriginalGravity;
    private static int sOriginalX;
    private static int sOriginalY;
    private static boolean sApplied;
    private static View sShadeRoot;
    private static float sShadeOriginalPivotX;
    private static float sShadeOriginalPivotY;
    private static float sShadeOriginalScaleX;
    private static float sShadeOriginalScaleY;
    private static float sShadeOriginalTranslationX;
    private static float sShadeOriginalTranslationY;
    private static boolean sShadeApplied;
    private static int sShadeScreenWidth;
    private static int sShadeSidebarWidth;
    private static int sShadeTopHeight;
    private static int sShadeScreenHeight;
    private static boolean sShadeSidebarOnLeft;
    private StatusBarWindowTransformer() {}
    // 将状态栏窗口布局变换到OneStep主任务区域并联动通知栏
    public static boolean apply(Context hostContext, int screenWidth, int sidebarWidth,
            int topHeight, int statusBarHeight, boolean sidebarOnLeft) {
        try {
            View root = findStatusBarRoot();
            if (root == null) {
                LSPLogger.w("StatusBarWindowTransformer.apply: status bar root not found");
                return false;
            }
            WindowManager.LayoutParams params =
                    (WindowManager.LayoutParams) root.getLayoutParams();
            if (!sApplied || sStatusBarRoot != root) {
                sStatusBarRoot = root;
                sOriginalWidth = params.width;
                sOriginalHeight = params.height;
                sOriginalGravity = params.gravity;
                sOriginalX = params.x;
                sOriginalY = params.y;
            }
            params.width = screenWidth - sidebarWidth;
            params.height = statusBarHeight;
            params.gravity = Gravity.TOP
                    | (sidebarOnLeft ? Gravity.RIGHT : Gravity.LEFT);
            params.x = 0;
            params.y = topHeight;
            WindowManager windowManager = (WindowManager) hostContext
                    .getSystemService(Context.WINDOW_SERVICE);
            windowManager.updateViewLayout(root, params);
            sApplied = true;
            LSPLogger.i("StatusBarWindowTransformer.apply: width=" + params.width
                    + " height=" + params.height + " y=" + params.y
                    + " sidebarOnLeft=" + sidebarOnLeft);
            applyNotificationShade(screenWidth, sidebarWidth, topHeight,
                    Math.round(topHeight * (screenWidth / (float) sidebarWidth)),
                    sidebarOnLeft);
            return true;
        } catch (Throwable t) {
            LSPLogger.e("StatusBarWindowTransformer.apply failed", t);
            return false;
        }
    }
    // 恢复状态栏窗口与通知栏到原始布局
    public static boolean restore(Context hostContext) {
        boolean restored = restoreNotificationShade();
        if (sApplied && sStatusBarRoot != null) {
            try {
                WindowManager.LayoutParams params =
                        (WindowManager.LayoutParams) sStatusBarRoot.getLayoutParams();
                params.width = sOriginalWidth;
                params.height = sOriginalHeight;
                params.gravity = sOriginalGravity;
                params.x = sOriginalX;
                params.y = sOriginalY;
                WindowManager windowManager = (WindowManager) hostContext
                        .getSystemService(Context.WINDOW_SERVICE);
                windowManager.updateViewLayout(sStatusBarRoot, params);
                restored = true;
                sApplied = false;
            } catch (Throwable t) {
                LSPLogger.e("StatusBarWindowTransformer.restore failed", t);
            }
        }
        if (restored) LSPLogger.i("StatusBarWindowTransformer.restore: restored");
        return restored;
    }
    // 对通知栏DecorView应用与主任务一致的缩放与平移变换
    public static boolean applyNotificationShade(int screenWidth, int sidebarWidth,
            int topHeight, int screenHeight, boolean sidebarOnLeft) {
        try {
            sShadeScreenWidth = screenWidth;
            sShadeSidebarWidth = sidebarWidth;
            sShadeTopHeight = topHeight;
            sShadeScreenHeight = screenHeight;
            sShadeSidebarOnLeft = sidebarOnLeft;
            View root = sShadeRoot;
            if (root == null || root.getParent() == null) {
                root = findNotificationShadeRoot();
            }
            if (root == null) return false;
            if (!sShadeApplied || sShadeRoot != root) {
                sShadeRoot = root;
                sShadeOriginalPivotX = root.getPivotX();
                sShadeOriginalPivotY = root.getPivotY();
                sShadeOriginalScaleX = root.getScaleX();
                sShadeOriginalScaleY = root.getScaleY();
                sShadeOriginalTranslationX = root.getTranslationX();
                sShadeOriginalTranslationY = root.getTranslationY();
                LSPLogger.i("StatusBarWindowTransformer: found NotificationShade class="
                        + root.getClass().getName());
            }
            root.setPivotX(0f);
            root.setPivotY(0f);
            root.setScaleX((screenWidth - sidebarWidth) / (float) screenWidth);
            root.setScaleY((screenHeight - topHeight) / (float) screenHeight);
            root.setTranslationX(sidebarOnLeft ? sidebarWidth : 0f);
            root.setTranslationY(topHeight);
            sShadeApplied = true;
            return true;
        } catch (Throwable t) {
            LSPLogger.e("StatusBarWindowTransformer.applyNotificationShade failed", t);
            return false;
        }
    }
    /** Re-applies the transform after SystemUI recreates the shade or a guts popup. */
    public static boolean reapplyNotificationShade() {
        if (sShadeScreenWidth <= 0 || sShadeSidebarWidth <= 0
                || sShadeTopHeight <= 0 || sShadeScreenHeight <= 0) {
            return false;
        }
        return applyNotificationShade(sShadeScreenWidth, sShadeSidebarWidth,
                sShadeTopHeight, sShadeScreenHeight, sShadeSidebarOnLeft);
    }
    private static boolean restoreNotificationShade() {
        if (!sShadeApplied || sShadeRoot == null) return false;
        sShadeRoot.setPivotX(sShadeOriginalPivotX);
        sShadeRoot.setPivotY(sShadeOriginalPivotY);
        sShadeRoot.setScaleX(sShadeOriginalScaleX);
        sShadeRoot.setScaleY(sShadeOriginalScaleY);
        sShadeRoot.setTranslationX(sShadeOriginalTranslationX);
        sShadeRoot.setTranslationY(sShadeOriginalTranslationY);
        sShadeApplied = false;
        return true;
    }
    private static View findStatusBarRoot() throws Exception {
        View exact = findRootByTitle("StatusBar");
        if (exact != null) return exact;
        return findRootByTitle("StatusBar1");
    }
    private static View findNotificationShadeRoot() throws Exception {
        String[] titles = new String[] {
                "NotificationShade",
                "NotificationShadeWindowView",
                "com.android.systemui.shade.NotificationShadeWindowView"
        };
        for (String title : titles) {
            View root = findRootByTitle(title);
            if (root != null) return root;
        }
        Class<?> globalClass = Class.forName("android.view.WindowManagerGlobal");
        Method getInstance = globalClass.getDeclaredMethod("getInstance");
        getInstance.setAccessible(true);
        Object global = getInstance.invoke(null);
        Field viewsField = findField(globalClass, "mViews");
        Object value = viewsField.get(global);
        if (!(value instanceof List)) return null;
        for (Object candidate : (List<?>) value) {
            if (!(candidate instanceof View)) continue;
            View view = (View) candidate;
            if (view.getClass().getName().contains("NotificationShadeWindowView")) {
                LSPLogger.d("StatusBarWindowTransformer.find: shade class fallback="
                        + view.getClass().getName());
                return view;
            }
        }
        return null;
    }
    private static View findRootByTitle(String expectedTitle) throws Exception {
        Class<?> globalClass = Class.forName("android.view.WindowManagerGlobal");
        Method getInstance = globalClass.getDeclaredMethod("getInstance");
        getInstance.setAccessible(true);
        Object global = getInstance.invoke(null);
        Field viewsField = findField(globalClass, "mViews");
        Object value = viewsField.get(global);
        if (!(value instanceof List)) return null;
        for (Object candidate : (List<?>) value) {
            if (!(candidate instanceof View)) continue;
            View view = (View) candidate;
            Object layoutParams = view.getLayoutParams();
            if (!(layoutParams instanceof WindowManager.LayoutParams)) continue;
            CharSequence title = ((WindowManager.LayoutParams) layoutParams).getTitle();
            String name = title == null ? "" : title.toString();
            if (expectedTitle.equals(name)) {
                LSPLogger.d("StatusBarWindowTransformer.find: title=" + name
                        + " class=" + view.getClass().getName());
                return view;
            }
        }
        return null;
    }
    private static Field findField(Class<?> type, String name) throws Exception {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                Field field = current.getDeclaredField(name);
                field.setAccessible(true);
                return field;
            } catch (NoSuchFieldException ignored) {
                current = current.getSuperclass();
            }
        }
        throw new NoSuchFieldException(type.getName() + "." + name);
    }
}
