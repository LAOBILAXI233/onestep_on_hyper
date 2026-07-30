package com.hyper.onestep.view;

import java.util.HashMap;
import java.util.Map;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.util.LOG;
import com.hyper.onestep.util.Utils;
import com.hyper.onestep.util.anim.Anim;
import com.hyper.onestep.util.anim.Vector3f;

public class ContentView extends RelativeLayout {
    private static final LOG log = LOG.getInstance(ContentView.class);

    public interface ISubView{
        void show(boolean anim);
        void dismiss(boolean anim);
    }

    public enum ContentType{
        NONE,
        PHOTO,
        FILE,
        CLIPBOARD,
    }

    private RecentPhotoViewGroup mRecentPhotoViewGroup;
    private RecentFileViewGroup mRecentFileViewGroup;
    private ClipboardViewGroup mClipboardViewGroup;
    private Context mContext;

    private ContentType mCurType = ContentType.NONE;
    private int mVisibilityGeneration;

    private Map<ContentType, ISubView> mMapTypeToView = new HashMap<ContentType, ISubView>();

    public ContentView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ContentView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public ContentView(Context context, AttributeSet attrs, int defStyleAttr,
            int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
    }

    public ContentType getCurrentContent(){
        return mCurType;
    }

    public void setCurrent(ContentType ct){
        mCurType = ct;
    }

    private static final int ANIMATION_DURA = 300;

    public void show(ContentType ct, boolean anim) {
        if (mCurType != ContentType.NONE || !mMapTypeToView.containsKey(ct)) {
            return;
        }
        ++mVisibilityGeneration;
        mCurType = ct;
        // The Smartisan framework used ViewGroup.onChildVisibilityChanged() to make
        // this separate WindowManager window visible. That callback no longer exists
        // on Android 16, so the parent must be shown explicitly before its child.
        setVisibility(View.VISIBLE);
        mMapTypeToView.get(ct).show(anim);
        if (anim) {
            setAlpha(0.0f);
            Anim alphaAnim = new Anim(this, Anim.TRANSPARENT, ANIMATION_DURA, Anim.CUBIC_OUT, new Vector3f(), new Vector3f(0, 0, 1));
            alphaAnim.start();
        } else {
            setAlpha(1.0f);
        }
    }

    public void dismiss(ContentType ct, boolean anim) {
        if (mCurType != ct || !mMapTypeToView.containsKey(ct)) {
            return;
        }
        final int visibilityGeneration = ++mVisibilityGeneration;
        mCurType = ContentType.NONE;
        mMapTypeToView.get(ct).dismiss(anim);
        if(anim){
            Anim alphaAnim = new Anim(this, Anim.TRANSPARENT, ANIMATION_DURA, Anim.CUBIC_OUT, new Vector3f(0, 0, 1), new Vector3f());
            alphaAnim.start();
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (visibilityGeneration != mVisibilityGeneration
                            || mCurType != ContentType.NONE) {
                        return;
                    }
                    syncSelfVisibilityByChildren();
                    setAlpha(1.0f);
                }
            }, ANIMATION_DURA);
        } else {
            syncSelfVisibilityByChildren();
            setAlpha(1.0f);
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        try {
            mRecentPhotoViewGroup = (RecentPhotoViewGroup)findViewById(R.id.recent_photo_view_group);
            if (mRecentPhotoViewGroup != null) mRecentPhotoViewGroup.setContentView(this);
            mRecentFileViewGroup = (RecentFileViewGroup)findViewById(R.id.recent_file_view_group);
            if (mRecentFileViewGroup != null) mRecentFileViewGroup.setContentView(this);
            mClipboardViewGroup = (ClipboardViewGroup)findViewById(R.id.clipboard_view_group);
            if (mClipboardViewGroup != null) mClipboardViewGroup.setContentView(this);

            if (mRecentPhotoViewGroup != null)
                mMapTypeToView.put(ContentType.PHOTO, mRecentPhotoViewGroup);
            if (mRecentFileViewGroup != null)
                mMapTypeToView.put(ContentType.FILE, mRecentFileViewGroup);
            if (mClipboardViewGroup != null)
                mMapTypeToView.put(ContentType.CLIPBOARD, mClipboardViewGroup);

            // ViewGroup.onChildVisibilityChanged 在 SDK 36 已移除
            // 改用 OnHierarchyChangeListener 监听子 view 可见性变化来同步 ContentView 自身可见性
            setOnHierarchyChangeListener(new OnHierarchyChangeListener() {
                @Override
                public void onChildViewAdded(View parent, View child) {
                    // NA
                }

                @Override
                public void onChildViewRemoved(View parent, View child) {
                    // NA
                }
            });
        } catch (Throwable t) {
            com.hyper.onestep.lsp.LSPLogger.e("ContentView.onFinishInflate failed", t);
        }
    }

    /**
     * 子 view 显式 setVisibility 时同步 ContentView 自身可见性。
     * 原代码靠 ViewGroup.onChildVisibilityChanged（SDK 36 已移除）。
     * 现在改为由 show()/dismiss() 调用方直接更新 ContentView.setVisibility。
     */
    private void syncSelfVisibilityByChildren() {
        int count = getChildCount();
        for (int i = 0; i < count; ++i) {
            if (getChildAt(i).getVisibility() == View.VISIBLE) {
                setVisibility(View.VISIBLE);
                return;
            }
        }
        setVisibility(View.GONE);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
        case MotionEvent.ACTION_DOWN:
            Utils.resumeSidebar(mContext);
            return true;
        default:
            break;
        }
        return super.onTouchEvent(event);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        switch (event.getKeyCode()) {
        case KeyEvent.KEYCODE_BACK:
            boolean isUp = event.getAction() == KeyEvent.ACTION_UP;
            if (isUp && getCurrentContent() != ContentType.NONE) {
                Utils.resumeSidebar(mContext);
            }
            break;
        default:
            break;
        }
        return super.dispatchKeyEvent(event);
    }
}
