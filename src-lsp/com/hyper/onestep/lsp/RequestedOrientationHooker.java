package com.hyper.onestep.lsp;
import android.content.Context;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import io.github.libxposed.api.XposedInterface;
/** Mirrors runtime Activity orientation requests from system_server to SystemUI. */
public final class RequestedOrientationHooker implements XposedInterface.Hooker {
    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object value = chain.getArg(0);
        Object activityRecord = chain.getThisObject();
        if (value instanceof Integer) {
            LSPLogger.i("RequestedOrientationHooker.request: orientation=" + value
                    + " " + describeActivityRecord(activityRecord)
                    + " top=" + isTopActivityRecord(activityRecord));
        }
        Object result = chain.proceed();
        if (value instanceof Integer) {
            LSPLogger.i("RequestedOrientationHooker.result: requested=" + value
                    + " resolved=" + readRequestedOrientation(activityRecord)
                    + " " + describeActivityRecord(activityRecord)
                    + " top=" + isTopActivityRecord(activityRecord));
            publish(activityRecord, (Integer) value);
        }
        return result;
    }
    private static Boolean readBoolean(Object target, String name) {
        if (target == null) return null;
        try {
            Object value = readField(target, name);
            return value instanceof Boolean ? (Boolean) value : null;
        } catch (Throwable ignored) {
            return null;
        }
    }
    static void publishCurrent(Object activityRecord) {
        if (activityRecord == null) return;
        if (!isTopActivityRecord(activityRecord)) {
            LSPLogger.d("RequestedOrientationHooker.publishCurrent: skip non-top activity="
                    + activityRecord);
            return;
        }
        try {
            Object result = findMethod(activityRecord.getClass(),
                    "getRequestedOrientation").invoke(activityRecord);
            if (result instanceof Integer) publish(activityRecord, (Integer) result);
        } catch (Throwable t) {
            LSPLogger.d("RequestedOrientationHooker.publishCurrent: " + t);
        }
    }
    private static void publish(Object activityRecord, int orientation) {
        if (activityRecord == null) return;
        try {
            if (!isTopActivityRecord(activityRecord)) {
                LSPLogger.d("RequestedOrientationHooker.publish: skip non-top activity="
                        + activityRecord + " orientation=" + orientation);
                return;
            }
            Integer taskId = findTaskId(activityRecord);
            Context context = findContext(activityRecord);
            if (taskId == null || context == null) return;
            boolean landscape = isLandscape(orientation);
            OneStepStateBridge.setTaskRequestedOrientation(context, taskId, orientation);
            OneStepStateBridge.setTaskLandscape(context, taskId, landscape);
            if (isPortrait(orientation)) {
                OneStepStateBridge.setTaskFixedLetterboxBounds(context, taskId, null);
            }
            LSPLogger.i("RequestedOrientationHooker: taskId=" + taskId
                    + " orientation=" + orientation + " landscape=" + landscape);
        } catch (Throwable t) {
            LSPLogger.d("RequestedOrientationHooker.publish: " + t);
        }
    }
    static boolean isTopActivityRecord(Object activityRecord) {
        if (activityRecord == null) return false;
        try {
            Object task = findMethod(activityRecord.getClass(), "getTask")
                    .invoke(activityRecord);
            if (task != null) {
                String[] candidates = new String[] {
                        "getTopNonFinishingActivity",
                        "topRunningActivity",
                        "getTopResumedActivity",
                        "getTopActivity"
                };
                for (String name : candidates) {
                    try {
                        Object top = findMethod(task.getClass(), name).invoke(task);
                        if (top != null) return top == activityRecord;
                    } catch (Throwable ignored) {
                    }
                }
            }
            Boolean visible = readBoolean(activityRecord, "mVisibleRequested");
            if (Boolean.FALSE.equals(visible)) return false;
            visible = readBoolean(activityRecord, "mVisible");
            if (Boolean.FALSE.equals(visible)) return false;
            try {
                Object state = readField(activityRecord, "mState");
                if (state != null && "RESUMED".equals(String.valueOf(state))) return true;
            } catch (Throwable ignored) {
            }
            return Boolean.TRUE.equals(visible);
        } catch (Throwable t) {
            LSPLogger.d("RequestedOrientationHooker.isTopActivityRecord: " + t);
            return false;
        }
    }
    static boolean isLandscape(int orientation) {
        return orientation == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE
                || orientation == ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE
                || orientation == ActivityInfo.SCREEN_ORIENTATION_REVERSE_LANDSCAPE
                || orientation == ActivityInfo.SCREEN_ORIENTATION_USER_LANDSCAPE;
    }
    static boolean isPortrait(int orientation) {
        return orientation == ActivityInfo.SCREEN_ORIENTATION_PORTRAIT
                || orientation == ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT
                || orientation == ActivityInfo.SCREEN_ORIENTATION_REVERSE_PORTRAIT
                || orientation == ActivityInfo.SCREEN_ORIENTATION_USER_PORTRAIT;
    }
    static Integer findTaskId(Object activityRecord) {
        if (activityRecord == null) return null;
        try {
            Object task = findMethod(activityRecord.getClass(), "getTask")
                    .invoke(activityRecord);
            if (task == null) return null;
            Object value = findMethod(task.getClass(), "getTaskId").invoke(task);
            return value instanceof Integer ? (Integer) value : null;
        } catch (Throwable t) {
            LSPLogger.d("RequestedOrientationHooker.findTaskId: " + t);
            return null;
        }
    }
    static int findDisplayId(Object activityRecord) {
        if (activityRecord == null) return -1;
        try {
            Object value = findMethod(activityRecord.getClass(), "getDisplayId")
                    .invoke(activityRecord);
            return value instanceof Integer ? (Integer) value : -1;
        } catch (Throwable ignored) {
            return -1;
        }
    }
    static int readRequestedOrientation(Object activityRecord) {
        if (activityRecord == null) return ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        try {
            Object value = findMethod(activityRecord.getClass(),
                    "getRequestedOrientation").invoke(activityRecord);
            return value instanceof Integer ? (Integer) value
                    : ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        } catch (Throwable ignored) {
            return ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        }
    }
    /** Compact identity used by the orientation timeline; avoids dumping the full record. */
    static String describeActivityRecord(Object activityRecord) {
        if (activityRecord == null) return "activity=null";
        String component = null;
        try {
            Object value = readField(activityRecord, "mActivityComponent");
            if (value instanceof ComponentName) component = value.toString();
        } catch (Throwable ignored) {
        }
        if (component == null) {
            try {
                Object info = readField(activityRecord, "info");
                Object value = readField(info, "name");
                if (value instanceof String) component = (String) value;
            } catch (Throwable ignored) {
            }
        }
        if (component == null) component = String.valueOf(activityRecord);
        Integer taskId = findTaskId(activityRecord);
        return "activity=" + component + " task=" + taskId
                + " display=" + findDisplayId(activityRecord);
    }
    static Context findContext(Object activityRecord) {
        if (activityRecord == null) return null;
        try {
            Object atmService = readField(activityRecord, "mAtmService");
            Object context = readField(atmService, "mContext");
            return context instanceof Context ? (Context) context : null;
        } catch (Throwable t) {
            LSPLogger.d("RequestedOrientationHooker.findContext: " + t);
            return null;
        }
    }
    static Object readField(Object target, String name) throws ReflectiveOperationException {
        return findField(target.getClass(), name).get(target);
    }
    private static Field findField(Class<?> type, String name) throws NoSuchFieldException {
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
    private static Method findMethod(Class<?> type, String name)
            throws NoSuchMethodException {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                Method method = current.getDeclaredMethod(name);
                method.setAccessible(true);
                return method;
            } catch (NoSuchMethodException ignored) {
                current = current.getSuperclass();
            }
        }
        throw new NoSuchMethodException(type.getName() + "#" + name + "()");
    }
}
