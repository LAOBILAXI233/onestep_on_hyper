package com.hyper.sidebar.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.hyper.sidebar.lsp.DragHelper;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.hyper.sidebar.R;
import com.hyper.sidebar.util.ImageInfo;
import com.hyper.sidebar.util.ImageLoader;
import com.hyper.sidebar.util.Tracker;
import com.hyper.sidebar.util.Utils;

import java.io.File;


public class PhotoLineSubView extends FrameLayout {
    private static final int IMAGE_COLOR = Color.parseColor("#9a404040");

    ImageView photoImageView;
    ImageView mediaTypeBadge;
    TextView loadFailedText;
    RelativeLayout openGallery;
    RelativeLayout showMorePhoto;

    private ImageInfo imageInfo;
    private ImageLoader mImageLoader;
    private ImageLoaderCallBack mCallBack;
    private Handler mHandler;
    private Context mContext;

    public PhotoLineSubView(Context context) {
        this(context, null);
    }

    public PhotoLineSubView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PhotoLineSubView(Context context, AttributeSet attrs,
            int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public PhotoLineSubView(Context context, AttributeSet attrs,
            int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;
        mHandler = new Handler(Looper.getMainLooper());
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        photoImageView = (ImageView) findViewById(R.id.image);
        mediaTypeBadge = (ImageView) findViewById(R.id.media_type_badge);
        loadFailedText = (TextView) findViewById(R.id.load_fail);
        openGallery = (RelativeLayout) findViewById(R.id.open_gallery);
        showMorePhoto = (RelativeLayout) findViewById(R.id.show_more);
        openGallery.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Utils.openGallery(v.getContext());
            }
        });
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        TextView openText = (TextView)findViewById(R.id.open_gallery_text);
        openText.setText(R.string.open_gallery);
        TextView moreText = (TextView)findViewById(R.id.show_more_text);
        moreText.setText(R.string.load_more);
        loadFailedText.setText(R.string.fail_to_load_image);
    }

    public void setImageLoader(ImageLoader imageLoader) {
        mImageLoader = imageLoader;
    }

    public void reset() {
        stopPreviewAnimation();
        if (mCallBack != null) {
            mCallBack.setValid(false);
        }
        photoImageView.setVisibility(View.INVISIBLE);
        mediaTypeBadge.setVisibility(View.INVISIBLE);
        loadFailedText.setVisibility(View.INVISIBLE);
        openGallery.setVisibility(View.INVISIBLE);
        showMorePhoto.setVisibility(View.INVISIBLE);
    }

    public void showPhoto(ImageInfo info) {
        showPhoto(info, true);
    }

    public void showPhoto(ImageInfo info, boolean loadPreview) {
        photoImageView.setVisibility(View.VISIBLE);
        loadFailedText.setVisibility(View.INVISIBLE);
        boolean sameMedia = imageInfo != null && imageInfo.filePath != null
                && imageInfo.filePath.equals(info.filePath);
        imageInfo = info;
        mediaTypeBadge.setVisibility(info.isVideo() ? View.VISIBLE : View.INVISIBLE);
        photoImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Utils.openMediaWithDefaultApp(v.getContext(), imageInfo);
                Tracker.onClick(Tracker.EVENT_OPEN_PIC, "type", "1");
            }
        });

        photoImageView.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                android.net.Uri contentUri = imageInfo.getContentUri(mContext);
                if (contentUri != null) {
                    DragHelper.dragImage(v, mContext, contentUri, imageInfo.mimeType);
                } else {
                    DragHelper.dragImage(v, mContext,
                            new File(imageInfo.filePath), imageInfo.mimeType);
                }
                return true;
            }
        });

        if(mCallBack != null) {
            mCallBack.setValid(false);
        }
        if (sameMedia && photoImageView.getDrawable() != null) {
            if (loadPreview && photoImageView.getDrawable() instanceof Animatable) {
                ((Animatable) photoImageView.getDrawable()).start();
            }
            return;
        }
        photoImageView.setBackgroundColor(IMAGE_COLOR);
        replacePreviewDrawable(null);
        if (loadPreview) {
            loadPreviewIfNeeded();
        }
    }

    public void pausePreviewWork() {
        if (mCallBack != null) {
            mCallBack.setValid(false);
        }
        stopPreviewAnimation();
    }

    public void loadPreviewIfNeeded() {
        if (imageInfo == null || mImageLoader == null
                || photoImageView.getVisibility() != View.VISIBLE) {
            return;
        }
        Drawable current = photoImageView.getDrawable();
        if (current != null) {
            if (current instanceof Animatable) {
                ((Animatable) current).start();
            }
            return;
        }
        loadFailedText.setVisibility(View.INVISIBLE);
        mImageLoader.loadImage(imageInfo.filePath, imageInfo.mimeType,
                mCallBack = new ImageLoaderCallBack());
    }

    public void showMorePhoto(View.OnClickListener listener) {
        reset();
        showMorePhoto.setVisibility(View.VISIBLE);
        showMorePhoto.setOnClickListener(listener);
    }

    public void showOpenGallery() {
        if (openGallery.getVisibility() != View.VISIBLE) {
            openGallery.setVisibility(View.VISIBLE);
        }
    }

    public void updateBitmap(Bitmap bmp) {
        if (photoImageView.getVisibility() != View.VISIBLE) {
            return;
        }
        replacePreviewDrawable(new BitmapDrawable(mContext.getResources(), bmp));
    }

    public void updateDrawable(Drawable drawable) {
        if (photoImageView.getVisibility() != View.VISIBLE) {
            stopDrawable(drawable);
            return;
        }
        replacePreviewDrawable(drawable);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }

    private void replacePreviewDrawable(Drawable drawable) {
        Drawable old = photoImageView.getDrawable();
        if (old == drawable) {
            return;
        }
        stopDrawable(old);
        photoImageView.setImageDrawable(drawable);
    }

    private void stopPreviewAnimation() {
        stopDrawable(photoImageView.getDrawable());
    }

    private static void stopDrawable(Drawable drawable) {
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
    }

    class ImageLoaderCallBack implements ImageLoader.Callback {

        private volatile boolean mValid = true;

        public void setValid(boolean valid) {
            mValid = valid;
        }

        @Override
        public boolean valid() {
            return mValid;
        }

        @Override
        public void onLoadComplete(final String filePath, Bitmap bitmap) {
            if (!mValid || imageInfo.filePath == null || !imageInfo.filePath.equals(filePath)) {
                return ;
            }
            if(bitmap == null) {
                return ;
            }
            mHandler.post(new SetBitmapTask(bitmap, imageInfo.filePath, this));
        }

        @Override
        public void onLoadDrawableComplete(final String filePath, final Drawable drawable) {
            if (!mValid || imageInfo.filePath == null || !imageInfo.filePath.equals(filePath)) {
                stopDrawable(drawable);
                return;
            }
            if (drawable == null) {
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        if (mValid && imageInfo.filePath.equals(filePath)) {
                            photoImageView.setVisibility(View.INVISIBLE);
                            loadFailedText.setVisibility(View.VISIBLE);
                        }
                    }
                });
                return;
            }
            mHandler.post(new Runnable() {
                @Override
                public void run() {
                    if (mValid && imageInfo.filePath.equals(filePath)) {
                        updateDrawable(drawable);
                    } else {
                        stopDrawable(drawable);
                    }
                }
            });
        }
    }

    class SetBitmapTask implements Runnable {
        private Bitmap mBitmap;
        private String mFilePath;
        private ImageLoaderCallBack mOwner;
        public SetBitmapTask(Bitmap newBitmap, String filePath, ImageLoaderCallBack owner) {
            mBitmap = newBitmap;
            mFilePath = filePath;
            mOwner = owner;
        }

        @Override
        public void run() {
            if (mOwner.valid() && imageInfo.filePath != null
                    && imageInfo.filePath.equals(mFilePath)) {
                updateBitmap(mBitmap);
            }
        }
    }
}
