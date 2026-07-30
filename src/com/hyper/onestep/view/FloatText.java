package com.hyper.onestep.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.SidebarMode;
import com.hyper.onestep.util.LOG;

public class FloatText {
    private static final LOG log = LOG.getInstance(FloatText.class);

    private volatile static FloatText sInstance;

    public static FloatText getInstance(Context context) {
        if (sInstance == null) {
            synchronized (FloatText.class) {
                if (sInstance == null) {
                    sInstance = new FloatText(context);
                }
            }
        }
        return sInstance;
    }

    private Context mContext;
    private View mFloatView;
    private TextView mText;
    private PopupWindow mPopupWindow;
    private int mPaddingWithSidebar;
    private boolean mStarted;

    private FloatText(Context context) {
        mContext = context;
        mFloatView = LayoutInflater.from(context).inflate(R.layout.float_text_layout, null);
        mText = (TextView) mFloatView.findViewById(R.id.text_content);
        mPopupWindow = new PopupWindow(
                mFloatView, LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
        mPopupWindow.setTouchable(false);
        mPopupWindow.setFocusable(false);
        mPopupWindow.setClippingEnabled(false);
        mPopupWindow.setIsLaidOutInScreen(true);
        mPopupWindow.setAttachedInDecor(false);
        mPaddingWithSidebar = mContext.getResources().getDimensionPixelSize(R.dimen.float_text_padding_with_sidebar);
    }

    public void start() {
        start(null);
    }

    /** Keep one non-touchable popup attached for the whole drag session. */
    public void start(View anchor) {
        dismissPopup();
        mStarted = true;
        mFloatView.setVisibility(View.VISIBLE);
        mText.setVisibility(View.INVISIBLE);
        if (anchor != null) {
            attachPopup(anchor);
        }
    }

    public void end() {
        mStarted = false;
        mText.setVisibility(View.INVISIBLE);
        dismissPopup();
    }

    public void show(View view, CharSequence text) {
        if (!mStarted || view == null || TextUtils.isEmpty(text)) {
            hide();
            return;
        }
        if (!mPopupWindow.isShowing() && !attachPopup(view)) {
            return;
        }

        mText.setText(text);
        int spec = MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED);
        mText.measure(spec, spec);
        int textWidth = mText.getMeasuredWidth();
        int textHeight = mText.getMeasuredHeight();
        int viewWidth = view.getWidth();
        int viewHeight = view.getHeight();
        int[] viewLocation = new int[2];
        int[] popupLocation = new int[2];
        view.getLocationOnScreen(viewLocation);
        mFloatView.getLocationOnScreen(popupLocation);

        int x;
        int y = viewLocation[1] - popupLocation[1]
                + (viewHeight - textHeight) / 2;
        if (SidebarController.getInstance(view.getContext()).getSidebarMode() == SidebarMode.MODE_LEFT) {
            x = viewLocation[0] - popupLocation[0]
                    + viewWidth + mPaddingWithSidebar;
        } else {
            x = viewLocation[0] - popupLocation[0]
                    - textWidth - mPaddingWithSidebar;
        }

        int popupWidth = mFloatView.getWidth();
        int popupHeight = mFloatView.getHeight();
        if (popupWidth <= 0 || popupHeight <= 0) {
            popupWidth = view.getResources().getDisplayMetrics().widthPixels;
            popupHeight = view.getResources().getDisplayMetrics().heightPixels;
        }
        x = clamp(x, 0, popupWidth - textWidth);
        y = clamp(y, 0, popupHeight - textHeight);
        mText.setX(x);
        mText.setY(y);
        mText.setVisibility(View.VISIBLE);
    }

    public void hide() {
        mText.setVisibility(View.INVISIBLE);
    }

    private boolean attachPopup(View anchor) {
        if (mPopupWindow.isShowing()) return true;
        if (anchor == null) return false;
        mPopupWindow.setWidth(LayoutParams.MATCH_PARENT);
        mPopupWindow.setHeight(LayoutParams.MATCH_PARENT);
        try {
            mPopupWindow.showAtLocation(anchor, Gravity.TOP | Gravity.LEFT, 0, 0);
            return true;
        } catch (RuntimeException e) {
            log.error("attach failed: " + e);
            return false;
        }
    }

    private void dismissPopup() {
        if (mPopupWindow.isShowing()) {
            try {
                mPopupWindow.dismiss();
            } catch (RuntimeException e) {
                log.error("dismiss failed: " + e);
            }
        }
    }

    private static int clamp(int value, int min, int max) {
        return Math.max(min, Math.min(value, Math.max(min, max)));
    }
}
