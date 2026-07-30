package com.hyper.onestep.lsp;
import android.graphics.Matrix;
import android.view.MotionEvent;
/** Keeps input coordinates aligned with a root view transformed by OneStep. */
public final class OneStepTouchMapper {
    private OneStepTouchMapper() {}
    // 将屏幕触摸坐标反向映射到OneStep内容坐标
    public static boolean toContent(MotionEvent event, int screenWidth, int sidebarWidth,
            int topHeight, int screenHeight, boolean sidebarOnLeft) {
        if (!isValid(event, screenWidth, sidebarWidth, topHeight, screenHeight)) return false;
        float scaleX = (screenWidth - sidebarWidth) / (float) screenWidth;
        float scaleY = (screenHeight - topHeight) / (float) screenHeight;
        float translationX = sidebarOnLeft ? sidebarWidth : 0f;
        Matrix inverse = new Matrix();
        inverse.setValues(new float[] {
                1f / scaleX, 0f, -translationX / scaleX,
                0f, 1f / scaleY, -topHeight / scaleY,
                0f, 0f, 1f
        });
        event.transform(inverse);
        return true;
    }
    // 将OneStep内容坐标正向映射回屏幕坐标
    public static boolean toScreen(MotionEvent event, int screenWidth, int sidebarWidth,
            int topHeight, int screenHeight, boolean sidebarOnLeft) {
        if (!isValid(event, screenWidth, sidebarWidth, topHeight, screenHeight)) return false;
        float scaleX = (screenWidth - sidebarWidth) / (float) screenWidth;
        float scaleY = (screenHeight - topHeight) / (float) screenHeight;
        float translationX = sidebarOnLeft ? sidebarWidth : 0f;
        Matrix forward = new Matrix();
        forward.setValues(new float[] {
                scaleX, 0f, translationX,
                0f, scaleY, topHeight,
                0f, 0f, 1f
        });
        event.transform(forward);
        return true;
    }
    private static boolean isValid(MotionEvent event, int screenWidth, int sidebarWidth,
            int topHeight, int screenHeight) {
        return event != null && screenWidth > sidebarWidth && sidebarWidth >= 0
                && screenHeight > topHeight && topHeight >= 0;
    }
}
