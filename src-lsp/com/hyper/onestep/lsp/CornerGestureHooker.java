package com.hyper.onestep.lsp;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.SidebarMode;
import io.github.libxposed.api.XposedInterface;
/** Detects a horizontal inward swipe that starts at either top corner. */
public final class CornerGestureHooker implements XposedInterface.Hooker {
    private static final int NONE = 0;
    private static final int LEFT = 1;
    private static final int RIGHT = 2;
    private static int sTrackingEdge = NONE;
    private static float sDownX;
    private static float sDownY;
    private static long sLastTriggerTime;
    // 拦截状态栏触摸，识别顶部角落内滑手势并维持通知栏坐标变换
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(0);
        MotionEvent event = arg instanceof MotionEvent ? (MotionEvent) arg : null;
        if (event != null) handleMotionEvent(event);
        SidebarController controller = SidebarController.peekInstance();
        if (event != null && controller != null && controller.isInOneStepMode()
                && event.getActionMasked() != MotionEvent.ACTION_CANCEL) {
            controller.reapplyNotificationShadeTransform();
        }
        Object target = chain.getThisObject();
        boolean isShadeRoot = target != null
                && target.getClass().getName().contains("NotificationShadeWindowView");
        boolean mapped = event != null && isShadeRoot && controller != null
                && controller.mapNotificationShadeTouchToContent(event);
        try {
            return chain.proceed();
        } finally {
            if (mapped) controller.mapNotificationShadeTouchToScreen(event);
        }
    }
    private static void handleMotionEvent(MotionEvent event) {
        DisplayMetrics metrics = Resources.getSystem().getDisplayMetrics();
        float density = metrics.density;
        float edgeWidth = 32f * density;
        float maxStartY = 72f * density;
        float triggerDistance = 72f * density;
        float maxVerticalDrift = 96f * density;
        float x = event.getRawX();
        float y = event.getRawY();
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                sTrackingEdge = NONE;
                if (y <= maxStartY && x <= edgeWidth) {
                    sTrackingEdge = LEFT;
                } else if (y <= maxStartY && x >= metrics.widthPixels - edgeWidth) {
                    sTrackingEdge = RIGHT;
                }
                sDownX = x;
                sDownY = y;
                break;
            case MotionEvent.ACTION_MOVE:
                if (sTrackingEdge == NONE
                        || Math.abs(y - sDownY) > maxVerticalDrift) return;
                boolean inward = sTrackingEdge == LEFT
                        ? x - sDownX >= triggerDistance
                        : sDownX - x >= triggerDistance;
                if (inward) trigger(sTrackingEdge);
                break;
            case MotionEvent.ACTION_UP:
            case MotionEvent.ACTION_CANCEL:
                sTrackingEdge = NONE;
                break;
            default:
                break;
        }
    }
    private static void trigger(int edge) {
        sTrackingEdge = NONE;
        long now = SystemClock.uptimeMillis();
        if (now - sLastTriggerTime < 750L) return;
        sLastTriggerTime = now;
        SidebarController controller = SidebarController.peekInstance();
        if (controller == null || controller.isInOneStepMode()) return;
        int mode = edge == LEFT ? SidebarMode.MODE_LEFT : SidebarMode.MODE_RIGHT;
        controller.setSidebarMode(mode);
        controller.enterOneStepMode();
        LSPLogger.i("CornerGestureHooker.trigger: mode=" + mode);
    }
}
