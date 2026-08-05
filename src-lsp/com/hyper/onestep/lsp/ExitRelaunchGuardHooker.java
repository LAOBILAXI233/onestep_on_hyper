package com.hyper.onestep.lsp;
import android.content.Context;
import io.github.libxposed.api.XposedInterface;
/**
 * 退出 OneStep 后方向回退触发配置变更，系统会走 ensureActivityConfiguration 决定是否
 * relaunch（销毁重建）。退出保护窗口内强制「不 relaunch」：配置照常发送给应用
 * （scheduleConfigurationChanged），但 Activity 实例保留，避免横屏应用退出一步被销毁。
 */
public final class ExitRelaunchGuardHooker implements XposedInterface.Hooker {
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        if (inExitWindow(chain)) {
            LSPLogger.i("ExitRelaunchGuardHooker: blocked relaunch during exit window");
            // ensureActivityConfiguration 返回 true = 配置已应用、无需 relaunch；
            // 系统仍会向应用发送 scheduleConfigurationChanged。
            return true;
        }
        return chain.proceed();
    }
    private static boolean inExitWindow(XposedInterface.Chain chain) {
        try {
            Object activityRecord = chain.getThisObject();
            Context context = RequestedOrientationHooker.findContext(activityRecord);
            return context != null
                    && ActivityRelaunchPolicyHooker.inExitSuppressWindow(context);
        } catch (Throwable t) {
            return false;
        }
    }
}
