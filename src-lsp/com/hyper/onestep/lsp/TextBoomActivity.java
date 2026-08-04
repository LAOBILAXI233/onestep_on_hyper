package com.hyper.onestep.lsp;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.ImageDecoder;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.HapticFeedbackConstants;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.hyper.onestep.R;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/** Modern local TextBoom surface for extracted text and images. */
public final class TextBoomActivity extends Activity implements TextBoomChipLayout.Listener {
    private static final int MAX_INPUT_CHARS = 40_000;
    private final ExecutorService mImageExecutor = Executors.newSingleThreadExecutor();
    private View mRoot;
    private View mCard;
    private ScrollView mScrollView;
    private TextBoomChipLayout mChipLayout;
    private ImageView mImageView;
    private ImageButton mCopyButton;
    private ImageButton mShareButton;
    private TextView mSelectionStatus;
    private String mSourceText = "";
    private String mSelectedText = "";
    private Uri mImageUri;
    private String mImageMimeType;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // BigBang 维护中：直接打开也不允许，提示后关闭
        Toast.makeText(this, R.string.bigbang_maintenance_toast, Toast.LENGTH_SHORT).show();
        finish();
        return;
    }
    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        readInput(intent);
    }
    private void bindViews() {
        mRoot = findViewById(R.id.text_boom_root);
        mCard = findViewById(R.id.text_boom_card);
        mRoot.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
        mScrollView = findViewById(R.id.text_boom_scroll);
        mChipLayout = findViewById(R.id.text_boom_chips);
        mImageView = findViewById(R.id.text_boom_image);
        mCopyButton = findViewById(R.id.text_boom_copy);
        mShareButton = findViewById(R.id.text_boom_share);
        mSelectionStatus = findViewById(R.id.text_boom_selection_status);
        mChipLayout.setListener(this);
        mChipLayout.setScrollHost(mScrollView);
    }
    private void applySystemBarInsets() {
        final int peek = getResources().getDimensionPixelSize(R.dimen.text_boom_top_peek);
        mCard.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
            @Override
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                Insets bars = windowInsets.getInsets(WindowInsets.Type.systemBars());
                ViewGroup.MarginLayoutParams params =
                        (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                params.topMargin = bars.top + peek;
                view.setLayoutParams(params);
                view.setPadding(bars.left, 0, bars.right, bars.bottom);
                return windowInsets;
            }
        });
        mCard.requestApplyInsets();
    }
    private void bindActions() {
        ImageButton close = findViewById(R.id.text_boom_close);
        close.setTooltipText(getString(R.string.text_boom_close));
        close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
        mCopyButton.setTooltipText(getString(R.string.text_boom_copy));
        mCopyButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                copySelection();
            }
        });
        mShareButton.setTooltipText(getString(R.string.text_boom_share));
        mShareButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                shareSelection();
            }
        });
        mImageView.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View view) {
                if (mImageUri == null) return false;
                view.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
                return DragHelper.dragImageFromModuleProcess(
                        view, TextBoomActivity.this, mImageUri, mImageMimeType);
            }
        });
    }
    private void readInput(Intent intent) {
        CharSequence input = intent == null ? null : intent.getCharSequenceExtra(Intent.EXTRA_TEXT);
        mSourceText = sanitizeText(input);
        mSelectedText = "";
        mImageUri = readContentImageUri(intent);
        mImageMimeType = resolveImageMimeType(mImageUri);
        boolean hasText = !TextUtils.isEmpty(mSourceText.trim());
        boolean hasImage = mImageUri != null;
        if (!hasText && !hasImage) {
            Toast.makeText(this, R.string.text_boom_empty_input, Toast.LENGTH_SHORT).show();
            finish();
            return;
        }
        if (hasText) {
            List<TextBoomTokenizer.Token> tokens = TextBoomTokenizer.tokenize(mSourceText);
            mChipLayout.setVisibility(tokens.isEmpty() ? View.GONE : View.VISIBLE);
            mChipLayout.setBoomOrigin(intent.getIntExtra(TextBoomContract.EXTRA_TOUCH_X, -1),
                    intent.getIntExtra(TextBoomContract.EXTRA_TOUCH_Y, -1));
            mChipLayout.setText(mSourceText, tokens);
            int touchIndex = intent.getIntExtra(TextBoomContract.EXTRA_TOUCH_INDEX, -1);
            mChipLayout.selectTokenContaining(touchIndex);
        } else {
            mChipLayout.setVisibility(View.GONE);
            mChipLayout.setText("", null);
        }
        if (hasImage) {
            mImageView.setVisibility(View.VISIBLE);
            mImageView.setImageDrawable(null);
            loadImagePreview(mImageUri);
        } else {
            mImageView.setVisibility(View.GONE);
            mImageView.setImageDrawable(null);
        }
        updateActions(mChipLayout.getSelectedCount());
    }
    private String sanitizeText(CharSequence input) {
        if (input == null) return "";
        String text = input.toString();
        if (text.length() <= MAX_INPUT_CHARS) return text;
        int end = MAX_INPUT_CHARS;
        if (Character.isHighSurrogate(text.charAt(end - 1))) end--;
        return text.substring(0, end);
    }
    private Uri readContentImageUri(Intent intent) {
        if (intent == null) return null;
        Uri uri = intent.getParcelableExtra(Intent.EXTRA_STREAM, Uri.class);
        if (uri == null && intent.getClipData() != null && intent.getClipData().getItemCount() > 0) {
            uri = intent.getClipData().getItemAt(0).getUri();
        }
        return uri != null && "content".equals(uri.getScheme()) ? uri : null;
    }
    private String resolveImageMimeType(Uri uri) {
        if (uri == null) return null;
        try {
            String type = getContentResolver().getType(uri);
            if (!TextUtils.isEmpty(type) && type.startsWith("image/")) return type;
        } catch (Throwable t) {
            LSPLogger.w("TextBoomActivity: image MIME lookup failed", t);
        }
        return "image/*";
    }
    private void loadImagePreview(final Uri uri) {
        final int targetWidth = getResources().getDisplayMetrics().widthPixels;
        final int targetHeight = getResources().getDimensionPixelSize(R.dimen.text_boom_image_height);
        mImageExecutor.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    ImageDecoder.Source source = ImageDecoder.createSource(getContentResolver(), uri);
                    final Drawable drawable = ImageDecoder.decodeDrawable(source,
                            new ImageDecoder.OnHeaderDecodedListener() {
                        @Override
                        public void onHeaderDecoded(ImageDecoder decoder, ImageDecoder.ImageInfo info,
                                ImageDecoder.Source source) {
                            int width = info.getSize().getWidth();
                            int height = info.getSize().getHeight();
                            float scale = Math.min(1f, Math.min(
                                    (float) targetWidth / Math.max(1, width),
                                    (float) targetHeight / Math.max(1, height)));
                            decoder.setTargetSize(Math.max(1, Math.round(width * scale)),
                                    Math.max(1, Math.round(height * scale)));
                        }
                    });
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if (!isFinishing() && uri.equals(mImageUri)) {
                                mImageView.setImageDrawable(drawable);
                            }
                        }
                    });
                } catch (IOException | RuntimeException error) {
                    LSPLogger.w("TextBoomActivity: image preview failed for " + uri, error);
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if (!isFinishing() && uri.equals(mImageUri)) {
                                Toast.makeText(TextBoomActivity.this,
                                        R.string.text_boom_image_load_failed,
                                        Toast.LENGTH_SHORT).show();
                            }
                        }
                    });
                }
            }
        });
    }
    @Override
    public void onSelectionChanged(int selectedCount, String selectedText) {
        mSelectedText = selectedText == null ? "" : selectedText;
        if (mCopyButton != null) updateActions(selectedCount);
    }
    @Override
    public boolean onTextDragRequested(View anchor, String selectedText) {
        return DragHelper.dragTextFromModuleProcess(anchor, this, selectedText);
    }
    private void updateActions(int selectedCount) {
        boolean hasSelection = !TextUtils.isEmpty(mSelectedText);
        mCopyButton.setVisibility(TextUtils.isEmpty(mSourceText) ? View.GONE : View.VISIBLE);
        setButtonEnabled(mCopyButton, hasSelection);
        setButtonEnabled(mShareButton, hasSelection || mImageUri != null);
        if (selectedCount > 0) {
            mSelectionStatus.setText(getResources().getQuantityString(
                    R.plurals.text_boom_selection_count, selectedCount, selectedCount));
        } else if (mImageUri != null) {
            mSelectionStatus.setText(R.string.text_boom_image_label);
        } else {
            mSelectionStatus.setText(R.string.text_boom_no_selection);
        }
    }
    private void setButtonEnabled(View button, boolean enabled) {
        button.setEnabled(enabled);
        button.setAlpha(enabled ? 1f : 0.35f);
    }
    private void copySelection() {
        if (TextUtils.isEmpty(mSelectedText)) return;
        ClipboardManager clipboard = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
        clipboard.setPrimaryClip(ClipData.newPlainText("TextBoom", mSelectedText));
        Toast.makeText(this, R.string.text_boom_copied, Toast.LENGTH_SHORT).show();
    }
    private void shareSelection() {
        boolean hasText = !TextUtils.isEmpty(mSelectedText);
        if (!hasText && mImageUri == null) return;
        Intent send = new Intent(Intent.ACTION_SEND);
        if (mImageUri != null) {
            send.setType(TextUtils.isEmpty(mImageMimeType) ? "image/*" : mImageMimeType);
            send.putExtra(Intent.EXTRA_STREAM, mImageUri);
            if (hasText) send.putExtra(Intent.EXTRA_TEXT, mSelectedText);
            send.setClipData(ClipData.newUri(getContentResolver(),
                    "TextBoom image", mImageUri));
            send.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        } else {
            send.setType("text/plain");
            send.putExtra(Intent.EXTRA_TEXT, mSelectedText);
        }
        startActivity(Intent.createChooser(send, getString(R.string.text_boom_share)));
    }
    @Override
    protected void onDestroy() {
        mImageExecutor.shutdownNow();
        super.onDestroy();
    }
}
