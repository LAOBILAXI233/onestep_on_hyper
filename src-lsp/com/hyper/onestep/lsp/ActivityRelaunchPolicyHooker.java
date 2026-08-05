package com.hyper.onestep.lsp;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Configuration;
import android.os.SystemClock;
import android.provider.Settings;
import java.lang.reflect.Method;
import io.github.libxposed.api.XposedInterface;
/** Prevents HyperOS from recreating an Activity while its task crosses a OneStep display. */
public final class ActivityRelaunchPolicyHooker implements XposedInterface.Hooker {
    private final Object mForceNotRelaunch;
    /** 退出保护窗口：跨进程经 Settings.Global 传递，因为 hook 在 system_server，写方在 SystemUI。 */
    private static final String EXIT_SUPPRESS_KEY = "onestep_lsp_exit_suppress_until_v1";
    private static final long EXIT_SUPPRESS_WINDOW_MS = 1200L;
    public static void armExitSuppressRelaunch(Context context) {
        if (context == null) return;
        try {
            long until = SystemClock.uptimeMillis() + EXIT_SUPPRESS_WINDOW_MS;
            Settings.Global.putString(context.getContentResolver(),
                    EXIT_SUPPRESS_KEY, String.valueOf(until));
            LSPLogger.i("ActivityRelaunchPolicyHooker: exit suppress armed until=" + until);
        } catch (Throwable t) {
            LSPLogger.w("ActivityRelaunchPolicyHooker: arm exit suppress failed: " + t);
        }
    }
    private static long readExitSuppressUntil(Context context) {
        if (context == null) return 0L;
        try {
            String value = Settings.Global.getString(context.getContentResolver(),
                    EXIT_SUPPRESS_KEY);
            return value == null ? 0L : Long.parseLong(value);
        } catch (Throwable t) {
            return 0L;
        }
    }
    /** 供 ExitRelaunchGuardHooker 跨类查询退出保护窗口。 */
    static boolean inExitSuppressWindow(Context context) {
        return SystemClock.uptimeMillis() <= readExitSuppressUntil(context);
    }
    public ActivityRelaunchPolicyHooker(Object forceNotRelaunch) {
        mForceNotRelaunch = forceNotRelaunch;
    }
    // 拦截Activity重启决策，抑制OneStep显示切换与方向变化导致的不必要重建
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object oldConfig = chain.getArg(0);
        Object newConfig = chain.getArg(1);
        Object activityRecord = readActivityRecord(chain.getThisObject());
        if (oldConfig instanceof Configuration && newConfig instanceof Configuration) {
            Context hookContext = activityRecord == null ? null
                    : RequestedOrientationHooker.findContext(activityRecord);
            // 退出保护窗口：退出 OneStep 后方向回退的配置变更短暂窗口内不销毁。
            // 必须放最前，不依赖 requested 方向/OneStep 状态——哔哩哔哩详情页 requested=0
            // (UNSPECIFIED) 时方向恢复不走 shouldSuppress 分支。
            if (inExitSuppressWindow(hookContext)) {
                LSPLogger.i("ActivityRelaunchPolicyHooker: suppress exit-window relaunch "
                        + RequestedOrientationHooker.describeActivityRecord(activityRecord)
                        + " changes=" + chain.getArg(2));
                return mForceNotRelaunch;
            }
            int oldDisplayId = getDisplayId((Configuration) oldConfig);
            int newDisplayId = getDisplayId((Configuration) newConfig);
            if (isOneStepDisplayTransfer(oldDisplayId, newDisplayId)) {
                LSPLogger.i("ActivityRelaunchPolicyHooker: suppress OneStep display relaunch oldDisplay="
                        + oldDisplayId + " newDisplay=" + newDisplayId
                        + " activity=" + RequestedOrientationHooker.describeActivityRecord(activityRecord)
                        + " changes=" + chain.getArg(2));
                return mForceNotRelaunch;
            }
            if (shouldSuppressOneStepOrientationRelaunch(activityRecord)) {
                int requested = RequestedOrientationHooker.readRequestedOrientation(
                        activityRecord);
                LSPLogger.i("ActivityRelaunchPolicyHooker: suppress orientation relaunch "
                        + RequestedOrientationHooker.describeActivityRecord(activityRecord)
                        + " requested=" + requested + " changes=" + chain.getArg(2));
                return mForceNotRelaunch;
            }
        }
        return chain.proceed();
    }
    private static boolean isOneStepDisplayTransfer(int oldDisplayId, int newDisplayId) {
        if (oldDisplayId < 0 || newDisplayId < 0 || oldDisplayId == newDisplayId) {
            return false;
        }
        return oldDisplayId == 0 && SystemServerRelaunchHooker.isOneStepDisplay(newDisplayId)
                || newDisplayId == 0 && SystemServerRelaunchHooker.isOneStepDisplay(oldDisplayId);
    }
    private static boolean shouldSuppressOneStepOrientationRelaunch(Object activityRecord) {
        if (activityRecord == null || !RequestedOrientationHooker.isTopActivityRecord(
                activityRecord)) {
            return false;
        }
        ComponentName component = readComponent(activityRecord);
        if (component == null) {
            return false;
        }
        int requested = RequestedOrientationHooker.readRequestedOrientation(activityRecord);
        if (!RequestedOrientationHooker.isLandscape(requested)
                && !RequestedOrientationHooker.isPortrait(requested)) {
            return false;
        }
        Context context = RequestedOrientationHooker.findContext(activityRecord);
        OneStepStateBridge.State state = OneStepStateBridge.read(context);
        return state.canTransform();
    }
    private static ComponentName readComponent(Object activityRecord) {
        try {
            Object value = RequestedOrientationHooker.readField(activityRecord,
                    "mActivityComponent");
            return value instanceof ComponentName ? (ComponentName) value : null;
        } catch (Throwable ignored) {
            return null;
        }
    }
    private static Object readActivityRecord(Object activityRecordImpl) {
        if (activityRecordImpl == null) return null;
        try {
            return RequestedOrientationHooker.readField(activityRecordImpl, "mAr");
        } catch (Throwable t) {
            LSPLogger.d("ActivityRelaunchPolicyHooker: ActivityRecord lookup failed: " + t);
            return null;
        }
    }
    private static int getDisplayId(Configuration config) {
        try {
            Method getExtraConfig = findMethod(config.getClass(), "getExtraConfig");
            if (getExtraConfig == null) return -1;
            getExtraConfig.setAccessible(true);
            Object extraConfig = getExtraConfig.invoke(config);
            if (extraConfig == null) return -1;
            Method getDisplayId = findMethod(extraConfig.getClass(), "getDisplayId");
            if (getDisplayId == null) return -1;
            getDisplayId.setAccessible(true);
            Object result = getDisplayId.invoke(extraConfig);
            return result instanceof Integer ? (Integer) result : -1;
        } catch (Throwable t) {
            LSPLogger.d("ActivityRelaunchPolicyHooker: display id lookup failed: " + t);
            return -1;
        }
    }
    private static Method findMethod(Class<?> type, String name) {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                return current.getDeclaredMethod(name);
            } catch (NoSuchMethodException ignored) {
                current = current.getSuperclass();
            }
        }
        return null;
    }
}
