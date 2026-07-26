package com.hyper.sidebar.util;

import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.hyper.sidebar.PendingDragEventTask;
import com.hyper.sidebar.lsp.TaskResizer;

import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.DragEvent;

public class ResolveInfoGroup extends SidebarItem {
    private static final String TAG = ResolveInfoGroup.class.getName();

    private Context mContext;
    private List<ComponentName> mNames = new ArrayList<ComponentName>();
    private SoftReference<Drawable> mAvatar = null;
    private ResolveInfo mPrimaryResolveInfo;

    public ResolveInfoGroup(Context context){
        super();
        mContext = context;
    }

    public String getPackageName(){
        if(size() > 0){
            return mNames.get(0).getPackageName();
        }else{
            return null;
        }
    }

    //format : name_1|name_2| .. |name_n
    public String getComponentNames(){
        if (size() <= 0) {
            return null;
        }
        List<String> ls = new ArrayList<String>();
        for(ComponentName name : mNames){
            ls.add(name.getClassName());
        }
        Collections.sort(ls);
        StringBuilder sb = new StringBuilder();
        sb.append(ls.get(0));
        for(int i = 1; i < ls.size(); ++ i){
            sb.append("|" + ls.get(i));
        }
        return sb.toString();
    }

    @Override
    public Drawable getAvatar() {
        Drawable ret;
        if (mAvatar != null) {
            ret = mAvatar.get();
            if (ret != null) {
                return ret;
            }
        }
        ret = loadIcon();
        if (ret != null) {
            mAvatar = new SoftReference<Drawable>(ret);
        }
        return ret;
    }

    public void clearAvatarCache() {
        if (mAvatar != null) {
            mAvatar.clear();
            mAvatar = null;
        }
    }

    private Drawable loadIcon() {
        if (size() <= 0 || mContext == null) {
            return null;
        }

        PackageManager packageManager = mContext.getPackageManager();
        if (mPrimaryResolveInfo != null) {
            try {
                Drawable drawable = mPrimaryResolveInfo.loadIcon(packageManager);
                if (drawable != null) {
                    return drawable;
                }
            } catch (RuntimeException ignored) {
            }
        }

        ComponentName name = mNames.get(0);
        try {
            Drawable drawable = IconRedirect.getRedirectIcon(
                    name.getPackageName(), name.getClassName(), mContext);
            if (drawable != null) {
                return drawable;
            }
        } catch (RuntimeException ignored) {
        }

        ActivityInfo activityInfo = getPrimaryActivityInfo(packageManager);
        if (activityInfo != null) {
            try {
                Drawable drawable = activityInfo.loadIcon(packageManager);
                if (drawable != null) {
                    return drawable;
                }
            } catch (RuntimeException ignored) {
            }
            ApplicationInfo applicationInfo = activityInfo.applicationInfo;
            if (applicationInfo != null) {
                try {
                    Drawable drawable = applicationInfo.loadIcon(packageManager);
                    if (drawable != null) {
                        return drawable;
                    }
                } catch (RuntimeException ignored) {
                }
            }
        }
        return packageManager.getDefaultActivityIcon();
    }

    @Override
    public CharSequence getDisplayName() {
        String packageName = getPackageName();
        if (TextUtils.isEmpty(packageName) || mContext == null) {
            return "";
        }

        PackageManager packageManager = mContext.getPackageManager();
        if (mPrimaryResolveInfo != null) {
            try {
                ActivityInfo cachedActivity = mPrimaryResolveInfo.activityInfo;
                if (cachedActivity != null && cachedActivity.applicationInfo != null) {
                    CharSequence label = cachedActivity.applicationInfo.loadLabel(packageManager);
                    if (!TextUtils.isEmpty(label)) {
                        return label;
                    }
                }
                CharSequence label = mPrimaryResolveInfo.loadLabel(packageManager);
                if (!TextUtils.isEmpty(label)) {
                    return label;
                }
            } catch (RuntimeException ignored) {
            }
        }

        ActivityInfo activityInfo = getPrimaryActivityInfo(packageManager);
        if (activityInfo != null) {
            try {
                if (activityInfo.applicationInfo != null) {
                    CharSequence label = activityInfo.applicationInfo.loadLabel(packageManager);
                    if (!TextUtils.isEmpty(label)) {
                        return label;
                    }
                }
                CharSequence label = activityInfo.loadLabel(packageManager);
                if (!TextUtils.isEmpty(label)) {
                    return label;
                }
            } catch (RuntimeException ignored) {
            }
        }
        return packageName;
    }

    private ActivityInfo getPrimaryActivityInfo(PackageManager packageManager) {
        if (size() <= 0 || packageManager == null) {
            return null;
        }
        try {
            return packageManager.getActivityInfo(mNames.get(0), 0);
        } catch (PackageManager.NameNotFoundException ignored) {
            return null;
        } catch (RuntimeException ignored) {
            return null;
        }
    }

