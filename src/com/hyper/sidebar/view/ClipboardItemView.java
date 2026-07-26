package com.hyper.sidebar.view;

import com.hyper.sidebar.R;
import com.hyper.sidebar.lsp.DragHelper;
import com.hyper.sidebar.util.Tracker;
import com.hyper.sidebar.util.Utils;

import android.content.Context;
import android.content.CopyHistoryItem;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class ClipboardItemView extends LinearLayout {
    private static final float DELETE_THRESHOLD = 0.35f;
    private static final float HORIZONTAL_DIRECTION_RATIO = 1.2f;
    private static final long REBOUND_DURATION_MS = 180L;
    private static final long DELETE_DURATION_MS = 190L;

    public interface OnDeleteListener {
        boolean onDelete(CopyHistoryItem item);
    }

    private TextView mDateText;
    private View mItemGroup;
    private TextView mText;
    private TextView mMoreLabel;
    private View mDeleteUnderlay;
    private ImageView mDeleteStart;
    private ImageView mDeleteEnd;
    private ImageView mDeleteButton;
    private Context mContext;

    private CopyHistoryItem mBoundItem;
    private OnDeleteListener mDeleteListener;
    private int mTouchSlop;
    private float mDeleteRevealDistance;
    private float mDownRawX;
    private float mDownRawY;
    private float mSwipeStartTranslation;
    private boolean mSwiping;
    private boolean mDeleteAnimating;

    private final View.OnTouchListener mSwipeTouchListener = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View view, MotionEvent event) {
            return handleSwipeTouch(event);
        }
    };

    public ClipboardItemView(Context context) {
        this(context, null);
    }

    public ClipboardItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ClipboardItemView(Context context, AttributeSet attrs,
            int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public ClipboardItemView(Context context, AttributeSet attrs,
            int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
        setOrientation(LinearLayout.VERTICAL);
        LayoutInflater.from(context).inflate(R.layout.copy_history_item, this, true);

        mDateText = (TextView) findViewById(R.id.date_content);
        mItemGroup = findViewById(R.id.text_item);
        mText = (TextView) findViewById(R.id.text);
        mMoreLabel = (TextView) findViewById(R.id.more_label);
        mDeleteUnderlay = findViewById(R.id.clipboard_delete_underlay);
        mDeleteStart = (ImageView) findViewById(R.id.clipboard_delete_start);
        mDeleteEnd = (ImageView) findViewById(R.id.clipboard_delete_end);
        mDeleteButton = (ImageView) findViewById(R.id.clipboard_delete_button);

        updateGestureConfiguration();
        mItemGroup.setOnTouchListener(mSwipeTouchListener);
        mDeleteButton.setOnTouchListener(mSwipeTouchListener);
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        mMoreLabel.setText(R.string.load_more);
        updateGestureConfiguration();
    }

    private void updateGestureConfiguration() {
        mTouchSlop = ViewConfiguration.get(mContext).getScaledTouchSlop();
        mDeleteRevealDistance = 56f * getResources().getDisplayMetrics().density;
    }

    public void reset() {
        mBoundItem = null;
        mDeleteListener = null;
        mSwiping = false;
        mDeleteAnimating = false;
        requestParentDisallowIntercept(false);
        resetSwipeVisuals();

        mMoreLabel.setVisibility(View.GONE);
        mDateText.setVisibility(View.GONE);
        mItemGroup.setVisibility(View.GONE);
        setOnClickListener(null);
        setOnLongClickListener(null);
        mItemGroup.setOnClickListener(null);
        mItemGroup.setOnLongClickListener(null);
        mDeleteButton.setOnClickListener(null);
    }

    public void showItem(final CopyHistoryItem item, OnDeleteListener deleteListener) {
        if (item == null) {
            return;
        }
        mBoundItem = item;
        mDeleteListener = deleteListener;
        mText.setText(item.mContent);
        mItemGroup.setVisibility(View.VISIBLE);

        mItemGroup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (mDeleteAnimating || mBoundItem != item) {
                    return;
                }
                Utils.copyText(mContext, item.mContent, false);
                Utils.resumeSidebar(mContext);
                Toast.makeText(mContext, R.string.text_copied, Toast.LENGTH_SHORT).show();
                Tracker.onClick(Tracker.EVENT_COPY);
            }
        });

        mItemGroup.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View view) {
                if (mSwiping || mDeleteAnimating || mBoundItem != item) {
                    return true;
                }
                DragHelper.dragText(view, mContext, item.mContent);
                return true;
            }
        });

        mDeleteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                deleteBoundItem();
            }
        });
    }

    private boolean handleSwipeTouch(MotionEvent event) {
        if (mBoundItem == null) {
            return false;
        }
        if (mDeleteAnimating) {
            return true;
        }

        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                mDownRawX = event.getRawX();
                mDownRawY = event.getRawY();
                mSwipeStartTranslation = mItemGroup.getTranslationX();
                mSwiping = false;
                return false;

            case MotionEvent.ACTION_MOVE:
                float deltaX = event.getRawX() - mDownRawX;
                float deltaY = event.getRawY() - mDownRawY;
                if (!mSwiping) {
                    float absX = Math.abs(deltaX);
                    float absY = Math.abs(deltaY);
                    if (absX <= mTouchSlop
                            || absX <= absY * HORIZONTAL_DIRECTION_RATIO) {
                        return false;
                    }
                    mSwiping = true;
                    mItemGroup.cancelLongPress();
                    mDeleteButton.cancelLongPress();
                    mItemGroup.setPressed(false);
                    mDeleteButton.setPressed(false);
                    requestParentDisallowIntercept(true);
                }
                setSwipeTranslation(mSwipeStartTranslation + deltaX);
                return true;

            case MotionEvent.ACTION_UP:
                if (!mSwiping) {
                    return false;
                }
                mSwiping = false;
                requestParentDisallowIntercept(false);
                settleSwipe();
                return true;

            case MotionEvent.ACTION_CANCEL:
                boolean wasSwiping = mSwiping;
                mSwiping = false;
                requestParentDisallowIntercept(false);
                if (wasSwiping || mItemGroup.getTranslationX() != 0f) {
                    animateBack();
                }
                return wasSwiping;

            default:
                return mSwiping;
        }
    }

    private void setSwipeTranslation(float translation) {
        float width = Math.max(1f, mItemGroup.getWidth());
        float clamped = Math.max(-width, Math.min(width, translation));
        float distance = Math.abs(clamped);
        mItemGroup.setTranslationX(clamped);

        if (distance == 0f) {
            hideDeleteUnderlay();
            return;
        }

        mDeleteUnderlay.setVisibility(View.VISIBLE);
        float alpha = Math.min(1f, distance / Math.max(1f, mDeleteRevealDistance));
        if (clamped > 0f) {
            mDeleteStart.setVisibility(View.VISIBLE);
            mDeleteStart.setAlpha(alpha);
            mDeleteEnd.setAlpha(0f);
            mDeleteEnd.setVisibility(View.INVISIBLE);
        } else {
            mDeleteEnd.setVisibility(View.VISIBLE);
            mDeleteEnd.setAlpha(alpha);
            mDeleteStart.setAlpha(0f);
            mDeleteStart.setVisibility(View.INVISIBLE);
        }
    }

    private void settleSwipe() {
        final CopyHistoryItem item = mBoundItem;
        final OnDeleteListener listener = mDeleteListener;
        float translation = mItemGroup.getTranslationX();
        float width = Math.max(1f, mItemGroup.getWidth());
        if (item == null || listener == null
                || Math.abs(translation) < width * DELETE_THRESHOLD) {
            animateBack();
            return;
        }

        mDeleteAnimating = true;
        float target = translation > 0f ? width : -width;
        mItemGroup.animate()
                .setListener(null)
                .translationX(target)
                .setDuration(DELETE_DURATION_MS)
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        if (mBoundItem != item || mDeleteListener != listener) {
                            return;
                        }
                        boolean deleted = listener.onDelete(item);
                        if (mBoundItem == item) {
                            mDeleteAnimating = false;
                            if (deleted) {
                                mItemGroup.setVisibility(View.INVISIBLE);
                            } else {
                                animateBack();
                            }
                        }
                    }
                })
                .start();
    }

    private void animateBack() {
        final CopyHistoryItem item = mBoundItem;
        mDeleteAnimating = true;
        mDeleteStart.animate().alpha(0f).setDuration(REBOUND_DURATION_MS).start();
        mDeleteEnd.animate().alpha(0f).setDuration(REBOUND_DURATION_MS).start();
        mItemGroup.animate()
                .setListener(null)
                .translationX(0f)
                .setDuration(REBOUND_DURATION_MS)
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        if (mBoundItem == item) {
                            mDeleteAnimating = false;
                            hideDeleteUnderlay();
                        }
                    }
                })
                .start();
    }

    private void deleteBoundItem() {
        final CopyHistoryItem item = mBoundItem;
        final OnDeleteListener listener = mDeleteListener;
        if (mDeleteAnimating || item == null || listener == null) {
            return;
        }
        mDeleteAnimating = true;
        boolean deleted = listener.onDelete(item);
        if (mBoundItem == item) {
            mDeleteAnimating = false;
            if (!deleted) {
                animateBack();
            }
        }
    }

    private void resetSwipeVisuals() {
        mItemGroup.animate().setListener(null).withEndAction(null).cancel();
        mDeleteStart.animate().setListener(null).withEndAction(null).cancel();
        mDeleteEnd.animate().setListener(null).withEndAction(null).cancel();
        mItemGroup.setTranslationX(0f);
        hideDeleteUnderlay();
    }

    private void hideDeleteUnderlay() {
        mDeleteStart.setAlpha(0f);
        mDeleteEnd.setAlpha(0f);
        mDeleteStart.setVisibility(View.INVISIBLE);
        mDeleteEnd.setVisibility(View.INVISIBLE);
        mDeleteUnderlay.setVisibility(View.INVISIBLE);
    }

    private void requestParentDisallowIntercept(boolean disallow) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(disallow);
        }
    }

    public void showDate(int resId) {
        mDateText.setText(resId);
        mDateText.setVisibility(View.VISIBLE);
    }

    public void showMoreTag(View.OnClickListener listener) {
        mMoreLabel.setVisibility(View.VISIBLE);
        setOnClickListener(listener);
    }
}
