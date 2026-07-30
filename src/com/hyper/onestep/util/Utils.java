package com.hyper.onestep.util;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.MediaStore;
import android.view.DragEvent;
import android.view.View;
import android.view.ViewGroup;

import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.lsp.DragHelper;
import com.hyper.onestep.lsp.LSPLogger;

public class Utils {
    static void sendCloseSystemWindows(Context context, String reason) {
        // Android 16 已移除 ActivityManagerNative.getDefault() / isSystemReady()
        // 改用反射调用 IActivityManager.closeSystemDialogs（hidden API）
        try {
            Object iam = getIActivityManager();
            if (iam != null) {
                java.lang.reflect.Method m = iam.getClass()
                        .getMethod("closeSystemDialogs", String.class);
                m.invoke(iam, reason);
            }
        } catch (Throwable t) {
            // 降级：发送广播（效果弱于 closeSystemDialogs，但不会崩溃）
            try {
                Intent intent = new Intent(Intent.ACTION_CLOSE_SYSTEM_DIALOGS);
                intent.putExtra("reason", reason);
                context.sendBroadcast(intent);
            } catch (Throwable t2) {
                LSPLogger.w("Utils.sendCloseSystemWindows: fallback broadcast failed", t2);
            }
        }
    }

    /**
     * 获取 IActivityManager 实例（Android 16 兼容）。
     */
    private static Object getIActivityManager() {
        try {
            java.lang.reflect.Method m = ActivityManager.class
                    .getDeclaredMethod("getIActivityManager");
            m.setAccessible(true);
            return m.invoke(null);
        } catch (Throwable t) {
            LSPLogger.d("Utils.getIActivityManager: " + t.getMessage());
        }
        try {
            Class<?> clz = Class.forName("android.app.ActivityManagerNative");
            java.lang.reflect.Method m = clz.getDeclaredMethod("getDefault");
            m.setAccessible(true);
            return m.invoke(null);
        } catch (Throwable t) {
            LSPLogger.d("Utils.getIActivityManager: fallback failed: " + t.getMessage());
        }
        return null;
    }

    public static void resumeSidebar(Context context){
        LSPLogger.i("Utils.resumeSidebar: begin");
        try {
            SidebarController sc = SidebarController.getInstance(context);
            if (sc == null) {
                LSPLogger.w("Utils.resumeSidebar: SidebarController null");
                return;
            }
            sc.resumeTopView();
            sc.dismissContent(true);
            if (sc.getSidebarRootView() != null) {
                sc.getSidebarRootView().stopDrag();
            }
        } catch (Throwable t) {
            LSPLogger.e("Utils.resumeSidebar: failed", t);
        }
    }

    public static void dismissAllDialog(Context context) {
        resumeSidebar(context);
        sendCloseSystemWindows(context, null);
    }