    public void onIconChanged() {
        if (mAvatar != null) {
            mAvatar.clear();
            mAvatar = null;
        }
    }

    public boolean acceptDragEvent(Context context, DragEvent event) {
        if (event == null || event.getClipDescription() == null
                || event.getClipDescription().getMimeTypeCount() <= 0
                || size() <= 0) {
            return false;
        }

        String mimeType = MimeUtils.getCommonMimeType(event);
        if (TextUtils.isEmpty(mimeType)) {
            return false;
        }
        if (ClipDescription.MIMETYPE_TEXT_PLAIN.equals(mimeType)) {
            Intent sharingIntent = new Intent(android.content.Intent.ACTION_SEND);
            sharingIntent.setType("text/plain");
            sharingIntent.setPackage(getPackageName());
            List<ResolveInfo> infos = context.getPackageManager().queryIntentActivities(sharingIntent, 0);
            if (infos != null) {
                for (ComponentName name : mNames) {
                    for (ResolveInfo ri2 : infos) {
                        if (name.equals(new ComponentName(ri2.activityInfo.packageName, ri2.activityInfo.name))) {
                            return true;
                        }
                    }
                }
            }
        } else {
            Intent intent = new Intent();
            if (event.getClipData() != null
                    && event.getClipData().getItemCount() > 1) {
                intent.setAction(Intent.ACTION_SEND_MULTIPLE);
            } else {
                intent.setAction(Intent.ACTION_SEND);
            }
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setType(mimeType);
            intent.setPackage(getPackageName());
            List<ResolveInfo> infos = context.getPackageManager().queryIntentActivities(intent, 0);
            if (infos != null) {
                for (ComponentName name : mNames) {
                    for (ResolveInfo ri2 : infos) {
                        if (name.equals(new ComponentName(ri2.activityInfo.packageName, ri2.activityInfo.name))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public boolean handleDragEvent(Context context, DragEvent event){
        Tracker.dragSuccess(0, getPackageName());
        boolean isPending = PendingDragEventTask.tryPending(context, event, this);
        if(isPending){
            return true;
        }

        if (event == null || event.getClipData() == null
                || event.getClipData().getItemCount() <= 0
                || event.getClipDescription() == null
                || event.getClipDescription().getMimeTypeCount() <= 0
                || size() <= 0) {
            return false;
        }

        String mimeType = MimeUtils.getCommonMimeType(event);
        if (TextUtils.isEmpty(mimeType)) {
            return false;
        }
        if (ClipDescription.MIMETYPE_TEXT_PLAIN.equals(mimeType) && !TextUtils.isEmpty(event.getClipData().getItemAt(0).getText())) {
            Intent intent = new Intent(android.content.Intent.ACTION_SEND);
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setPackage(getPackageName());
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_NEW_DOCUMENT
                    | Intent.FLAG_ACTIVITY_MULTIPLE_TASK);
            intent.setType(mimeType);
            intent.putExtra(Intent.EXTRA_TEXT, event.getClipData().getItemAt(0).getText().toString());
            List<ResolveInfo> infos = context.getPackageManager().queryIntentActivities(intent, 0);
            if (infos != null) {
                for (ComponentName name : mNames) {
                    for (ResolveInfo ri2 : infos) {
                        if (name.equals(new ComponentName(ri2.activityInfo.packageName, ri2.activityInfo.name))) {
                            intent.setComponent(name);
                            Utils.dismissAllDialog(mContext);
                            TaskResizer.noteExternalActivityLaunch();
                            context.startActivity(intent);
                            return true;
                        }
                    }
                }
            }
        }else{
            if(event.getClipData().getItemAt(0).getUri() == null){
                return false;
            }
            Intent intent = new Intent();
            intent.setType(mimeType);
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setPackage(getPackageName());
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_NEW_DOCUMENT
                    | Intent.FLAG_ACTIVITY_MULTIPLE_TASK
                    | Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.setClipData(event.getClipData());
            if (event.getClipData().getItemCount() > 1) {
                intent.setAction(Intent.ACTION_SEND_MULTIPLE);
                intent.putParcelableArrayListExtra(Intent.EXTRA_STREAM, MimeUtils.getUris(event));
            } else {
                intent.setAction(Intent.ACTION_SEND);
                intent.putExtra(Intent.EXTRA_STREAM, event.getClipData().getItemAt(0).getUri());
            }

            List<ResolveInfo> infos = context.getPackageManager().queryIntentActivities(intent, 0);
            if (infos != null) {
                for (ComponentName name : mNames) {
                    for (ResolveInfo ri2 : infos) {
                        if (name.equals(new ComponentName(ri2.activityInfo.packageName, ri2.activityInfo.name))) {
                            intent.setComponent(name);
                            Utils.dismissAllDialog(mContext);
                            TaskResizer.noteExternalActivityLaunch();
                            context.startActivity(intent);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean openUI(Context context) {
        // don't support this action
        return false;
    }

    public boolean containsComponent(ComponentName cn) {
        for (ComponentName name : mNames) {
            if (name.equals(cn)) {
                return true;
            }
        }
        return false;
    }

    public void add(ResolveInfo ri) {
        if (ri == null || ri.activityInfo == null) {
            return;
        }
        if (mPrimaryResolveInfo == null) {
            mPrimaryResolveInfo = ri;
        }
        mNames.add(new ComponentName(ri.activityInfo.packageName, ri.activityInfo.name));
    }

    public int size() {
        return mNames.size();
    }

    public ComponentName get(int i) {
        return mNames.get(i);
    }

    public boolean isValid() {
        return fromData(mContext, getPackageName(), getComponentNames()) != null;
    }

    public static ResolveInfoGroup fromData(Context context, String pkgName, String componentNames) {
        List<ResolveInfoGroup> rigs = ResolveInfoManager.getInstance(context).getAllResolveInfoGroupByPackageName(pkgName);
        if (rigs != null) {
            for (ResolveInfoGroup rig : rigs) {
                String names = rig.getComponentNames();
                if (names != null && names.equals(componentNames)) {
                    return rig;
                }
            }
        }
        return null;
    }

    public static boolean sameComponet(ResolveInfo ri1, ResolveInfo ri2){
        if(ri1.activityInfo == null || ri2.activityInfo == null){
            return false;
        }
        return ri1.activityInfo.packageName.equals(ri2.activityInfo.packageName) &&
                ri1.activityInfo.name.equals(ri2.activityInfo.name);
    }

    public static class IndexComparator implements Comparator<ResolveInfoGroup> {

        @Override
        public int compare(ResolveInfoGroup lhs, ResolveInfoGroup rhs) {
            if (lhs.getIndex() > rhs.getIndex()) {
                return -1;
            }
            if (lhs.getIndex() < rhs.getIndex()) {
                return 1;
            }
            return 0;
        }
    }

    public static class SameGroupComparator implements Comparator<ResolveInfo> {
        private static Set<String> sPACKAGES;
        private static List<String> sPACKAGE_ORDER;
        static {
            sPACKAGES = new HashSet<String>();
            sPACKAGES.add("com.android.contacts");
            sPACKAGE_ORDER = new ArrayList<String>();
            sPACKAGE_ORDER.add("com.sina.weibo");
            sPACKAGE_ORDER.add("com.tencent.mm");
            sPACKAGE_ORDER.add("com.tencent.mobileqq");
            sPACKAGE_ORDER.add("com.android.email");
            sPACKAGE_ORDER.add("com.smartisanos.notes");
            sPACKAGE_ORDER.add("com.android.mms");
            sPACKAGE_ORDER.add("com.android.calendar");
        }

        public static boolean notNeedSplit(String packageName) {
            /**
            if (sPACKAGES.contains(packageName)) {
                return true;
            }
            */
            return packageName.startsWith("com.smartisan");
        }

        public final int compare(ResolveInfo a, ResolveInfo b) {
            String pkgA = a.activityInfo.packageName;
            String pkgB = b.activityInfo.packageName;
            if (!pkgA.equals(pkgB)) {
                int orderA = sPACKAGE_ORDER.indexOf(pkgA);
                int orderB = sPACKAGE_ORDER.indexOf(pkgB);
                if (orderA != orderB) {
                    if (orderA == -1) {
                        return 1;
                    } else if (orderB == -1) {
                        return -1;
                    } else {
                        if (orderA < orderB) {
                            return -1;
                        } else {
                            return 1;
                        }
                    }
                }
                return pkgA.compareTo(pkgB);
            }
            if (notNeedSplit(pkgA)) {
                return 0;
            }
            int la = getLabel(a);
            int lb = getLabel(b);
            if (la != lb) {
                if (la < lb) {
                    return -1;
                } else {
                    return 1;
                }
            } else {
                return 0;
            }
        }

        public static final int getLabel(ResolveInfo ri) {
            if (ri.labelRes != 0) {
                return ri.labelRes;
            }
            if(ri.activityInfo.labelRes != 0) {
                return ri.activityInfo.labelRes;
            }
            if (ri.activityInfo.applicationInfo.labelRes != 0) {
                return ri.activityInfo.applicationInfo.labelRes;
            }
            return 0;
        }
    }

    @Override
    public boolean equals(Object o) {
        ResolveInfoGroup rig = (ResolveInfoGroup) o;
        if (!TextUtils.equals(this.getPackageName(), rig.getPackageName())) {
            return false;
        }
        if (!TextUtils.equals(this.getComponentNames(), rig.getComponentNames())) {
            return false;
        }
        return true;
    }

    @Override
    public void delete() {
        ResolveInfoManager.getInstance(mContext).delete(this);
    }
}
