package com.hyper.onestep.view;
import java.util.List;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.util.AppIconLoader;
import com.hyper.onestep.util.AppIconPlaceholder;
import com.hyper.onestep.util.AppItem;
import com.hyper.onestep.util.AppManager;
import com.hyper.onestep.util.DataManager;
import com.hyper.onestep.util.LOG;
import com.hyper.onestep.util.anim.Anim;
import com.hyper.onestep.util.anim.AnimListener;
import com.hyper.onestep.util.anim.AnimStatusManager;
import com.hyper.onestep.util.anim.Vector3f;
// 侧边栏应用列表适配器
public class AppListAdapter extends SidebarAdapter {
    private static final LOG log = LOG.getInstance(AppListAdapter.class);
    private Context mContext;
    private List<AppItem> mAppItems;
    private AppManager mManager;
    private boolean mPendingUpdate = false;
    private SidebarListView mListView;
    public AppListAdapter(Context context, SidebarListView listview) {
        mContext = context;
        mListView = listview;
        mListView.setUnDragNumber(1);
        mManager = AppManager.getInstance(context);
        mAppItems = mManager.getAddedAppItem();
        mManager.addListener(resolveInfoUpdateListener);
        AnimStatusManager.getInstance().addAnimFlagStatusChangedListener(
                AnimStatusManager.SIDEBAR_ITEM_DRAGGING,
                new AnimStatusManager.AnimFlagStatusChangedListener() {
                    @Override
                    public void onChanged() {
                        if (mPendingUpdate) {
                            updateData();
                        }
                    }
                });
    }
    private DataManager.RecentUpdateListener resolveInfoUpdateListener = new DataManager.RecentUpdateListener() {
        @Override
        public void onUpdate() {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    mListView.animWhenDatasetChange();
                }
            });
        }
    };
    // 在主线程刷新应用列表数据，拖拽中延迟执行
    public void updateData() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                if (AnimStatusManager.getInstance()
                        .canUpdateSidebarList()) {
                    mAppItems = mManager.getAddedAppItem();
                    notifyDataSetChanged();
                    mPendingUpdate = false;
                } else {
                    mPendingUpdate = true;
                }
            }
        });
    }
    @Override
    public void onDragStart(DragEvent event) {
    }
    @Override
    public void onDragEnd() {
    }
    @Override
    public int getCount() {
        return mAppItems.size() + 1;
    }
    @Override
    public Object getItem(int position) {
        if (position == 0) {
            return null;
        }
        return mAppItems.get(position - 1);
    }
    @Override
    public long getItemId(int position) {
        return position;
    }
    // 将指定应用项移动到目标位置并更新排序
    @Override
    public void moveItemPostion(Object object, int index) {
        index --;
        AppItem item = (AppItem)object;
        if (index < 0) {
            index = 0;
        }
        if (index >= mAppItems.size()) {
            index = mAppItems.size() - 1;
        }
        int now = mAppItems.indexOf(item);
        if (now == -1 || now == index) {
            return;
        }
        mAppItems.remove(item);
        mAppItems.add(index, item);
        onOrderChange();
    }
    private void onOrderChange() {
        for(int i = 0; i < mAppItems.size(); ++ i){
            mAppItems.get(i).setIndex(mAppItems.size() - 1 - i);
        }
        mManager.updateOrder();
    }
    private Anim mIconTouchedAnim;
    // 渲染指定位置的应用项视图，首位置渲染切换应用入口
    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            View view = LayoutInflater.from(mContext).inflate(R.layout.app_item, null);
            View switchApp = view.findViewById(R.id.switch_app);
            ImageView iconImage = (ImageView) view.findViewById(R.id.avatar_image_view);
            iconImage.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(final View view, MotionEvent motionEvent) {
                    if (view == null || motionEvent == null) {
                        return false;
                    }
                    int action = motionEvent.getAction();
                    if (action != MotionEvent.ACTION_DOWN) {
                        return false;
                    }
                    if (mIconTouchedAnim != null) {
                        mIconTouchedAnim.cancel();
                    }
                    view.setAlpha(0.4f);
                    mIconTouchedAnim = new Anim(view, Anim.TRANSPARENT, 100, Anim.CUBIC_OUT, new Vector3f(0, 0, 0.4f), new Vector3f(0, 0, 1));
                    mIconTouchedAnim.setListener(new AnimListener() {
                        @Override
                        public void onStart() {
                        }
                        @Override
                        public void onComplete(int type) {
                            if (mIconTouchedAnim != null) {
                                view.setAlpha(1);
                                mIconTouchedAnim = null;
                            }
                        }
                    });
                    mIconTouchedAnim.setDelay(200);
                    mIconTouchedAnim.start();
                    return false;
                }
            });
            holder = new ViewHolder();
            holder.view = view;
            holder.switchApp = switchApp;
            holder.iconImageView = iconImage;
            view.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        holder.restore();
        if (position == 0) {
            holder.showSwitchApp();
        } else {
            holder.setInfo(mAppItems.get(position - 1));
        }
        return holder.view;
    }
    public static class ViewHolder {
        public View view;
        public View switchApp;
        public ImageView iconImageView;
        // 显示切换应用入口，隐藏图标
        public void showSwitchApp() {
            iconImageView.setTag(null);
            iconImageView.setImageDrawable(null);
            iconImageView.setVisibility(View.GONE);
            switchApp.setVisibility(View.VISIBLE);
        }
        // 绑定应用数据，缺失图标时异步加载
        public void setInfo(final AppItem app) {
            iconImageView.setVisibility(View.VISIBLE);
            switchApp.setVisibility(View.GONE);
            iconImageView.setTag(app.mName);
            android.graphics.drawable.Drawable icon = app.getCachedAvatar();
            iconImageView.setImageDrawable(icon != null ? icon
                    : AppIconPlaceholder.get(view.getContext()));
            if (icon != null) return;
            AppIconLoader.getInstance().load(app, new AppIconLoader.Callback() {
                @Override
                public boolean isValid() {
                    return app.mName.equals(iconImageView.getTag());
                }

                @Override
                public void onIconLoaded(AppItem loadedApp,
                        android.graphics.drawable.Drawable loadedIcon) {
                    if (loadedIcon != null) iconImageView.setImageDrawable(loadedIcon);
                }
            });
        }
        // 还原视图的可见性与位移状态
        public void restore() {
            view.setVisibility(View.VISIBLE);
            view.setTranslationY(0);
        }
    }
}
