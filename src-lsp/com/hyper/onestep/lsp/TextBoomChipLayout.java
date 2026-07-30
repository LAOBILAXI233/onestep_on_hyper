package com.hyper.onestep.lsp;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ScrollView;
import android.widget.TextView;
import com.hyper.onestep.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/** Wrapping chip layout with tap toggling, range swipe selection and long-press dragging. */
public final class TextBoomChipLayout extends ViewGroup {
    public interface Listener {
        void onSelectionChanged(int selectedCount, String selectedText);
        boolean onTextDragRequested(View anchor, String selectedText);
    }
    /** Chips outside the viewport by more than this are snapped instead of animated. */
    private static final int BOOM_IN_VIEWPORT_MARGIN_ROWS = 2;
    /** Upper bound on simultaneously animated chips, so huge captures stay smooth. */
    private static final int BOOM_IN_MAX_CHIPS = 120;
    /** Original BigBang blows every chip out of the touch point from nothing (scale 0), not 0.6. */
    private static final float BOOM_IN_START_SCALE = 0.0f;
    private static final float PRESS_SCALE = 0.92f;
    private static final float SELECT_POP_SCALE = 1.06f;
    private final int mChipGap;
    private final int mRowGap;
    private final int mHorizontalPadding;
    private final int mPunctuationPadding;
    private final int mVerticalPadding;
    private final int mTouchSlop;
    private final int mEdgeScrollSize;
    private final int mBoomInDuration;
    private final int mPressDuration;
    private final int mSelectPopDuration;
    private String mSource = "";
    private List<TextBoomTokenizer.Token> mTokens = Collections.emptyList();
    private boolean[] mSelected = new boolean[0];
    private boolean[] mSelectionAtDown = new boolean[0];
    private Animator[] mChipAnimators = new Animator[0];
    private Listener mListener;
    private ScrollView mScrollHost;
    private boolean mBoomInPending;
    private int mBoomOriginScreenX = -1;
    private int mBoomOriginScreenY = -1;
    private int mDownIndex = -1;
    private int mCurrentIndex = -1;
    private int mPressedIndex = -1;
    private float mDownX;
    private float mDownY;
    private boolean mRangeSelectValue;
    private boolean mMoved;
    private boolean mDragStarted;
    private final Runnable mLongPress = new Runnable() {
        @Override
        public void run() {
            if (mDownIndex < 0 || mMoved || mListener == null) return;
            if (mSelectionAtDown[mDownIndex]) {
                System.arraycopy(mSelectionAtDown, 0, mSelected, 0, mSelected.length);
                syncChildSelection();
                notifySelectionChanged();
            }
            View anchor = getChildAt(mDownIndex);
            String selectedText = getSelectedText();
            if (selectedText.isEmpty()) return;
            anchor.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
            releasePress();
            mDragStarted = mListener.onTextDragRequested(anchor, selectedText);
        }
    };
    public TextBoomChipLayout(Context context) {
        this(context, null);
    }
    public TextBoomChipLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        Resources resources = context.getResources();
        mChipGap = resources.getDimensionPixelSize(R.dimen.text_boom_chip_gap);
        mRowGap = resources.getDimensionPixelSize(R.dimen.text_boom_row_gap);
        mHorizontalPadding = resources.getDimensionPixelSize(
                R.dimen.text_boom_chip_padding_horizontal);
        mPunctuationPadding = resources.getDimensionPixelSize(
                R.dimen.text_boom_punctuation_padding_horizontal);
        mVerticalPadding = resources.getDimensionPixelSize(
                R.dimen.text_boom_chip_padding_vertical);
        mEdgeScrollSize = resources.getDimensionPixelSize(R.dimen.text_boom_edge_scroll);
        mBoomInDuration = resources.getInteger(R.integer.text_boom_boom_in_duration);
        mPressDuration = resources.getInteger(R.integer.text_boom_press_duration);
        mSelectPopDuration = resources.getInteger(R.integer.text_boom_select_pop_duration);
        mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setClipToPadding(false);
        setFocusable(true);
    }
    public void setListener(Listener listener) {
        mListener = listener;
    }
    public void setScrollHost(ScrollView scrollHost) {
        mScrollHost = scrollHost;
    }
    public void setText(String source, List<TextBoomTokenizer.Token> tokens) {
        cancelChipAnimations();
        removeAllViews();
        mSource = source == null ? "" : source;
        mTokens = tokens == null ? Collections.<TextBoomTokenizer.Token>emptyList()
                : new ArrayList<>(tokens);
        mSelected = new boolean[mTokens.size()];
        mSelectionAtDown = new boolean[mTokens.size()];
        mChipAnimators = new Animator[mTokens.size()];
        mBoomInPending = !mTokens.isEmpty() && animationsEnabled();
        int maxChipWidth = getResources().getDisplayMetrics().widthPixels
                - getResources().getDimensionPixelSize(R.dimen.text_boom_content_horizontal) * 2;
        for (int i = 0; i < mTokens.size(); i++) {
            final int index = i;
            TextBoomTokenizer.Token token = mTokens.get(i);
            TextView chip = new TextView(getContext());
            chip.setText(token.textFrom(mSource));
            chip.setTextColor(getResources().getColorStateList(
                    token.punctuation ? R.color.text_boom_punctuation_text
                            : R.color.text_boom_chip_text,
                    getContext().getTheme()));
            chip.setTextSize(TypedValue.COMPLEX_UNIT_PX,
                    getResources().getDimension(R.dimen.text_boom_chip_text));
            chip.setGravity(android.view.Gravity.CENTER);
            chip.setMinHeight(getResources().getDimensionPixelSize(R.dimen.text_boom_chip_min_height));
            chip.setMaxWidth(maxChipWidth);
            chip.setMaxLines(3);
            int horizontalPadding = token.punctuation ? mPunctuationPadding : mHorizontalPadding;
            chip.setPadding(horizontalPadding, mVerticalPadding,
                    horizontalPadding, mVerticalPadding);
            chip.setBackgroundResource(token.punctuation
                    ? R.drawable.text_boom_punctuation_background
                    : R.drawable.text_boom_chip_background);
            chip.setContentDescription(token.textFrom(mSource));
            if (mBoomInPending) {
                chip.setAlpha(0f);
                chip.setScaleX(BOOM_IN_START_SCALE);
                chip.setScaleY(BOOM_IN_START_SCALE);
            }
            chip.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    setSelected(index, !mSelected[index]);
                    notifySelectionChanged();
                }
            });
            addView(chip, new MarginLayoutParams(
                    LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        }
        requestLayout();
        notifySelectionChanged();
    }
    public void selectTokenContaining(int utf16Index) {
        if (utf16Index < 0) return;
        for (int i = 0; i < mTokens.size(); i++) {
            TextBoomTokenizer.Token token = mTokens.get(i);
            if (utf16Index >= token.start && utf16Index < token.end) {
                setSelected(i, true);
                notifySelectionChanged();
                return;
            }
        }
    }
    public int getSelectedCount() {
        int count = 0;
        for (boolean selected : mSelected) if (selected) count++;
        return count;
    }
    public String getSelectedText() {
        int selectedCount = getSelectedCount();
        if (selectedCount == 0) return "";
        if (selectedCount == mTokens.size()) return mSource;
        StringBuilder result = new StringBuilder();
        int previous = -1;
        for (int i = 0; i < mTokens.size(); i++) {
            if (!mSelected[i]) continue;
            TextBoomTokenizer.Token token = mTokens.get(i);
            if (previous >= 0 && i == previous + 1) {
                TextBoomTokenizer.Token priorToken = mTokens.get(previous);
                result.append(mSource, priorToken.end, token.end);
            } else {
                result.append(mSource, token.start, token.end);
            }
            previous = i;
        }
        return result.toString();
    }
    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        return event.getActionMasked() == MotionEvent.ACTION_DOWN
                && findChip(event.getX(), event.getY(), false) >= 0;
    }
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                mDownIndex = findChip(event.getX(), event.getY(), false);
                if (mDownIndex < 0) return false;
                getParent().requestDisallowInterceptTouchEvent(true);
                mCurrentIndex = mDownIndex;
                mDownX = event.getX();
                mDownY = event.getY();
                mMoved = false;
                mDragStarted = false;
                mRangeSelectValue = !mSelected[mDownIndex];
                System.arraycopy(mSelected, 0, mSelectionAtDown, 0, mSelected.length);
                applyRange(mDownIndex, mDownIndex);
                mPressedIndex = mDownIndex;
                animatePress(mPressedIndex, true);
                postDelayed(mLongPress, ViewConfiguration.getLongPressTimeout());
                return true;
            case MotionEvent.ACTION_MOVE:
                if (mDownIndex < 0) return false;
                float dx = event.getX() - mDownX;
                float dy = event.getY() - mDownY;
                if (!mMoved && dx * dx + dy * dy > mTouchSlop * mTouchSlop) {
                    mMoved = true;
                    removeCallbacks(mLongPress);
                    releasePress();
                }
                autoScroll(event.getRawY());
                int index = findChip(event.getX(), event.getY(), true);
                if (index >= 0 && index != mCurrentIndex) {
                    mCurrentIndex = index;
                    applyRange(mDownIndex, mCurrentIndex);
                }
                return true;
            case MotionEvent.ACTION_UP:
                removeCallbacks(mLongPress);
                getParent().requestDisallowInterceptTouchEvent(false);
                releasePress();
                if (!mMoved && !mDragStarted) performClick();
                resetTouch();
                return true;
            case MotionEvent.ACTION_CANCEL:
                removeCallbacks(mLongPress);
                getParent().requestDisallowInterceptTouchEvent(false);
                releasePress();
                resetTouch();
                return true;
            default:
                return super.onTouchEvent(event);
        }
    }
    @Override
    public boolean performClick() {
        super.performClick();
        return true;
    }
    private void resetTouch() {
        mDownIndex = -1;
        mCurrentIndex = -1;
        mMoved = false;
        mDragStarted = false;
    }
    private void applyRange(int first, int second) {
        System.arraycopy(mSelectionAtDown, 0, mSelected, 0, mSelected.length);
        int start = Math.min(first, second);
        int end = Math.max(first, second);
        for (int i = start; i <= end; i++) mSelected[i] = mRangeSelectValue;
        syncChildSelection();
        notifySelectionChanged();
    }
    private void setSelected(int index, boolean selected) {
        if (index < 0 || index >= mSelected.length) return;
        mSelected[index] = selected;
        View child = getChildAt(index);
        if (child.isSelected() != selected) {
            child.setSelected(selected);
            animateSelectPop(index);
        }
    }
    private void syncChildSelection() {
        for (int i = 0; i < mSelected.length; i++) {
            View child = getChildAt(i);
            if (child.isSelected() != mSelected[i]) {
                child.setSelected(mSelected[i]);
                animateSelectPop(i);
            }
        }
    }
    private void notifySelectionChanged() {
        if (mListener != null) {
            mListener.onSelectionChanged(getSelectedCount(), getSelectedText());
        }
    }
    /** Sets the explosion origin in screen coordinates; pass a negative value to use the centre. */
    public void setBoomOrigin(int screenX, int screenY) {
        mBoomOriginScreenX = screenX;
        mBoomOriginScreenY = screenY;
    }
    private final Runnable mBoomInRunner = new Runnable() {
        @Override
        public void run() {
            playBoomIn();
        }
    };
    private void playBoomIn() {
        int count = getChildCount();
        if (count == 0) return;
        if (!animationsEnabled()) {
            resetChipVisuals();
            return;
        }
        Rect viewport = new Rect();
        if (!getLocalVisibleRect(viewport)) {
            viewport.set(0, 0, getWidth(), getHeight());
        }
        viewport.inset(0, -BOOM_IN_VIEWPORT_MARGIN_ROWS * (mRowGap + mVerticalPadding * 2));
        List<Integer> animated = new ArrayList<>();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            boolean visible = child.getBottom() >= viewport.top && child.getTop() <= viewport.bottom;
            if (visible && animated.size() < BOOM_IN_MAX_CHIPS) {
                animated.add(i);
            } else {
                snapChip(child);
            }
        }
        if (animated.isEmpty()) return;
        float originX = getWidth() / 2f;
        float originY = viewport.centerY();
        if (mBoomOriginScreenX >= 0 && mBoomOriginScreenY >= 0) {
            int[] location = new int[2];
            getLocationOnScreen(location);
            originX = mBoomOriginScreenX - location[0];
            originY = mBoomOriginScreenY - location[1];
        }
        for (int i = 0; i < animated.size(); i++) {
            int index = animated.get(i);
            startChipAnimator(index, makeBoomInAnimator(getChildAt(index), originX, originY));
        }
    }
    private Animator makeBoomInAnimator(View child, float originX, float originY) {
        float fromTranslationX = originX - (child.getLeft() + child.getWidth() / 2f);
        float fromTranslationY = originY - (child.getTop() + child.getHeight() / 2f);
        centerPivot(child);
        child.setTranslationX(fromTranslationX);
        child.setTranslationY(fromTranslationY);
        child.setScaleX(0f);
        child.setScaleY(0f);
        child.setAlpha(0f);
        ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(child,
                PropertyValuesHolder.ofFloat(View.SCALE_X, 0f, 1f),
                PropertyValuesHolder.ofFloat(View.SCALE_Y, 0f, 1f),
                PropertyValuesHolder.ofFloat(View.ALPHA, 0f, 1f),
                PropertyValuesHolder.ofFloat(View.TRANSLATION_X, fromTranslationX, 0f),
                PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, fromTranslationY, 0f));
        anim.setInterpolator(new DecelerateInterpolator(1.5f));
        anim.setDuration(mBoomInDuration);
        return anim;
    }
    private void animatePress(int index, boolean pressed) {
        if (index < 0 || index >= getChildCount()) return;
        View child = getChildAt(index);
        if (!animationsEnabled()) {
            snapChip(child);
            return;
        }
        centerPivot(child);
        child.setAlpha(1f);
        float target = pressed ? PRESS_SCALE : 1f;
        ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(child,
                PropertyValuesHolder.ofFloat(View.SCALE_X, target),
                PropertyValuesHolder.ofFloat(View.SCALE_Y, target));
        anim.setDuration(pressed ? mPressDuration : mPressDuration * 3 / 2);
        anim.setInterpolator(pressed ? new DecelerateInterpolator(1.5f)
                : new OvershootInterpolator(2.2f));
        startChipAnimator(index, anim);
    }
    private void animateSelectPop(int index) {
        if (index < 0 || index >= getChildCount() || !animationsEnabled()) return;
        View child = getChildAt(index);
        centerPivot(child);
        child.setAlpha(1f);
        float from = child.getScaleX();
        ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(child,
                PropertyValuesHolder.ofKeyframe(View.SCALE_X,
                        Keyframe.ofFloat(0f, from),
                        Keyframe.ofFloat(0.45f, SELECT_POP_SCALE),
                        Keyframe.ofFloat(1f, 1f)),
                PropertyValuesHolder.ofKeyframe(View.SCALE_Y,
                        Keyframe.ofFloat(0f, from),
                        Keyframe.ofFloat(0.45f, SELECT_POP_SCALE),
                        Keyframe.ofFloat(1f, 1f)));
        anim.setDuration(mSelectPopDuration);
        anim.setInterpolator(new DecelerateInterpolator(1.5f));
        startChipAnimator(index, anim);
    }
    private void releasePress() {
        if (mPressedIndex >= 0) {
            animatePress(mPressedIndex, false);
            mPressedIndex = -1;
        }
    }
    private void startChipAnimator(final int index, Animator animator) {
        cancelChipAnimator(index);
        if (index >= 0 && index < mChipAnimators.length) mChipAnimators[index] = animator;
        animator.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                if (index >= 0 && index < mChipAnimators.length
                        && mChipAnimators[index] == animation) {
                    mChipAnimators[index] = null;
                }
            }
        });
        animator.start();
    }
    private void cancelChipAnimator(int index) {
        if (index < 0 || index >= mChipAnimators.length) return;
        Animator running = mChipAnimators[index];
        if (running != null) {
            mChipAnimators[index] = null;
            running.cancel();
        }
    }
    private void cancelChipAnimations() {
        for (int i = 0; i < mChipAnimators.length; i++) cancelChipAnimator(i);
        removeCallbacks(mBoomInRunner);
        mBoomInPending = false;
        mPressedIndex = -1;
    }
    private void centerPivot(View child) {
        child.setPivotX(child.getWidth() / 2f);
        child.setPivotY(child.getHeight() / 2f);
    }
    private void snapChip(View child) {
        child.setAlpha(1f);
        child.setScaleX(1f);
        child.setScaleY(1f);
        child.setTranslationX(0f);
        child.setTranslationY(0f);
    }
    private void resetChipVisuals() {
        for (int i = 0; i < getChildCount(); i++) snapChip(getChildAt(i));
    }
    private boolean animationsEnabled() {
        try {
            return Settings.Global.getFloat(getContext().getContentResolver(),
                    Settings.Global.ANIMATOR_DURATION_SCALE, 1f) > 0f;
        } catch (Throwable t) {
            return true;
        }
    }
    @Override
    protected void onDetachedFromWindow() {
        cancelChipAnimations();
        super.onDetachedFromWindow();
    }
    private int findChip(float x, float y, boolean nearest) {
        int nearestIndex = -1;
        float nearestDistance = Float.MAX_VALUE;
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            if (x >= child.getLeft() && x <= child.getRight()
                    && y >= child.getTop() && y <= child.getBottom()) {
                return i;
            }
            if (nearest) {
                float clampedX = Math.max(child.getLeft(), Math.min(x, child.getRight()));
                float clampedY = Math.max(child.getTop(), Math.min(y, child.getBottom()));
                float dx = x - clampedX;
                float dy = y - clampedY;
                float distance = dx * dx + dy * dy;
                if (distance < nearestDistance) {
                    nearestDistance = distance;
                    nearestIndex = i;
                }
            }
        }
        return nearestIndex;
    }
    private void autoScroll(float rawY) {
        if (mScrollHost == null) return;
        int[] location = new int[2];
        mScrollHost.getLocationOnScreen(location);
        int top = location[1];
        int bottom = top + mScrollHost.getHeight();
        if (rawY < top + mEdgeScrollSize) {
            mScrollHost.scrollBy(0, -mRowGap * 2);
        } else if (rawY > bottom - mEdgeScrollSize) {
            mScrollHost.scrollBy(0, mRowGap * 2);
        }
    }
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int available = Math.max(0, width - getPaddingLeft() - getPaddingRight());
        int x = 0;
        int y = getPaddingTop();
        int rowHeight = 0;
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
            int childWidth = Math.min(available, child.getMeasuredWidth());
            int childHeight = child.getMeasuredHeight();
            if (x > 0 && x + childWidth > available) {
                x = 0;
                y += rowHeight + mRowGap;
                rowHeight = 0;
            }
            x += childWidth + mChipGap;
            rowHeight = Math.max(rowHeight, childHeight);
        }
        int desiredHeight = y + rowHeight + getPaddingBottom();
        setMeasuredDimension(resolveSize(width, widthMeasureSpec),
                resolveSize(desiredHeight, heightMeasureSpec));
    }
    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int available = Math.max(0, right - left - getPaddingLeft() - getPaddingRight());
        int x = 0;
        int y = getPaddingTop();
        int rowHeight = 0;
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            int childWidth = Math.min(available, child.getMeasuredWidth());
            int childHeight = child.getMeasuredHeight();
            if (x > 0 && x + childWidth > available) {
                x = 0;
                y += rowHeight + mRowGap;
                rowHeight = 0;
            }
            int childLeft = getPaddingLeft() + x;
            child.layout(childLeft, y, childLeft + childWidth, y + childHeight);
            x += childWidth + mChipGap;
            rowHeight = Math.max(rowHeight, childHeight);
        }
        if (mBoomInPending && getChildCount() > 0) {
            mBoomInPending = false;
            post(mBoomInRunner);
        }
    }
    @Override
    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
    }
    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new MarginLayoutParams(getContext(), attrs);
    }
    @Override
    protected LayoutParams generateLayoutParams(LayoutParams params) {
        return new MarginLayoutParams(params);
    }
    @Override
    protected boolean checkLayoutParams(LayoutParams params) {
        return params instanceof MarginLayoutParams;
    }
}
