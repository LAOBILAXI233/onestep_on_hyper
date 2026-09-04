package com.leaf.hyperdragshare.codex;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.provider.Settings;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

final class AccessibilityBlacklist {
    private static final String REASON_LAUNCHER = "系统当前启动器";
    private static final String REASON_INPUT_METHOD = "当前输入法";

    private AccessibilityBlacklist() {}

    static boolean isBlocked(
            Context context,
            DragShareSettings settings,
            String packageName) {
        return isBlockedByPackages(
                packageName,
                settings == null
                        ? Collections.emptySet()
                        : settings.accessibilityBlacklistedPackages,
                builtInPackages(context));
    }

    static boolean isBlockedByPackages(
            String packageName,
            Set<String> userBlacklistedPackages,
            Set<String> builtInBlacklistedPackages) {
        if (packageName == null || packageName.trim().isEmpty()) {
            return false;
        }
        return (userBlacklistedPackages != null && userBlacklistedPackages.contains(packageName))
                || (builtInBlacklistedPackages != null
                && builtInBlacklistedPackages.contains(packageName));
    }

    static Set<String> builtInPackages(Context context) {
        return new LinkedHashSet<>(builtInReasons(context).keySet());
    }

    static Map<String, String> builtInReasons(Context context) {
        if (context == null) {
            return Collections.emptyMap();
        }
        LinkedHashMap<String, String> result = new LinkedHashMap<>();
        PackageManager packageManager = context.getPackageManager();
        try {
            Intent homeIntent = new Intent(Intent.ACTION_MAIN)
                    .addCategory(Intent.CATEGORY_HOME);
            ResolveInfo resolved = packageManager.resolveActivity(
                    homeIntent,
                    PackageManager.MATCH_DEFAULT_ONLY);
            if (resolved != null && resolved.activityInfo != null) {
                addReason(result, resolved.activityInfo.packageName, REASON_LAUNCHER);
            }
        } catch (Throwable ignored) {
            
        }
        try {
            String value = Settings.Secure.getString(
                    context.getContentResolver(),
                    Settings.Secure.DEFAULT_INPUT_METHOD);
            ComponentName component = ComponentName.unflattenFromString(value);
            if (component != null) {
                addReason(result, component.getPackageName(), REASON_INPUT_METHOD);
            }
        } catch (Throwable ignored) {
            
        }
        return Collections.unmodifiableMap(result);
    }

    private static void addReason(Map<String, String> reasons, String packageName, String reason) {
        if (packageName == null || packageName.trim().isEmpty()) {
            return;
        }
        String existing = reasons.get(packageName);
        reasons.put(packageName, existing == null ? reason : existing + "、" + reason);
    }
}
