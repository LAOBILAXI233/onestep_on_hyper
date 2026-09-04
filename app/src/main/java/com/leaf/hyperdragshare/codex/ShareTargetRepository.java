package com.leaf.hyperdragshare.codex;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class ShareTargetRepository {
    private static final String MODULE_PACKAGE = "com.hyper.onestep";
    static final int BUILT_IN_ACTION_TILE_COLOR = 0xFF3482FF;

    private ShareTargetRepository() {}

    @SuppressLint("QueryPermissionsNeeded")
    static List<ShareTarget> query(Context context, CapturedContent payload) {
        return query(context, payload == null ? "text/plain" : payload.mimeType());
    }

    @SuppressLint("QueryPermissionsNeeded")
    static List<ShareTarget> query(Context context, String mimeType) {
        PackageManager packageManager = context.getPackageManager();
        Intent prototype = new Intent(Intent.ACTION_SEND).setType(mimeType);
        List<ResolveInfo> resolveInfos = packageManager.queryIntentActivities(
                prototype, PackageManager.MATCH_DEFAULT_ONLY);
        List<ShareTarget> result = new ArrayList<>();
        Set<String> seen = new HashSet<>();

        for (ResolveInfo info : resolveInfos) {
            ActivityInfo activity = info.activityInfo;
            if (activity == null || !activity.exported) {
                continue;
            }
            ComponentName component = new ComponentName(activity.packageName, activity.name);
            if (!seen.add(component.flattenToString())) {
                continue;
            }

            CharSequence label;
            Drawable icon;
            try {
                label = info.loadLabel(packageManager);
            } catch (Throwable ignored) {
                label = activity.applicationInfo.loadLabel(packageManager);
            }
            try {
                icon = info.loadIcon(packageManager);
            } catch (Throwable ignored) {
                icon = activity.applicationInfo.loadIcon(packageManager);
            }
            result.add(new ShareTarget(component, label, icon));
        }
        return result;
    }

    static List<ShareTarget> queryAll(Context context) {
        Map<String, ShareTarget> byKey = new LinkedHashMap<>();
        try {
            for (ShareTarget target : query(context, "text/plain")) {
                byKey.put(target.key(), target);
            }
        } catch (Throwable ignored) {
            
        }
        try {
            for (ShareTarget target : query(context, "image/*")) {
                byKey.putIfAbsent(target.key(), target);
            }
        } catch (Throwable ignored) {
            
        }
        return new ArrayList<>(byKey.values());
    }

    static List<ShareTarget> applySettings(
            Context context,
            List<ShareTarget> queried,
            DragShareSettings settings,
            boolean imagePayload) {
        DragShareSettings effective = settings == null
                ? DragShareSettings.defaults()
                : settings;
        Map<String, ShareTarget> visible = new LinkedHashMap<>();
        String copyKey = imagePayload
                ? DragShareSettings.TARGET_COPY_IMAGE
                : DragShareSettings.TARGET_COPY_TEXT;
        if (effective.isTargetVisible(copyKey)) {
            visible.put(copyKey, imagePayload
                    ? ShareTarget.copyImageToClipboard(loadCopyIcon(context))
                    : ShareTarget.copyTextToClipboard(loadCopyIcon(context)));
        }
        if (imagePayload && effective.isTargetVisible(DragShareSettings.TARGET_SAVE_LOCAL)) {
            visible.put(
                    DragShareSettings.TARGET_SAVE_LOCAL,
                    ShareTarget.saveToLocal(loadSaveIcon(context)));
        } else if (!imagePayload
                && effective.isTargetVisible(DragShareSettings.TARGET_TEXT_SEGMENTATION)) {
            visible.put(
                    DragShareSettings.TARGET_TEXT_SEGMENTATION,
                    ShareTarget.textSegmentation(loadTextSegmentationIcon(context)));
        }
        if (!imagePayload && effective.isTargetVisible(DragShareSettings.TARGET_ONESTEP)) {
            visible.put(
                    DragShareSettings.TARGET_ONESTEP,
                    ShareTarget.sendToOneStep(loadOneStepIcon(context)));
        }
        if (queried != null) {
            for (ShareTarget target : queried) {
                if (target == null || target.key() == null
                        || !effective.isTargetVisible(target.key())) {
                    continue;
                }
                visible.putIfAbsent(target.key(), target);
            }
        }

        List<ShareTarget> result = new ArrayList<>();
        
        if (imagePayload) {
            ShareTarget save = visible.remove(DragShareSettings.TARGET_SAVE_LOCAL);
            if (save != null) {
                result.add(save);
            }
            ShareTarget copy = visible.remove(copyKey);
            if (copy != null) {
                result.add(copy);
            }
        } else {
            ShareTarget textSegmentation = visible.remove(
                    DragShareSettings.TARGET_TEXT_SEGMENTATION);
            if (textSegmentation != null) {
                result.add(textSegmentation);
            }
            ShareTarget copy = visible.remove(copyKey);
            if (copy != null) {
                result.add(copy);
            }
            ShareTarget oneStep = visible.remove(DragShareSettings.TARGET_ONESTEP);
            if (oneStep != null) {
                result.add(oneStep);
            }
        }
        for (String key : effective.targetOrder) {
            ShareTarget target = visible.remove(key);
            if (target != null) {
                result.add(target);
            }
        }
        result.addAll(visible.values());
        return result;
    }

    static List<ShareTarget> orderForSettings(
            List<ShareTarget> queried,
            DragShareSettings settings) {
        if (queried == null || queried.isEmpty()) {
            return new ArrayList<>();
        }
        DragShareSettings effective = settings == null
                ? DragShareSettings.defaults()
                : settings;
        Map<String, ShareTarget> remaining = new LinkedHashMap<>();
        for (ShareTarget target : queried) {
            if (target != null && target.key() != null
                    && effective.isTargetVisible(target.key())) {
                remaining.putIfAbsent(target.key(), target);
            }
        }
        List<ShareTarget> result = new ArrayList<>();
        for (String key : effective.targetOrder) {
            ShareTarget target = remaining.remove(key);
            if (target != null) {
                result.add(target);
            }
        }
        result.addAll(remaining.values());
        return result;
    }

    static Drawable loadSaveIcon(Context context) {
        return loadBuiltInIcon(context, com.hyper.onestep.R.drawable.ic_download);
    }

    static Drawable loadCopyIcon(Context context) {
        return loadBuiltInIcon(context, com.hyper.onestep.R.drawable.ic_copy);
    }

    static Drawable loadTextSegmentationIcon(Context context) {
        return loadBuiltInIcon(context, com.hyper.onestep.R.drawable.ic_text_segment);
    }

    static Drawable loadOneStepIcon(Context context) {
        return loadBuiltInIcon(context, com.hyper.onestep.R.drawable.dragshare_ic_onestep);
    }

    static Drawable iconForDisplay(ShareTarget target) {
        if (target == null) {
            return null;
        }
        if (target.isCopyToClipboard()) {
            return new CopyTargetIconDrawable(target.icon, BUILT_IN_ACTION_TILE_COLOR);
        }
        if (target.isSaveToLocal()) {
            return new SaveTargetIconDrawable(target.icon, BUILT_IN_ACTION_TILE_COLOR);
        }
        if (target.isTextSegmentation()) {
            return new TextSegmentationTargetIconDrawable(
                    target.icon,
                    BUILT_IN_ACTION_TILE_COLOR);
        }
        return target.icon;
    }

    private static Drawable loadBuiltInIcon(Context context, int resourceId) {
        if (context == null) {
            return null;
        }
        try {
            Context resourceContext = MODULE_PACKAGE.equals(context.getPackageName())
                    ? context
                    : context.createPackageContext(
                            MODULE_PACKAGE,
                            Context.CONTEXT_IGNORE_SECURITY);
            return resourceContext.getDrawable(resourceId);
        } catch (Throwable ignored) {
            return null;
        }
    }
}
