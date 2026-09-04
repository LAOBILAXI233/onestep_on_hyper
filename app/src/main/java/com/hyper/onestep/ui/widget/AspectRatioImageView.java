package com.hyper.onestep.ui.widget;

import android.content.Context;
import android.util.AttributeSet;

import androidx.appcompat.widget.AppCompatImageView;

public final class AspectRatioImageView extends AppCompatImageView {
    public AspectRatioImageView(Context context) {
        super(context);
    }

    public AspectRatioImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = MeasureSpec.getSize(widthMeasureSpec);
        if (width <= 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        setMeasuredDimension(width, Math.round(width * 9f / 16f));
    }
}
