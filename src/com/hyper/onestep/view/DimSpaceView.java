package com.hyper.onestep.view;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.hyper.onestep.R;
import com.hyper.onestep.util.anim.Anim;
import com.hyper.onestep.util.anim.AnimListener;
import com.hyper.onestep.util.anim.AnimTimeLine;
import com.hyper.onestep.util.anim.Vector3f;
// 占位压暗视图，用于顶部条目间隔与压暗效果
public class DimSpaceView extends View implements ITopItem {
    private static final int ANIM_DURA = 300;
    public DimSpaceView(Context context) {
        this(context, null);
    }
    public DimSpaceView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public DimSpaceView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }
    public DimSpaceView(Context context, AttributeSet attrs, int defStyleAttr,
            int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        setVisibility(View.INVISIBLE);
    }
    @Override
    public AnimTimeLine highlight() {
        return new AnimTimeLine();
    }
    @Override
    public AnimTimeLine dim() {
        Anim alphaAnim = new Anim(this, Anim.TRANSPARENT, ANIM_DURA,
                Anim.CUBIC_OUT, new Vector3f(), new Vector3f(0, 0, 1));
        AnimTimeLine timeLine = new AnimTimeLine();
        timeLine.addAnim(alphaAnim);
        timeLine.setAnimListener(new AnimListener() {
            @Override
            public void onStart() {
                setVisibility(View.VISIBLE);
            }
            @Override
            public void onComplete(int type) {
            }
        });
        return timeLine;
    }
    @Override
    public AnimTimeLine resume() {
        AnimTimeLine timeLine = new AnimTimeLine();
        Anim alphaAnim = new Anim(this, Anim.TRANSPARENT, ANIM_DURA,
                Anim.CUBIC_OUT, new Vector3f(0, 0, 1), new Vector3f());
        alphaAnim.setListener(new AnimListener() {
            @Override
            public void onStart() {
            }
            @Override
            public void onComplete(int type) {
                setVisibility(View.INVISIBLE);
            }
        });
        timeLine.addAnim(alphaAnim);
        return timeLine;
    }
}
