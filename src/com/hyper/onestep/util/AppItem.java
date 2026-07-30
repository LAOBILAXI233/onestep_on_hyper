package com.hyper.onestep.util;
import java.lang.ref.SoftReference;
import java.util.Comparator;
import java.util.List;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.DragEvent;
// 应用条目，封装 ComponentName 与图标
public class AppItem extends SidebarItem {
    private Context mContext;
    public final ComponentName mName;
    private SoftReference<Drawable> mAvatar;
    private CharSequence mDisplayName;
    public AppItem(Context context, ComponentName name) {
        mContext = context;
        mName = name;
    }
    public AppItem(Context context, ResolveInfo ri) {
        mContext = context;
        mName = new ComponentName(ri.activityInfo.packageName, ri.activityInfo.name);
    }
    private ResolveInfo getResolveInfo() {
        List<ResolveInfo> ris = mContext.getPackageManager().queryIntentActivities(Intent.makeMainActivity(mName), 0);
        if (ris != null && ris.size() > 0) {
            return ris.get(0);
        }
        return null;
    }
    @Override
    public CharSequence getDisplayName() {
        if (mDisplayName != null) {
            return mDisplayName;
        }
        ResolveInfo ri = getResolveInfo();
        if (ri != null) {
            return mDisplayName = ri.loadLabel(mContext.getPackageManager());
        }
        return null;
    }
    @Override
    public Drawable getAvatar() {
        Drawable cached = getCachedAvatar();
        if (cached != null) return cached;
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
            return null;
        }
        return resolveAvatar();
    }

    /** Returns a resolved icon without touching PackageManager; safe for UI binding. */
    public synchronized Drawable getCachedAvatar() {
        return mAvatar == null ? null : mAvatar.get();
    }

    /** Resolves and caches a real app icon. Call only from a background worker. */
    synchronized Drawable resolveAvatar() {
        Drawable cached = getCachedAvatar();
        if (cached != null) return cached;
        ResolveInfo ri = getResolveInfo();
        if (ri == null) return null;
        Drawable icon = IconRedirect.getRedirectIcon(
                mName.getPackageName(), mName.getClassName(), mContext);
        if (icon == null) {
            PackageManager packageManager = mContext.getPackageManager();
            icon = ri.loadIcon(packageManager);
            if (icon == null || isDefaultPlaceholder(icon, packageManager)) {
                return null;
            }
        }
        mAvatar = new SoftReference<Drawable>(icon);
        return icon;
    }
    private boolean isDefaultPlaceholder(Drawable drawable, PackageManager packageManager) {
        try {
            Drawable placeholder = packageManager.getDefaultActivityIcon();
            if (placeholder == null) return false;
            if (drawable.getConstantState() != null && placeholder.getConstantState() != null) {
                return drawable.getConstantState().equals(placeholder.getConstantState());
            }
        } catch (Throwable ignored) {
        }
        return false;
    }
    public void clearAvatarCache() {
        if(mAvatar != null) {
            mAvatar.clear();
            mAvatar = null;
        }
    }
    @Override
    public void delete() {
        AppManager.getInstance(mContext).removeAppItem(this);
    }
    @Override
    public boolean acceptDragEvent(Context context, DragEvent event) {
        return false;
    }
    @Override
    public boolean handleDragEvent(Context context, DragEvent event) {
        return false;
    }
    @Override
    public boolean openUI(Context context) {
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            intent.setComponent(mName);
            mContext.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            LOG.e("The Activity is not exist.");
        }
        return true;
    }
    @Override
    public boolean equals(Object o) {
        if (o == null || !(o instanceof AppItem)) {
            return false;
        }
        AppItem other = (AppItem) o;
        return mName.equals(other.mName);
    }
    public String getPackageName() {
        return mName.getPackageName();
    }
    public String getComponentName() {
        return mName.getClassName();
    }
    public void onIconChanged() {
        if (mAvatar != null) {
            mAvatar.clear();
            mAvatar = null;
        }
    }
    public boolean isValid() {
        return fromData(mContext, getPackageName(), getComponentName()) != null;
    }
    public static AppItem fromData(Context context, String pkgName, String componentName) {
        if (TextUtils.isEmpty(pkgName) || TextUtils.isEmpty(componentName)) {
            return null;
        }
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.setPackage(pkgName);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> list = context.getPackageManager().queryIntentActivities(intent, 0);
        if (list != null) {
            for (int i = 0; i < list.size(); ++i) {
                ResolveInfo ri = list.get(i);
                if (ri.activityInfo.name.equals(componentName)) {
                    return new AppItem(context, new ComponentName(pkgName, componentName));
                }
            }
        }
        return null;
    }
    public static class IndexComparator implements Comparator<AppItem> {
        @Override
        public int compare(AppItem lhs, AppItem rhs) {
            if (lhs.getIndex() > rhs.getIndex()) {
                return -1;
            }
            if (lhs.getIndex() < rhs.getIndex()) {
                return 1;
            }
            return 0;
        }
    }
}
