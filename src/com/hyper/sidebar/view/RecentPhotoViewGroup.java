package com.hyper.sidebar.view;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.hyper.sidebar.R;
import com.hyper.sidebar.SidebarController;
import com.hyper.sidebar.util.IEmpty;
import com.hyper.sidebar.util.LOG;
import com.hyper.sidebar.util.RecentPhotoManager;
import com.hyper.sidebar.util.Tracker;
import com.hyper.sidebar.util.Utils;
import com.hyper.sidebar.util.anim.Anim;
import com.hyper.sidebar.util.anim.AnimListener;
import com.hyper.sidebar.util.anim.AnimStatusManager;
import com.hyper.sidebar.util.anim.AnimTimeLine;
import com.hyper.sidebar.util.anim.Vector3f;
import com.hyper.sidebar.view.ContentView.ContentType;
import com.hyper.sidebar.util.ListScrollMemory;

public class RecentPhotoViewGroup extends RoundCornerFrameLayout implements IEmpty, ContentView.ISubView {
    private static final LOG log = LOG.getInstance(RecentPhotoViewGroup.class);

    private ContentView mContentView;
    private View mContainer;
    private TextView mTitle;
    private View mClear;
    private RecentPhotoAdapter mAdapter;
    private ListView mListView;

    private EmptyView mEmptyView;
    private boolean mIsEmpty = true;
    private Context mContext;

    public RecentPhotoViewGroup(Context context) {
        this(context, null);
    }

    public RecentPhotoViewGroup(Context context, AttributeSet attrs) {
        super(context, attrs, 0);
        mContext = context;
    }

