package com.hyper.onestep.ui.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.hyper.onestep.model.LauncherApp;

public final class AppShortcutView extends LinearLayout {
    public enum AppStatus {
        NONE,
        BACKGROUND,
        FOREGROUND
    }

    private static final int BACKGROUND_STATUS_COLOR = 0xff0a84ff;
    private static final int FOREGROUND_STATUS_COLOR = 0xff34c759;

    private final FrameLayout iconFrame;
    private final ImageView icon;
    private View statusIndicator;
    private FrameLayout.LayoutParams statusParams;
    private GradientDrawable statusMarker;
    private TextView pinnedBadge;
    private final TextView label;
    private Drawable boundIcon;
    private String instanceKey = "";
    private String appLabel = "";
    private boolean statusIndicatorEnabled;
    private AppStatus appStatus = AppStatus.NONE;
    private boolean active;
    private boolean pinned;

    public AppShortcutView(Context context, boolean showLabel, int iconSizeDp, float textSizeDp) {
        super(context);
        setOrientation(VERTICAL);
        setGravity(Gravity.CENTER);
        setPadding(dp(2), dp(showLabel ? 3 : 2), dp(2), dp(showLabel ? 3 : 2));
        setBackgroundColor(Color.TRANSPARENT);

        iconFrame = new FrameLayout(context);
        iconFrame.setBackgroundColor(Color.TRANSPARENT);
        int iconFrameSizeDp = iconSizeDp + (showLabel ? 8 : 6);
        addView(iconFrame, new LinearLayout.LayoutParams(
                dp(iconFrameSizeDp), dp(iconFrameSizeDp)));

        icon = new ImageView(context);
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        iconFrame.addView(icon, new FrameLayout.LayoutParams(
                dp(iconSizeDp), dp(iconSizeDp), Gravity.CENTER));

        if (showLabel) {
            label = new TextView(context);
            label.setGravity(Gravity.CENTER);
            label.setSingleLine(true);
            label.setEllipsize(TextUtils.TruncateAt.END);
            label.setTextColor(0xddffffff);
            label.setShadowLayer(dp(1), 0, dp(1), 0x66000000);
            label.setTextSize(TypedValue.COMPLEX_UNIT_DIP, textSizeDp);
            LinearLayout.LayoutParams labelParams = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            labelParams.topMargin = dp(5);
            addView(label, labelParams);
        } else {
            label = null;
        }
    }

    public void bind(LauncherApp app) {
        instanceKey = app.instanceKey();
        appLabel = app.label;
        bindIconDrawable(app.icon);
        if (label != null && !TextUtils.equals(label.getText(), appLabel)) {
            label.setText(appLabel);
        }
        updateContentDescription();
    }

    public void bindIcon(Drawable drawable, String description) {
        instanceKey = "";
        appLabel = description == null ? "" : description;
        bindIconDrawable(drawable);
        if (label != null && !TextUtils.equals(label.getText(), appLabel)) {
            label.setText(appLabel);
        }
        updateContentDescription();
    }

    private void bindIconDrawable(Drawable drawable) {
        if (boundIcon == drawable) {
            return;
        }
        boundIcon = drawable;
        Drawable.ConstantState state = drawable == null ? null : drawable.getConstantState();
        icon.setImageDrawable(state == null ? drawable
                : state.newDrawable(getResources()).mutate());
    }

    public String getInstanceKeyValue() {
        return instanceKey;
    }

    public void setActive(boolean active) {
        if (this.active == active) {
            return;
        }
        this.active = active;
        if (label != null) {
            label.setTextColor(active ? 0xffffffff : 0xddffffff);
        }
    }

    public void setStatusIndicatorEnabled(boolean enabled) {
        if (statusIndicatorEnabled == enabled) {
            return;
        }
        statusIndicatorEnabled = enabled;
        updateStatusIndicator();
        updateContentDescription();
    }

    public void setAppStatus(AppStatus status) {
        AppStatus nextStatus = status == null ? AppStatus.NONE : status;
        if (appStatus == nextStatus) {
            return;
        }
        appStatus = nextStatus;
        updateStatusIndicator();
        updateContentDescription();
    }

    public void setPinned(boolean value) {
        if (pinned == value) {
            return;
        }
        pinned = value;
        if (value && pinnedBadge == null) {
            pinnedBadge = new TextView(getContext());
            pinnedBadge.setText("📌");
            pinnedBadge.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 10);
            pinnedBadge.setElevation(dp(3));
            FrameLayout.LayoutParams pinParams = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.WRAP_CONTENT,
                    FrameLayout.LayoutParams.WRAP_CONTENT,
                    Gravity.TOP | Gravity.END);
            pinParams.setMarginEnd(dp(1));
            iconFrame.addView(pinnedBadge, pinParams);
        }
        if (pinnedBadge != null) {
            pinnedBadge.setVisibility(value ? VISIBLE : GONE);
        }
        updateStatusIndicator();
        updateContentDescription();
    }

    private void updateStatusIndicator() {
        if (!statusIndicatorEnabled || appStatus == AppStatus.NONE) {
            if (statusIndicator != null) {
                statusIndicator.setVisibility(GONE);
            }
            return;
        }
        if (statusIndicator == null) {
            statusIndicator = new View(getContext());
            statusIndicator.setElevation(dp(2));
            int statusSize = dp(10);
            statusParams = new FrameLayout.LayoutParams(
                    statusSize, statusSize, Gravity.TOP | Gravity.END);
            statusParams.setMarginEnd(dp(1));
            statusMarker = new GradientDrawable();
            statusMarker.setShape(GradientDrawable.OVAL);
            statusMarker.setStroke(dp(1), 0xe6ffffff);
            statusIndicator.setBackground(statusMarker);
            iconFrame.addView(statusIndicator, statusParams);
        }
        int topMargin = pinned ? 0 : dp(1);
        int bottomMargin = pinned ? dp(1) : 0;
        int gravity = (pinned ? Gravity.BOTTOM : Gravity.TOP) | Gravity.END;
        if (statusParams.topMargin != topMargin || statusParams.bottomMargin != bottomMargin
                || statusParams.gravity != gravity) {
            statusParams.topMargin = topMargin;
            statusParams.bottomMargin = bottomMargin;
            statusParams.gravity = gravity;
            statusIndicator.setLayoutParams(statusParams);
        }
        statusMarker.setColor(appStatus == AppStatus.FOREGROUND
                ? FOREGROUND_STATUS_COLOR : BACKGROUND_STATUS_COLOR);
        statusIndicator.setVisibility(VISIBLE);
    }

    private void updateContentDescription() {
        String suffix = "";
        if (pinned) {
            suffix = "，已置顶";
        } else if (statusIndicatorEnabled && appStatus != AppStatus.NONE) {
            suffix = appStatus == AppStatus.FOREGROUND
                    ? "，已在窗口中打开" : "，正在后台运行";
        }
        String description = appLabel + suffix;
        if (!TextUtils.equals(getContentDescription(), description)) {
            setContentDescription(description);
        }
    }

    private int dp(float value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
