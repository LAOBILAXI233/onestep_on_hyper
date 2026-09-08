package com.hyper.onestep;

import java.lang.reflect.Method;
import java.util.List;

final class RootActivityManagerCompat {
    private RootActivityManagerCompat() {
    }

    static Object getTaskService() throws ReflectiveOperationException {
        ReflectiveOperationException lastFailure = null;
        String[][] candidates = {
                {"android.app.ActivityTaskManager", "getService"},
                {"android.app.ActivityManager", "getService"},
                {"android.app.ActivityManagerNative", "getDefault"}
        };
        for (String[] candidate : candidates) {
            try {
                Class<?> managerClass = Class.forName(candidate[0]);
                Method getter = managerClass.getDeclaredMethod(candidate[1]);
                getter.setAccessible(true);
                Object service = getter.invoke(null);
                if (service != null) {
                    return service;
                }
            } catch (ReflectiveOperationException e) {
                lastFailure = e;
            }
        }
        if (lastFailure != null) {
            throw lastFailure;
        }
        throw new IllegalStateException("activity task service unavailable");
    }

    static List<?> getRootTasksOnDisplay(Object service, int displayId)
            throws ReflectiveOperationException {
        Method method;
        try {
            method = service.getClass().getMethod("getAllRootTaskInfosOnDisplay", int.class);
        } catch (NoSuchMethodException e) {
            method = service.getClass().getMethod("getAllStackInfosOnDisplay", int.class);
        }
        method.setAccessible(true);
        Object result = method.invoke(service, displayId);
        if (!(result instanceof List<?>)) {
            throw new IllegalStateException("root task list unavailable");
        }
        return (List<?>) result;
    }

    static void moveRootTaskToDisplay(Object service, int taskId, int displayId)
            throws ReflectiveOperationException {
        Method method;
        try {
            method = service.getClass().getMethod("moveRootTaskToDisplay", int.class, int.class);
        } catch (NoSuchMethodException e) {
            method = service.getClass().getMethod("moveStackToDisplay", int.class, int.class);
        }
        method.setAccessible(true);
        method.invoke(service, taskId, displayId);
    }

    static int getRootTaskId(Object task) throws ReflectiveOperationException {
        try {
            return task.getClass().getField("stackId").getInt(task);
        } catch (NoSuchFieldException e) {
            return task.getClass().getField("taskId").getInt(task);
        }
    }

    static void applyTaskVisibility(Object token, boolean hidden, Boolean onTop)
            throws ReflectiveOperationException {
        if (token == null) {
            throw new IllegalStateException("task token unavailable");
        }
        Class<?> tokenClass = Class.forName("android.window.WindowContainerToken");
        Class<?> transactionClass = Class.forName("android.window.WindowContainerTransaction");
        Object transaction = transactionClass.getConstructor().newInstance();
        transactionClass.getMethod("setHidden", tokenClass, boolean.class)
                .invoke(transaction, token, hidden);
        if (onTop != null) {
            transactionClass.getMethod("reorder", tokenClass, boolean.class)
                    .invoke(transaction, token, onTop);
        }
        Class<?> organizerClass = Class.forName("android.window.WindowOrganizer");
        Object organizer = organizerClass.getConstructor().newInstance();
        organizerClass.getMethod("applyTransaction", transactionClass)
                .invoke(organizer, transaction);
    }
}