    public static void setAlwaysCanAcceptDrag(View view, boolean can){
        // NA
        try {
            Method setAlwaysCanAcceptDrag = view.getClass().getMethod("setAlwaysCanAcceptDrag", boolean.class);
            try {
                setAlwaysCanAcceptDrag.invoke(view, can);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    public static void setAlwaysCanAcceptDragForAll(View view, boolean can) {
        setAlwaysCanAcceptDrag(view, can);
        if (view instanceof ViewGroup) {
            ViewGroup vg = (ViewGroup) view;
            for (int i = 0; i < vg.getChildCount(); ++i) {
                setAlwaysCanAcceptDragForAll(vg.getChildAt(i), can);
            }
        }
    }

    public static void copyText(Context context, CharSequence cs, boolean inHistory){
        ClipboardManager cm  = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
        try {
            Method method = cm.getClass().getMethod("setPrimaryClip", ClipData.class, boolean.class);
            try {
                method.invoke(cm, ClipData.newPlainText(null, cs), false);
                return;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        cm.setPrimaryClip(ClipData.newPlainText(null, cs));
    }

    public static boolean isPackageInstalled(Context context, String packageName){
        try {
            context.getPackageManager().getPackageInfo(packageName, 0);
            return true;
        } catch (NameNotFoundException e) {
            // NA
        }
        return false;
    }

    private static final String LAUNCHER_NAME = "com.smartisanos.launcher.Launcher";

    public static boolean inArea(float rawX, float rawY, View view) {
        int[] loc = new int[2];
        view.getLocationOnScreen(loc);
        int viewWidth = view.getWidth();
        int viewHeight = view.getHeight();
        int left = loc[0];
        int top = loc[1];
        int right = left + viewWidth;
        int bottom = top + viewHeight;
        if (left < rawX && rawX < right) {
            if (top < rawY && rawY < bottom) {
                return true;
            }
        }
        return false;
    }

    public static String debugDrag(DragEvent event) {
        StringBuffer buffer = new StringBuffer();
        int action = event.getAction();
        switch (action) {
            case DragEvent.ACTION_DRAG_STARTED : {
                buffer.append("[ACTION_DRAG_STARTED]");
                break;
            }
            case DragEvent.ACTION_DRAG_ENTERED : {
                buffer.append("[ACTION_DRAG_ENTERED]");
                break;
            }
            case DragEvent.ACTION_DRAG_LOCATION : {
                buffer.append("[ACTION_DRAG_LOCATION]");
                break;
            }
            case DragEvent.ACTION_DRAG_EXITED : {
                buffer.append("[ACTION_DRAG_EXITED]");
                break;
            }
            case DragEvent.ACTION_DRAG_ENDED : {
                buffer.append("[ACTION_DRAG_ENDED]");
                break;
            }
            case DragEvent.ACTION_DROP : {
                buffer.append("[ACTION_DROP]");
                break;
            }
        }
        return buffer.toString();
    }

    public static boolean isNetworkConnected(Context context) {
        if (context == null) {
            return false;
        }
        boolean connected = false;
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            NetworkInfo networkInfo = cm.getActiveNetworkInfo();
            if (networkInfo != null) {
                connected = networkInfo.isConnected();
            }
        } catch (Exception e) {}
        return connected;
    }

    public static boolean isWifiConnected(Context context) {
        if (context == null) {
            return false;
        }
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo wifi = cm.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
        return wifi != null && wifi.isConnected();
    }

    public static String parseTitle(String content) {
        String title = null;
        try {
            //html code, may include <!-- -->
            List<int[]> invisibleContent = parseContent("(?s)/<[!]--.*-->/", content);
            List<int[]> titleContent = parseContent("<title>(.*)</title>", content);
            int[] region = null;
            int size = titleContent.size();
            for (int i = 0; i < size; i++) {
                int[] charIndex = titleContent.get(i);
                if (invisibleContent.size() == 0) {
                    //match first
                    region = charIndex;
                    break;
                }
                boolean inBlock = false;
                for (int[] block : invisibleContent) {
                    if (block[0] <= charIndex[0] && charIndex[0] <= block[1]) {
                        inBlock = true;
                        break;
                    }
                    if (block[0] <= charIndex[1] && charIndex[1] <= block[1]) {
                        inBlock = true;
                        break;
                    }
                }
                if (!inBlock) {
                    region = charIndex;
                }
            }
            if (region != null) {
                title = content.substring(region[0], region[1]);
                if (title != null) {
                    int length = title.length();
                    title = title.substring(7, length - 8);
                }
            }
        } catch (Exception e) {
            title = null;
            e.printStackTrace();
        }
        return title;
    }

    private static List<int[]> parseContent(String expression, String content) {
        List<int[]> list = new ArrayList<int[]>();
        try {
            Pattern pattern = Pattern.compile(expression, Pattern.MULTILINE | Pattern.CASE_INSENSITIVE);
            Matcher matcher = pattern.matcher(content);
            while (matcher.find()) {
                int[] match = new int[2];
                match[0] = matcher.start();
                match[1] = matcher.end();
                list.add(match);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static String convertDateToLabel(Context context, long currentTime, long time) {
        long day = 24 * 60 * 60 * 1000;
        long delta = currentTime - time;
        if (delta < 0) {
            delta = 0;
        }
        int interval = (int) (delta / day);
        Resources resources = context.getResources();
        String label = null;
        if (interval <= 30) {
            if (interval == 0) {
                //today
                label = resources.getString(R.string.date_label_today);
            } else if (interval == 1) {
                //yesterday
                label = resources.getString(R.string.date_label_yesterday);
            } else if (interval <= 7) {
                //last 7 days
                label = resources.getString(R.string.date_label_last_week);
            } else {
                //last 30 days
                label = resources.getString(R.string.date_label_last_month);
            }
        } else {
            label = resources.getString(R.string.date_label_earlier);
        }
        return label;
    }

    public static List<ResolveInfo> getAllAppsInfo(Context context) {
        Intent launcherIntent = new Intent(Intent.ACTION_MAIN);
        launcherIntent.addCategory(Intent.CATEGORY_LAUNCHER);
        launcherIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        PackageManager packageManager = context.getPackageManager();
        try {
            List<ResolveInfo> result = packageManager.queryIntentActivities(
                    launcherIntent,
                    PackageManager.MATCH_ALL
                            | PackageManager.MATCH_DIRECT_BOOT_AWARE
                            | PackageManager.MATCH_DIRECT_BOOT_UNAWARE);
            if (result != null && !result.isEmpty()) {
                LSPLogger.i("Utils.getAllAppsInfo: launcher results=" + result.size());
                return result;
            }
        } catch (Throwable t) {
            LSPLogger.w("Utils.getAllAppsInfo: MATCH_ALL query failed", t);
        }
        try {
            List<ResolveInfo> fallback = packageManager.queryIntentActivities(
                    launcherIntent, PackageManager.MATCH_DEFAULT_ONLY);
            LSPLogger.i("Utils.getAllAppsInfo: fallback launcher results="
                    + (fallback == null ? 0 : fallback.size()));
            return fallback == null ? new ArrayList<ResolveInfo>() : fallback;
        } catch (Throwable t) {
            LSPLogger.w("Utils.getAllAppsInfo: fallback query failed", t);
            return new ArrayList<ResolveInfo>();
        }
    }

    public static String toDate(long time) {
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(time);
        int year   = cal.get(Calendar.YEAR);
        int month  = cal.get(Calendar.MONTH) + 1;
        int day    = cal.get(Calendar.DAY_OF_MONTH);
        int hour   = cal.get(Calendar.HOUR_OF_DAY);
        int minute = cal.get(Calendar.MINUTE);
        int second = cal.get(Calendar.SECOND);
        return year + "." + month + "." + day + " " + hour + ":" + minute + ":" + second;
    }

    public static String objectName(Object object) {
        if (object == null) {
            return null;
        }
        String name = object.toString();
        if (name.startsWith("com.hyper.onestep.")) {
            name = name.substring(24);
        }
        return name;
    }

    public static int getUidFromIntent(Intent intent) {
        return 0;
    }

    public static boolean isDoppelgangerIntent(Intent intent) {
        return false;
    }

    public static void launchPreviousApp(Context context) {
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        List<ActivityManager.RecentTaskInfo> recentTasks = am.getRecentTasks(2, ActivityManager.RECENT_IGNORE_UNAVAILABLE);
        if (recentTasks.size() >= 2) {
            int taskId = recentTasks.get(1).id;
            if (taskId >= 0) {
                am.moveTaskToFront(taskId, ActivityManager.MOVE_TASK_WITH_HOME);
            } else {
                Intent intent = new Intent(recentTasks.get(1).baseIntent);
                if (intent != null && intent.getComponent() != null) {
                    intent.addFlags(Intent.FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY
                            | Intent.FLAG_ACTIVITY_TASK_ON_HOME
                            | Intent.FLAG_ACTIVITY_NEW_TASK);
                    // SDK 36 已移除 Context.startActivityAsUser(Intent, UserHandle)，
                    // 兜底使用普通 startActivity（intent 已加 FLAG_ACTIVITY_NEW_TASK）
                    context.startActivity(intent);
                }
            }
        }
    }

    public static void openGallery(Context context) {
        if (context == null) {
            return;
        }
        try {
            try {
                Intent intent = Intent.makeMainSelectorActivity(
                        Intent.ACTION_MAIN, Intent.CATEGORY_APP_GALLERY);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
                context.startActivity(intent);
            } catch (ActivityNotFoundException noGalleryCategory) {
                Intent fallback = new Intent(Intent.ACTION_VIEW);
                fallback.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                        MediaStore.Images.Media.CONTENT_TYPE);
                fallback.addCategory(Intent.CATEGORY_DEFAULT);
                fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(fallback);
            }
            dismissAllDialog(context);
            Tracker.onClick(Tracker.EVENT_OPEN_PIC, "type", "0");
        } catch (Throwable t) {
            LSPLogger.e("Utils.openGallery: no gallery handler", t);
        }
    }

    public static void openMediaWithDefaultApp(Context context, ImageInfo info) {
        try {
            if (context == null || info == null) {
                return;
            }
            Uri uri = info.getContentUri(context);
            if (uri == null) {
                LSPLogger.w("Utils.openMediaWithDefaultApp: missing content URI");
                return;
            }
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setDataAndType(uri, info.mimeType);
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_GRANT_READ_URI_PERMISSION);
            dismissAllDialog(context);
            context.startActivity(intent);
        } catch (Throwable t) {
            LSPLogger.e("Utils.openMediaWithDefaultApp: no media viewer", t);
        }
    }

    public static void openFile(Context context, FileInfo info) {
        try {
            if (context == null || info == null || info.filePath == null
                    || info.filePath.length() == 0) {
                LSPLogger.w("Utils.openFile: missing context or file info");
                return;
            }
            File file = new File(info.filePath);
            Uri uri = DragHelper.resolveContentUri(context, file);
            if (uri == null || !"content".equals(uri.getScheme())) {
                LSPLogger.w("Utils.openFile: no content URI for " + file);
                return;
            }

            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setDataAndType(uri, info.mimeType);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_GRANT_READ_URI_PERMISSION);
            Utils.dismissAllDialog(context);
            context.startActivity(intent);
        } catch (Throwable t) {
            LSPLogger.e("Utils.openFile: failed", t);
        }
    }

    public static boolean isSwitchAppAvailable(Context context) {
        return Config.getValue(context, "switch_app");
    }

    public static void setSwitchAppAvailable(Context context, boolean available) {
        Config.setValue(context, "switch_app", available);
    }

    public static final class Config {
        private static final String CONFIG_NAME = "config";

        public static void setValue(Context context, String key, boolean value) {
            SharedPreferences sp = context.getSharedPreferences(CONFIG_NAME, 0);
            SharedPreferences.Editor editor = sp.edit();
            editor.putBoolean(key, value);
            editor.commit();
        }

        public static boolean getValue(Context context, String key) {
            return context.getSharedPreferences(CONFIG_NAME, 0).getBoolean(key, false);
        }

        public static void setIntValue(Context context, String key, int value) {
            SharedPreferences sp = context.getSharedPreferences(CONFIG_NAME, 0);
            SharedPreferences.Editor editor = sp.edit();
            editor.putInt(key, value);
            editor.commit();
        }

        public static int getIntValue(Context context, String key) {
            return context.getSharedPreferences(CONFIG_NAME, 0).getInt(key, 0);
        }

        public static void setStringValue(Context context, String key, String value) {
            SharedPreferences sp = context.getSharedPreferences(CONFIG_NAME, 0);
            SharedPreferences.Editor editor = sp.edit();
            editor.putString(key, value);
            editor.commit();
        }

        public static String getStringValue(Context context, String key) {
            return context.getSharedPreferences(CONFIG_NAME, 0).getString(key, "");
        }
    }

    public static final class Interval {
        public static int getInterval(long currentTime, long time) {
            int curDay = (int) (currentTime / (24L * 60 * 60 * 1000));
            int photoDay = (int) (time / (24L * 60 * 60 * 1000));
            int delta = curDay - photoDay;
            for (int i = 0; i < DAY_INTERVAL.length; ++i) {
                if (delta <= DAY_INTERVAL[i]) {
                    return i;
                }
            }
            // should never go here !
            return DAY_INTERVAL.length - 1;
        }

        public static final int[] DAY_INTERVAL = new int[] { 0, 1, 7, 30, Integer.MAX_VALUE };

        public static final int[] LABEL_INTERVAL = new int[] {
                R.string.date_label_today,
                R.string.date_label_yesterday,
                R.string.date_label_last_week,
                R.string.date_label_last_month,
                R.string.date_label_earlier };
    }
}