    public RecentPhotoViewGroup(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public RecentPhotoViewGroup(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        try {
            mEmptyView = (EmptyView)findViewById(R.id.empty_view);
            mEmptyView.setImageView(R.drawable.photo_blank);
            mEmptyView.setText(R.string.photo_empty_text);
            mEmptyView.setHint(R.string.photo_empty_hint);

            mEmptyView.setButton(R.string.open_gallery, R.drawable.photo_blank_button, new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Utils.openGallery(v.getContext());
                }
            });

            mContainer = findViewById(R.id.photo_container);
            mTitle = (TextView)findViewById(R.id.title);
            mClear = findViewById(R.id.clear);
            mListView = (ListView) findViewById(R.id.content_list);
            mAdapter = new RecentPhotoAdapter(mContext, this);
            mListView.setAdapter(mAdapter);
            mClear.setOnClickListener(mClearListener);

            updateUI();
        } catch (Throwable t) {
            com.hyper.sidebar.lsp.LSPLogger.e("RecentPhotoViewGroup.onFinishInflate failed", t);
        }
    }

    private ClearListener mClearListener = new ClearListener(new Runnable() {
        @Override
        public void run() {
            int width = mListView.getWidth();
            AnimTimeLine timeLine = new AnimTimeLine();
            Anim moveAnim = new Anim(mListView, Anim.MOVE, 100, Anim.CUBIC_OUT, new Vector3f(), new Vector3f(width, 0));
            Anim alphaAnim = new Anim(RecentPhotoViewGroup.this, Anim.TRANSPARENT, 200, Anim.CUBIC_OUT, new Vector3f(0, 0, 1), new Vector3f());
            timeLine.addAnim(moveAnim);
            timeLine.addAnim(alphaAnim);
            timeLine.setAnimListener(new AnimListener() {
                @Override
                public void onStart() {

                }

                @Override
                public void onComplete(int type) {
                    mListView.setTranslationX(0);
                    RecentPhotoViewGroup.this.setAlpha(1);
                    RecentPhotoViewGroup.this.setVisibility(View.GONE);
                    RecentPhotoManager.getInstance(mContext).clear();
                    mAdapter.clearCache();
                    Tracker.onClick(Tracker.EVENT_MAKESURE_CLEAN, "source", "0");
                }
            });
            timeLine.start();
            SidebarController.getInstance(mContext).resumeTopView();
            mContentView.setCurrent(ContentType.NONE);
        }
    }, R.string.title_confirm_delete_history_photo);

    public void setContentView(ContentView cv){
        mContentView = cv;
    }

    @Override
    public void setEmpty(boolean isEmpty) {
        if (mIsEmpty != isEmpty) {
            mIsEmpty = isEmpty;
            if (mIsEmpty) {
                mContainer.setVisibility(GONE);
                mEmptyView.setVisibility(VISIBLE);
            } else {
                mContainer.setVisibility(VISIBLE);
                mEmptyView.setVisibility(GONE);
            }
        }
    }

    public void show(boolean anim) {
        Tracker.onClick(Tracker.EVENT_TOPBAR, "type", "0");
        RecentPhotoManager.getInstance(mContext).refresh();
        // Resume where the user last scrolled instead of snapping back to the newest photos.
        mListView.requestLayout();
        ListScrollMemory.restore(mContext, "photo", mListView);
        setVisibility(View.VISIBLE);
        if (anim) {
            int time = 200;
            AnimTimeLine timeLine = new AnimTimeLine();
            final View view;
            if (mIsEmpty) {
                view = mEmptyView;
            } else {
                view = mListView;
            }
            int height = view.getHeight();
            view.setPivotY(0);
            Anim moveAnim = new Anim(view, Anim.MOVE, time, Anim.CUBIC_OUT, new Vector3f(0, -height / 2), new Vector3f());
            moveAnim.setListener(new AnimListener() {
                @Override
                public void onStart() {
                }
                @Override
                public void onComplete(int type) {
                    view.setTranslationY(0);
                }
            });
            setPivotY(0);
            Anim scaleAnim = new Anim(this, Anim.SCALE, time, Anim.CUBIC_OUT, new Vector3f(0, 0.6f), new Vector3f(0, 1));
            timeLine.addAnim(moveAnim);
            timeLine.addAnim(scaleAnim);
            timeLine.setAnimListener(new AnimListener() {
                @Override
                public void onStart() {
                    AnimStatusManager.getInstance().setStatus(AnimStatusManager.ON_RECENT_PHOTO_LIST_ANIM, true);
                }

                @Override
                public void onComplete(int type) {
                    AnimStatusManager.getInstance().setStatus(AnimStatusManager.ON_RECENT_PHOTO_LIST_ANIM, false);
                    setScaleY(1);
                }
            });
            timeLine.start();
        }
    }

    public void dismiss(boolean anim) {
        ListScrollMemory.save(mContext, "photo", mListView);
        mClearListener.dismiss();
        if (anim) {
            AnimTimeLine timeLine = new AnimTimeLine();
            final View view;
            if (mIsEmpty) {
                view = mEmptyView;
            } else {
                view = mContainer;
            }
            int time = 200;
            view.setPivotY(0);
            Anim alphaAnim = new Anim(view, Anim.TRANSPARENT, time, Anim.CUBIC_OUT, new Vector3f(0, 0, 1), new Vector3f());
            Anim scaleAnim = new Anim(view, Anim.SCALE, time, Anim.CUBIC_OUT, new Vector3f(1, 1), new Vector3f(1, 0.6f));
            timeLine.addAnim(alphaAnim);
            timeLine.addAnim(scaleAnim);
            timeLine.setAnimListener(new AnimListener() {
                @Override
                public void onStart() {
                    AnimStatusManager.getInstance().setStatus(AnimStatusManager.ON_RECENT_PHOTO_LIST_ANIM, true);
                }

                @Override
                public void onComplete(int type) {
                    AnimStatusManager.getInstance().setStatus(AnimStatusManager.ON_RECENT_PHOTO_LIST_ANIM, false);
                    view.setScaleY(1);
                    view.setAlpha(1);
                    setVisibility(View.GONE);
                    mAdapter.shrink();
                }
            });
            timeLine.start();
        } else {
            setVisibility(View.GONE);
        }
    }

    private void updateUI(){
        mTitle.setText(R.string.title_photo);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateUI();
        mClearListener.onConfigurationChanged(newConfig);
    }
}
