package com.hyper.onestep.view;
import com.hyper.onestep.R;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.FrameLayout;
// 列表条目容器，统一条目背景
public class ListItemFrameLayout extends FrameLayout {
    private int mBackground = R.drawable.list_item_background;
    private Context mContext;
    public ListItemFrameLayout(Context context) {
        this(context, null);
    }
    public ListItemFrameLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public ListItemFrameLayout(Context context, AttributeSet attrs,
            int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }
    public ListItemFrameLayout(Context context, AttributeSet attrs,
            int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
        updateUI();
    }
    private void updateUI() {
        setBackground(mContext.getResources().getDrawable(mBackground));
    }
    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateUI();
    }
}
