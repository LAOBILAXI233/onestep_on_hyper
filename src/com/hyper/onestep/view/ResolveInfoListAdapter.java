package com.hyper.onestep.view;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.DragEvent;
import android.view.HapticFeedbackConstants;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;

import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.SidebarMode;
import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.util.Constants;
import com.hyper.onestep.util.DragHapticFeedback;
import com.hyper.onestep.util.LOG;
import com.hyper.onestep.util.MimeUtils;
import com.hyper.onestep.util.ResolveInfoGroup;
import com.hyper.onestep.util.ResolveInfoManager;
import com.hyper.onestep.util.Utils;
import com.hyper.onestep.util.anim.AnimStatusManager;

public class ResolveInfoListAdapter extends SidebarAdapter {
    private static final LOG log = LOG.getInstance(ResolveInfoListAdapter.class);
    private static final float SCALE_SIZE = 1.15f;

    private Context mContext;
    private SidebarListView mListView;
    private List<ResolveInfoGroup> mResolveInfos;
    private List<ResolveInfoGroup> mAcceptableResolveInfos = new ArrayList<ResolveInfoGroup>();
    private DragEvent mDragEvent;
    private ResolveInfoManager mManager;
    private boolean mPendingUpdate = false;
    private static final int MAX_DYNAMIC_SHARE_TARGETS = 96;
    public ResolveInfoListAdapter(Context context, SidebarListView listView) {
        mContext = context;
        mListView = listView;
        mManager = ResolveInfoManager.getInstance(context);
        mResolveInfos = mManager.getAddedResolveInfoGroup();
        mAcceptableResolveInfos.addAll(mResolveInfos);
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

    private ResolveInfoManager.ResolveInfoUpdateListener resolveInfoUpdateListener = new ResolveInfoManager.ResolveInfoUpdateListener() {
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

    public void updateData() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                if (AnimStatusManager.getInstance()
                        .canUpdateSidebarList()) {
                    mResolveInfos = mManager.getAddedResolveInfoGroup();
                    updateAcceptableResolveInfos();
                    mPendingUpdate = false;
                } else {
                    mPendingUpdate = true;
                }
            }
        });
    }

    private void updateAcceptableResolveInfos() {
        mAcceptableResolveInfos.clear();
        for (ResolveInfoGroup rig : mResolveInfos) {
            if (mDragEvent == null || rig.acceptDragEvent(mContext, mDragEvent)) {
                mAcceptableResolveInfos.add(rig);
            }
        }
        if (mDragEvent != null && mDragEvent.getClipDescription() != null
                && mDragEvent.getClipDescription().getMimeTypeCount() > 0) {
            String mimeType = MimeUtils.getCommonMimeType(mDragEvent);
            boolean hasClipData = mDragEvent.getClipData() != null;
            List<ResolveInfoGroup> discovered;
            if (hasClipData) {
                boolean multiple = mDragEvent.getClipData().getItemCount() > 1;
                discovered = mManager.getShareTargets(mimeType, multiple);
            } else {
                // Android exposes ClipData only for ACTION_DROP. At drag start we
                // can still build the target list from the public MIME description.
                discovered = mManager.getShareTargets(mimeType);
            }
            for (ResolveInfoGroup rig : discovered) {
                if (mAcceptableResolveInfos.size() >= MAX_DYNAMIC_SHARE_TARGETS) break;
                if (!mAcceptableResolveInfos.contains(rig)) {
                    mAcceptableResolveInfos.add(rig);
                }
            }
            LSPLogger.i("ResolveInfoListAdapter: drag mime=" + mimeType
                    + " clipData=" + hasClipData
                    + " targets=" + mAcceptableResolveInfos.size());
        }
        notifyDataSetChanged();
    }

    @Override
    public void onDragStart(DragEvent event) {
        mDragEvent = event;
        updateAcceptableResolveInfos();
    }

    @Override
    public void onDragEnd() {
        mDragEvent = null;
        updateAcceptableResolveInfos();
    }

    @Override
    public int getCount() {
        return mAcceptableResolveInfos.size();
    }

    @Override
    public Object getItem(int position) {
        return mAcceptableResolveInfos.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public void moveItemPostion(Object object, int index) {
        ResolveInfoGroup item = (ResolveInfoGroup)object;
        if (index < 0) {
            index = 0;
        }
        if (index >= mResolveInfos.size()) {
            index = mResolveInfos.size() - 1;
        }
        int now = mResolveInfos.indexOf(item);
        if (now == -1 || now == index) {
            return;
        }
        mResolveInfos.remove(item);
        mResolveInfos.add(index, item);
        onOrderChange();
    }

    private void onOrderChange() {
        for(int i = 0; i < mResolveInfos.size(); ++ i){
            mResolveInfos.get(i).setIndex(mResolveInfos.size() - 1 - i);
        }
        mManager.updateOrder();
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        final ViewHolder holder;
        ResolveInfoGroup resolveInfoGroup = mAcceptableResolveInfos.get(position);
        if (convertView == null) {
            View view = LayoutInflater.from(mContext).inflate(R.layout.shareitem, null);
            ImageView iconInputDragLeft = (ImageView) view.findViewById(R.id.icon_input_drag_left);
            ImageView iconInputDragRight = (ImageView) view.findViewById(R.id.icon_input_drag_right);
            ImageView iconImage = (ImageView) view.findViewById(R.id.shareitemimageview);

            holder = new ViewHolder();
            holder.view = view;
            holder.context = mContext;
            holder.iconInputDragLeft = iconInputDragLeft;
            holder.iconInputDragRight = iconInputDragRight;
            holder.iconImageView = iconImage;
            view.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        holder.restore();
        boolean isLeftMode = SidebarController.getInstance(mContext).getSidebarMode() == SidebarMode.MODE_LEFT;
        holder.setInfo(resolveInfoGroup, isLeftMode);
        Utils.setAlwaysCanAcceptDrag(holder.view, true);
        holder.view.setOnDragListener(new View.OnDragListener() {
            @Override
            public boolean onDrag(View v, DragEvent event) {
                final int action = event.getAction();
                switch (action) {
                    case DragEvent.ACTION_DRAG_STARTED:
                        return true;
                    case DragEvent.ACTION_DRAG_ENTERED:
                        FloatText.getInstance(mContext).show(holder.view, holder.resolveInfoGroup.getDisplayName());
                        DragHapticFeedback.perform(
                                holder.view, HapticFeedbackConstants.CLOCK_TICK);
                        holder.view.animate().cancel();
                        holder.view.animate().scaleX(SCALE_SIZE).scaleY(SCALE_SIZE)
                        .setInterpolator(new AccelerateDecelerateInterpolator())
                        .setStartDelay(0)
                        .setDuration(100).start();
                        return true;
                    case DragEvent.ACTION_DRAG_EXITED:
                        FloatText.getInstance(mContext).hide();
                        holder.view.animate().cancel();
                        holder.view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(100).start();
                        return true;
                    case DragEvent.ACTION_DRAG_LOCATION:
                        // The sidebar list animates and scrolls under a stationary drag.
                        // Keep the label aligned after ACTION_DRAG_ENTERED as its item moves.
                        FloatText.getInstance(mContext).show(
                                v, holder.resolveInfoGroup.getDisplayName());
                        return true;
                    case DragEvent.ACTION_DROP:
                        FloatText.getInstance(mContext).hide();
                        holder.view.animate().cancel();
                        holder.view.setScaleX(1.0f);
                        holder.view.setScaleY(1.0f);
                        return holder.resolveInfoGroup.handleDragEvent(mContext, event);
                    case DragEvent.ACTION_DRAG_ENDED:
                        FloatText.getInstance(mContext).hide();
                        holder.view.animate().cancel();
                        holder.view.setScaleX(1.0f);
                        holder.view.setScaleY(1.0f);
                        return true;
                }
                return false;
            }
        });
        return holder.view;
    }

    public int objectIndex(ResolveInfoGroup data) {
        if (mResolveInfos == null) {
            return -1;
        }
        return mResolveInfos.indexOf(data);
    }

    public static class ViewHolder {
        public View view;
        public Context context;

        public ImageView iconInputDragLeft;
        public ImageView iconInputDragRight;
        public ImageView iconImageView;
        public Drawable icon;
        public ResolveInfoGroup resolveInfoGroup;
        public boolean isNewAdded = false;

        public void setInfo(ResolveInfoGroup info, boolean isLeftMode) {
            resolveInfoGroup = info;
            if (info == null) {
                iconImageView.setImageDrawable(null);
                view.setContentDescription(null);
                return;
            }
            CharSequence label = resolveInfoGroup.getDisplayName();
            iconImageView.setImageDrawable(resolveInfoGroup.getAvatar());
            view.setContentDescription(label);
            iconImageView.setContentDescription(label);
            int offsetX = Constants.share_item_offset_x;
            if (isLeftMode) {
                offsetX = -offsetX;
            }
            iconImageView.setTranslationX(offsetX);
            iconImageView.setTranslationY(Constants.share_item_offset_y);
            iconImageView.setScaleX(1.0f);
            iconImageView.setScaleY(1.0f);
            if (isLeftMode) {
                iconInputDragLeft.setVisibility(View.INVISIBLE);
                iconInputDragRight.setVisibility(View.VISIBLE);
            } else {
                iconInputDragRight.setVisibility(View.INVISIBLE);
                iconInputDragLeft.setVisibility(View.VISIBLE);
            }
        }

        public void restore(){
            view.animate().cancel();
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            if (view.getVisibility() == View.INVISIBLE) {
                view.setVisibility(View.VISIBLE);
            }
            view.setTranslationY(0);
        }
    }
}
