package com.hyper.onestep.view;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.SidebarMode;
import com.hyper.onestep.SidebarStatus;
import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.util.AppItem;
import com.hyper.onestep.util.ContactItem;
import com.hyper.onestep.util.ContactManager;
import com.hyper.onestep.util.DingDingContact;
import com.hyper.onestep.util.DragHapticFeedback;
import com.hyper.onestep.util.LOG;
import com.hyper.onestep.util.MailContact;
import com.hyper.onestep.util.MmsContact;
import com.hyper.onestep.util.Tracker;
import com.hyper.onestep.util.Utils;
import com.hyper.onestep.util.WechatContact;
import com.hyper.onestep.util.anim.Anim;
import com.hyper.onestep.util.anim.AnimListener;
import com.hyper.onestep.util.anim.AnimStatusManager;
import com.hyper.onestep.util.anim.AnimTimeLine;
import com.hyper.onestep.util.anim.Vector3f;
import java.util.ArrayList;
import java.util.List;
// 侧边栏主面板视图，承载列表与拖拽逻辑
public class SideView extends RelativeLayout {
    private static final LOG log = LOG.getInstance(SideView.class);
    private static final long DRAG_TASK_RECALL_HOVER_MS = 1500L;
    private static final long DRAG_TASK_RECALL_PRESS_MS = 90L;
    private View mExitAndAdd;
    private View mLeftShadow, mRightShadow;
    private ImageView mExit, mSetting;
    private SidebarListView mOngoingList, mContactList, mAppList;
    private SidebarListView mOngoingListFake, mContactListFake, mShareList;
    private OngoingAdapter mOngoingAdapter;
    private AppListAdapter mAppAdapter;
    private ResolveInfoListAdapter mResolveAdapter;
    private DragScrollView mScrollViewNormal, mScrollViewDragged;
    private View mLegacySidebarLists;
    private TaskSwitcherView mTaskSwitcher;
    private View mDragTaskRecall;
    private boolean mContentDragActive;
    private boolean mDragTaskRecallHovered;
    private boolean mDragTaskSwitcherExpanded;
    private final Runnable mShowDragTaskSwitcher = new Runnable() {
        @Override
        public void run() {
            showDragTaskSwitcher();
        }
    };
    private ContactListAdapter mContactAdapter;
    private Context mContext;
    private SidebarListView mDraggedListView;
    private LinearLayout mSideViewContentDragged;
    private DimSpaceView mDimView;
    public SideView(Context context) {
        this(context, null);
    }
    public SideView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public SideView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }
    public SideView(Context context, AttributeSet attrs, int defStyleAttr,
            int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
    }
    public void setDraggedList(SidebarListView listview) {
        mDraggedListView = listview;
    }
    public SidebarListView getDraggedListView() {
        return mDraggedListView;
    }
    // 视图加载完成：初始化所有列表、适配器与点击监听
    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        mDimView = (DimSpaceView)findViewById(R.id.side_dim_view);
        mExitAndAdd = findViewById(R.id.exit_and_add);
        mExit = (ImageView) findViewById(R.id.exit);
        mLeftShadow = findViewById(R.id.left_shadow);
        mRightShadow = findViewById(R.id.right_shadow);
        updateUIBySidebarMode();
        mExit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (ActivityManager.isUserAMonkey()) {
                    return;
                }
                AnimStatusManager asm = AnimStatusManager.getInstance();
                if (asm.isEnterAnimOngoing() || asm.isExitAnimOngoing()) {
                    return;
                }
                SidebarController.getInstance(mContext).exitOneStepMode();
            }
        });
        mSetting = (ImageView) findViewById(R.id.setting);
        mSetting.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Utils.dismissAllDialog(mContext);
                Intent intent = new Intent(Intent.ACTION_MAIN);
                intent.addCategory(Intent.CATEGORY_LAUNCHER);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.setPackage(mContext.getPackageName());
                mContext.startActivity(intent);
                Tracker.onClick(Tracker.EVENT_SET);
            }
        });
        mSideViewContentDragged = (LinearLayout) findViewById(R.id.side_view_dragged);
        mLegacySidebarLists = findViewById(R.id.legacy_sidebar_lists);
        mTaskSwitcher = (TaskSwitcherView) findViewById(R.id.task_switcher);
        mDragTaskRecall = findViewById(R.id.drag_task_recall);
        try {
            mOngoingList = (SidebarListView) findViewById(R.id.ongoinglist);
            mOngoingList.setSideView(this);
            mOngoingList.setAdapter(mOngoingAdapter = new OngoingAdapter(mContext));
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: ongoing list init failed", t);
        }
        try {
            mOngoingListFake = (SidebarListView) findViewById(R.id.ongoinglist_fake);
            mOngoingListFake.setSideView(this);
            mOngoingListFake.setAdapter(new OngoingAdapter(mContext));
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: ongoing fake list init failed", t);
        }
        try {
            mContactList = (SidebarListView) findViewById(R.id.contactlist);
            mContactList.setSideView(this);
            mContactList.setNeedFootView(true);
            mContactAdapter = new ContactListAdapter(mContext);
            mContactAdapter.isEnableIconShadow = true;
            mContactList.setAdapter(mContactAdapter);
            mContactList.setOnItemClickListener(mContactItemOnClickListener);
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: contact list init failed", t);
        }
        try {
            mContactListFake = (SidebarListView) findViewById(R.id.contactlist_fake);
            mContactListFake.setSideView(this);
            mContactListFake.setNeedFootView(true);
            mContactListFake.setAdapter(new ContactListAdapter(mContext));
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: contact fake list init failed", t);
        }
        try {
            mAppList = (SidebarListView) findViewById(R.id.applist);
            mAppList.setSideView(this);
            mAppAdapter = new AppListAdapter(mContext, mAppList);
            mAppList.setAdapter(mAppAdapter);
            mAppList.setOnItemClickListener(mAppItemOnClickListener);
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: app list init failed", t);
        }
        try {
            mShareList = (SidebarListView) findViewById(R.id.sharelist);
            mShareList.setSideView(this);
            mShareList.setAdapter(mResolveAdapter = new ResolveInfoListAdapter(mContext, mShareList));
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: share list init failed", t);
        }
        try {
            mScrollViewNormal = (DragScrollView) findViewById(R.id.sideview_scroll_list_normal);
            mScrollViewDragged = (DragScrollView) findViewById(R.id.sideview_scroll_list_dragged);
            Utils.setAlwaysCanAcceptDragForAll(mSideViewContentDragged, true);
            mScrollViewDragged.setOnDragListener(new View.OnDragListener() {
                @Override
                public boolean onDrag(View v, DragEvent event) {
                    return true;
                }
            });
            ViewGroup vg= (ViewGroup) mScrollViewDragged.getParent();
            vg.setOnDragListener(new View.OnDragListener() {
                @Override
                public boolean onDrag(View v, DragEvent event) {
                    return true;
                }
            });
        } catch (Throwable t) {
            LSPLogger.e("SideView.onFinishInflate: scroll view init failed", t);
        }
    }
    public void notifyDataSetChanged() {
        if (mAppAdapter != null) mAppAdapter.notifyDataSetChanged();
        if (mResolveAdapter != null) mResolveAdapter.notifyDataSetChanged();
    }
    // 根据状态切换为拖拽起始或结束的视觉表现
    public void requestStatus(SidebarStatus status) {
        if(status == SidebarStatus.NORMAL) {
            onDragEnd(null);
        } else {
            onDragStart(null);
        }
    }
    public View getShadowLineView() {
        if (mLeftShadow != null) {
            if (mLeftShadow.getVisibility() == VISIBLE) {
                return mLeftShadow;
            }
        }
        if (mRightShadow != null) {
            if (mRightShadow.getVisibility() == VISIBLE) {
                return mRightShadow;
            }
        }
        return null;
    }
    // 布局完成后刷新列表分割线显示
    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        refreshDivider();
    }
    private void refreshDivider() {
        int now = 0;
        if (mOngoingList != null) {
            mOngoingList.setNeedFootView(now > 0);
            now += mOngoingList.getChildCount();
        }
        if (mContactList != null) {
            mContactList.setNeedFootView(now > 0);
            now += mContactList.getChildCount();
        }
        if (mAppList != null) {
            mAppList.setNeedFootView(now > 0);
        }
        now = 0;
        if (mOngoingListFake != null) {
            mOngoingListFake.setNeedFootView(now > 0);
            now += mOngoingListFake.getChildCount();
        }
        if (mContactListFake != null) {
            mContactListFake.setNeedFootView(now > 0);
            now += mContactListFake.getChildCount();
        }
        if (mShareList != null) {
            mShareList.setNeedFootView(now > 0);
        }
    }
    private AnimTimeLine mSwitchContentAnim;
    private void onDragStart(final DragEvent event) {
        try {
            onDragStartInternal(event);
        } catch (Throwable t) {
            LSPLogger.e("SideView.onDragStart failed", t);
        }
    }
    private void onDragStartInternal(final DragEvent event) {
        if (event != null) {
            setContentDragUi(true);
        }
        if (mSwitchContentAnim != null) {
            mSwitchContentAnim.cancel();
        }
        int deltaWidth = mContext.getResources().getDimensionPixelSize(R.dimen.sidebar_list_anim_padding);
        boolean leftMode = (SidebarController.getInstance(mContext).getSidebarMode() == SidebarMode.MODE_LEFT);
        int width = getWidth() + deltaWidth;
        int outTo = leftMode ? -width : width;
        mSwitchContentAnim = new AnimTimeLine();
        int time = 300;
        final List<View> disappearViews = new ArrayList<View>();
        if (mOngoingList != null) disappearViews.addAll(mOngoingList.getViewList());
        if (mContactList != null) disappearViews.addAll(mContactList.getViewList());
        if (mAppList != null) disappearViews.addAll(mAppList.getViewList());
        if (disappearViews.size() > 0) {
            Vector3f scaleFrom = new Vector3f(1, 1);
            Vector3f scaleTo   = new Vector3f(0.2f, 0.2f);
            Vector3f alphaFrom = new Vector3f(0, 0, 1);
            Vector3f alphaTo   = new Vector3f(0, 0, 0);
            int count = disappearViews.size();
            for (int i = 0; i < count; i++) {
                View view = disappearViews.get(i);
                Anim scale = new Anim(view, Anim.SCALE, time, Anim.CUBIC_OUT, scaleFrom, scaleTo);
                Anim alpha = new Anim(view, Anim.TRANSPARENT, time, Anim.CUBIC_OUT, alphaFrom, alphaTo);
                mSwitchContentAnim.addAnim(scale);
                mSwitchContentAnim.addAnim(alpha);
            }
        }
        if (event != null) {
            if (mOngoingListFake != null) mOngoingListFake.onDragStart(event);
            if (mContactListFake != null) mContactListFake.onDragStart(event);
            if (mShareList != null) mShareList.onDragStart(event);
        }
        mScrollViewDragged.setTranslationX(outTo);
        Anim inAnim = new Anim(mScrollViewDragged, Anim.MOVE, time, Anim.CUBIC_OUT, new Vector3f(outTo, 0), new Vector3f());
        inAnim.setDelay(time / 4);
        mSwitchContentAnim.addAnim(inAnim);
        mSwitchContentAnim.setAnimListener(new AnimListener() {
            @Override
            public void onStart() {
                mScrollViewDragged.setVisibility(VISIBLE);
            }
            @Override
            public void onComplete(int type) {
                if (mSwitchContentAnim != null) {
                    int count = disappearViews.size();
                    for (int i = 0; i < count; i++) {
                        View view = disappearViews.get(i);
                        view.setAlpha(1);
                        view.setScaleX(1);
                        view.setScaleY(1);
                    }
                    mScrollViewNormal.setVisibility(GONE);
                    mScrollViewDragged.setVisibility(VISIBLE);
                    mScrollViewDragged.setTranslationX(0);
                    mSwitchContentAnim = null;
                }
            }
        });
        mSwitchContentAnim.start();
    }
    private void onDragEnd(DragEvent event) {
        try {
            onDragEndInternal(event);
        } catch (Throwable t) {
            LSPLogger.e("SideView.onDragEnd failed", t);
            setContentDragUi(false);
        }
    }
    private void onDragEndInternal(DragEvent event) {
        if (mSwitchContentAnim != null) {
            mSwitchContentAnim.cancel();
        }
        int deltaWidth = mContext.getResources().getDimensionPixelSize(R.dimen.sidebar_list_anim_padding);
        boolean leftMode = (SidebarController.getInstance(mContext).getSidebarMode() == SidebarMode.MODE_LEFT);
        int width = getWidth() + deltaWidth;
        int outTo = leftMode ? -width : width;
        mSwitchContentAnim = new AnimTimeLine();
        int time = 300;
        final List<View> disappearViews = new ArrayList<View>();
        if (mOngoingList != null) disappearViews.addAll(mOngoingList.getViewList());
        if (mContactList != null) disappearViews.addAll(mContactList.getViewList());
        if (mAppList != null) disappearViews.addAll(mAppList.getViewList());
        int subViewCount = disappearViews.size();
        if (subViewCount > 0) {
            AnimTimeLine timeLine = new AnimTimeLine();
            Vector3f scaleFrom = new Vector3f(0.2f, 0.2f);
            Vector3f scaleTo   = new Vector3f(1, 1);
            Vector3f alphaFrom = new Vector3f(0, 0, 0);
            Vector3f alphaTo   = new Vector3f(0, 0, 1);
            for (int i = 0; i < subViewCount; i++) {
                View view = disappearViews.get(i);
                Anim scale = new Anim(view, Anim.SCALE, time, Anim.CUBIC_OUT, scaleFrom, scaleTo);
                Anim alpha = new Anim(view, Anim.TRANSPARENT, time, Anim.CUBIC_OUT, alphaFrom, alphaTo);
                timeLine.addAnim(scale);
                timeLine.addAnim(alpha);
            }
            timeLine.setDelay(time / 4);
            mSwitchContentAnim.addTimeLine(timeLine);
        }
        Anim outAnim = new Anim(mScrollViewDragged, Anim.MOVE, time, Anim.CUBIC_OUT, new Vector3f(), new Vector3f(outTo, 0));
        mSwitchContentAnim.addAnim(outAnim);
        mSwitchContentAnim.setAnimListener(new AnimListener() {
            @Override
            public void onStart() {
                mScrollViewNormal.setVisibility(VISIBLE);
            }
            @Override
            public void onComplete(int type) {
                if (mSwitchContentAnim != null) {
                    int count = disappearViews.size();
                    for (int i = 0; i < count; i++) {
                        View view = disappearViews.get(i);
                        view.setAlpha(1);
                        view.setScaleX(1);
                        view.setScaleY(1);
                    }
                    if (mOngoingListFake != null) mOngoingListFake.onDragEnd();
                    if (mContactListFake != null) mContactListFake.onDragEnd();
                    if (mShareList != null) mShareList.onDragEnd();
                    mScrollViewNormal.setVisibility(VISIBLE);
                    mScrollViewDragged.setTranslationX(0);
                    mScrollViewDragged.setVisibility(GONE);
                    mScrollViewDragged.scrollTo(0, 0);
                    mSwitchContentAnim = null;
                    setContentDragUi(false);
                }
            }
        });
        mSwitchContentAnim.start();
    }
    private void setContentDragUi(boolean dragging) {
        mContentDragActive = dragging;
        cancelDragTaskRecallHover();
        mDragTaskSwitcherExpanded = false;
        if (dragging) {
            if (mLegacySidebarLists != null) {
                mLegacySidebarLists.setAlpha(1f);
                mLegacySidebarLists.setVisibility(VISIBLE);
            }
            if (mTaskSwitcher != null) {
                mTaskSwitcher.animate().cancel();
                mTaskSwitcher.setContentDropMode(false);
                mTaskSwitcher.setAlpha(1f);
                mTaskSwitcher.setVisibility(GONE);
            }
            if (mDragTaskRecall != null) {
                mDragTaskRecall.setVisibility(VISIBLE);
                mDragTaskRecall.bringToFront();
            }
        } else {
            if (mLegacySidebarLists != null) {
                mLegacySidebarLists.setAlpha(1f);
                mLegacySidebarLists.setVisibility(GONE);
            }
            if (mTaskSwitcher != null) {
                mTaskSwitcher.animate().cancel();
                mTaskSwitcher.endContentDrag();
                mTaskSwitcher.setContentDropMode(false);
                mTaskSwitcher.setAlpha(1f);
                mTaskSwitcher.setVisibility(VISIBLE);
            }
            if (mDragTaskRecall != null) {
                mDragTaskRecall.setVisibility(GONE);
            }
        }
        LSPLogger.i("SideView.setContentDragUi: dragging=" + dragging);
    }
    private void updateDragTaskRecallHover(DragEvent event) {
        if (!mContentDragActive || mDragTaskSwitcherExpanded
                || mDragTaskRecall == null || event == null) {
            return;
        }
        boolean inside = isDragEventInside(event, mDragTaskRecall);
        if (inside == mDragTaskRecallHovered) return;
        if (!inside) {
            cancelDragTaskRecallHover();
            return;
        }
        mDragTaskRecallHovered = true;
        mDragTaskRecall.setActivated(true);
        mDragTaskRecall.setPressed(true);
        mDragTaskRecall.animate().cancel();
        mDragTaskRecall.animate()
                .scaleX(0.92f)
                .scaleY(0.92f)
                .alpha(0.88f)
                .setDuration(DRAG_TASK_RECALL_PRESS_MS)
                .setInterpolator(new LinearInterpolator())
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        if (!mDragTaskRecallHovered || mDragTaskRecall == null) return;
                        mDragTaskRecall.animate()
                                .scaleX(1.08f)
                                .scaleY(1.08f)
                                .alpha(1f)
                                .setDuration(DRAG_TASK_RECALL_HOVER_MS
                                        - DRAG_TASK_RECALL_PRESS_MS)
                                .setInterpolator(new LinearInterpolator())
                                .start();
                    }
                })
                .start();
        FloatText.getInstance(mContext).show(
                mDragTaskRecall, getResources().getText(R.string.drag_recall_tasks));
        mDragTaskRecall.postDelayed(mShowDragTaskSwitcher, DRAG_TASK_RECALL_HOVER_MS);
        LSPLogger.i("SideView: drag task recall armed delay="
                + DRAG_TASK_RECALL_HOVER_MS);
    }
    private void cancelDragTaskRecallHover() {
        mDragTaskRecallHovered = false;
        if (mDragTaskRecall == null) return;
        mDragTaskRecall.removeCallbacks(mShowDragTaskSwitcher);
        mDragTaskRecall.animate().cancel();
        mDragTaskRecall.setPressed(false);
        mDragTaskRecall.animate()
                .scaleX(1f).scaleY(1f).alpha(1f)
                .setDuration(120L).start();
        mDragTaskRecall.setActivated(false);
        FloatText.getInstance(mContext).hide();
    }
    private void showDragTaskSwitcher() {
        if (!mContentDragActive || !mDragTaskRecallHovered
                || mTaskSwitcher == null) {
            return;
        }
        mDragTaskRecallHovered = false;
        mDragTaskSwitcherExpanded = true;
        mDragTaskRecall.removeCallbacks(mShowDragTaskSwitcher);
        mDragTaskRecall.animate().cancel();
        mDragTaskRecall.setPressed(false);
        mDragTaskRecall.setScaleX(1f);
        mDragTaskRecall.setScaleY(1f);
        mDragTaskRecall.setAlpha(1f);
        mDragTaskRecall.setActivated(false);
        FloatText.getInstance(mContext).hide();
        if (mLegacySidebarLists != null) {
            mLegacySidebarLists.setVisibility(GONE);
        }
        mTaskSwitcher.setContentDropMode(true);
        mTaskSwitcher.setAlpha(0f);
        mTaskSwitcher.setVisibility(VISIBLE);
        mTaskSwitcher.refreshVirtualDisplays();
        mTaskSwitcher.animate().alpha(1f).setDuration(180L).start();
        mDragTaskRecall.bringToFront();
        DragHapticFeedback.perform(mDragTaskRecall, HapticFeedbackConstants.LONG_PRESS);
        LSPLogger.i("SideView: drag task switcher expanded after hover");
    }
    private boolean isDragEventInside(DragEvent event, View target) {
        if (target.getVisibility() != VISIBLE || target.getWidth() <= 0
                || target.getHeight() <= 0) {
            return false;
        }
        int[] rootLocation = new int[2];
        int[] targetLocation = new int[2];
        getLocationOnScreen(rootLocation);
        target.getLocationOnScreen(targetLocation);
        float rawX = rootLocation[0] + event.getX();
        float rawY = rootLocation[1] + event.getY();
        return rawX >= targetLocation[0]
                && rawX < targetLocation[0] + target.getWidth()
                && rawY >= targetLocation[1]
                && rawY < targetLocation[1] + target.getHeight();
    }
    private float dragRawX(DragEvent event) {
        int[] location = new int[2];
        getLocationOnScreen(location);
        return location[0] + event.getX();
    }
    private float dragRawY(DragEvent event) {
        int[] location = new int[2];
        getLocationOnScreen(location);
        return location[1] + event.getY();
    }
    // 拖拽事件分发：处理内容拖拽与任务召回的悬停判定
    @Override
    public boolean dispatchDragEvent(DragEvent event) {
        if (TaskSwitcherView.isTaskDrag(event)) {
            return super.dispatchDragEvent(event);
        }
        int action = event.getAction();
        switch (action) {
        case DragEvent.ACTION_DRAG_STARTED:
            FloatText.getInstance(mContext).start(this);
            onDragStart(event);
            return super.dispatchDragEvent(event);
        case DragEvent.ACTION_DRAG_LOCATION:
            updateDragTaskRecallHover(event);
            if (mDragTaskSwitcherExpanded && mTaskSwitcher != null) {
                mTaskSwitcher.updateContentDragLocation(
                        event, dragRawX(event), dragRawY(event));
            }
            return super.dispatchDragEvent(event);
        case DragEvent.ACTION_DROP:
            cancelDragTaskRecallHover();
            if (mDragTaskSwitcherExpanded && mTaskSwitcher != null
                    && mTaskSwitcher.dropContent(
                            event, dragRawX(event), dragRawY(event))) {
                return true;
            }
            return super.dispatchDragEvent(event);
        case DragEvent.ACTION_DRAG_ENDED:
            FloatText.getInstance(mContext).end();
            if (mTaskSwitcher != null) mTaskSwitcher.endContentDrag();
            boolean ret = super.dispatchDragEvent(event);
            onDragEnd(event);
            if (mTaskSwitcher != null) mTaskSwitcher.deliverPendingContentDrop();
            return ret;
        }
        return super.dispatchDragEvent(event);
    }
    private void updateUIBySidebarMode() {
        if (SidebarController.getInstance(mContext).getSidebarMode() == SidebarMode.MODE_LEFT) {
            mExit.setImageResource(R.drawable.exit_icon_left);
            mExitAndAdd.setBackgroundResource(R.drawable.exitandadd_bg_left);
            mLeftShadow.setVisibility(View.VISIBLE);
            mRightShadow.setVisibility(View.GONE);
        } else {
            mExit.setImageResource(R.drawable.exit_icon_right);
            mExitAndAdd.setBackgroundResource(R.drawable.exitandadd_bg_right);
            mLeftShadow.setVisibility(View.GONE);
            mRightShadow.setVisibility(View.VISIBLE);
        }
    }
    // 侧边栏模式变更回调：更新 UI 与分享列表
    public void onSidebarModeChanged(){
        updateUIBySidebarMode();
        if (mResolveAdapter != null) mResolveAdapter.notifyDataSetChanged();
    }
    private AdapterView.OnItemClickListener mAppItemOnClickListener = new AdapterView.OnItemClickListener() {
        @Override
        public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            Object obj = adapterView.getAdapter().getItem(position);
            if (obj != null && obj instanceof AppItem) {
                AppItem ai = (AppItem) obj;
                Utils.dismissAllDialog(mContext);
                ai.openUI(mContext);
                Tracker.onClick(Tracker.EVENT_CLICK_APP, "package", ai.getPackageName());
            } else {
                if (position < mAppList.getHeaderViewsCount()) {
                    return;
                }
                log.info("launch previous app!");
                Utils.dismissAllDialog(mContext);
                Utils.launchPreviousApp(mContext);
                Tracker.onClick(Tracker.EVENT_CLICK_CHANGE);
            }
        }
    };
    private AdapterView.OnItemClickListener mContactItemOnClickListener = new AdapterView.OnItemClickListener() {
        @Override
        public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            if (view == null || view.getTag() == null) {
                return;
            }
            Object obj = adapterView.getAdapter().getItem(position);
            if (obj != null && obj instanceof ContactItem) {
                ContactItem ci = (ContactItem) obj;
                Utils.dismissAllDialog(mContext);
                ci.openUI(mContext);
            }
        }
    };
    // 拖拽对象移动时同步滚动列表与拖拽视图
    public void dragObjectMove(MotionEvent event, long eventTime) {
        if (mScrollViewNormal.getVisibility() == View.VISIBLE) {
            mScrollViewNormal.scrollByMotionEvent(event);
        } else {
            mScrollViewDragged.scrollByMotionEvent(event);
        }
        mDraggedListView.dragObjectMove((int)(event.getRawX()), (int)(event.getRawY()));
    }
    private void restoreListItemView(SidebarListView listView) {
        if (listView != null) {
            try {
                int count = listView.getCount();
                if (count == 0) {
                    return;
                }
                for (int i = 0; i < count; i++) {
                    View view = listView.getChildAt(i);
                    if (view == null) {
                        continue;
                    }
                    view.setScaleX(1);
                    view.setScaleY(1);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    // 还原联系人与应用列表项的缩放状态
    public void restoreView() {
        restoreListItemView(mContactList);
        restoreListItemView(mAppList);
    }
    // 设置侧边栏可用状态并切换暗化遮罩动画
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            mDimView.resume().start();
        } else {
            mDimView.dim().start();
        }
    }
    // 上报联系人/应用/分享项数量到 Tracker 统计
    public void reportToTracker() {
        int countWechat = 0;
        int countDingDing = 0;
        int countMms = 0;
        int countEmail = 0;
        for (ContactItem item : ContactManager.getInstance(mContext).getContactList()) {
            if (item instanceof WechatContact) {
                countWechat++;
            } else if (item instanceof DingDingContact) {
                countDingDing++;
            } else if (item instanceof MmsContact) {
                countMms++;
            } else if (item instanceof MailContact) {
                countEmail++;
            }
        }
        int appNum = 0;
        if (mAppAdapter != null) {
            appNum = mAppAdapter.getCount();
        }
        int shareNum = 0;
        if (mResolveAdapter != null) {
            shareNum = mResolveAdapter.getCount();
        }
        Tracker.reportStatus(Tracker.STATUS_APPNAME,
                "wechat_contacts", countWechat + "",
                "dingding_contacts", countDingDing + "",
                "message_contacts", countMms + "",
                "email_contacts", countEmail + "",
                "app_num", appNum + "",
                "share_num", shareNum + "");
    }
}
