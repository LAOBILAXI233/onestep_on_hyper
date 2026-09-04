package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;

import com.hyper.onestep.feature.drag.ImageDragFeatureGate;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class DragShareSettings {
    public static final int COLOR_LIGHT = 0;
    public static final int COLOR_DARK = 1;

    public static final int CONTENT_CAPTURE_PORTAL = 0;
    public static final int CONTENT_CAPTURE_ACCESSIBILITY = 1;
    public static final int DEFAULT_CONTENT_CAPTURE_MODE = CONTENT_CAPTURE_PORTAL;

    public static final int LOG_LEVEL_DISABLED = 0;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_DEBUG = 2;
    public static final int DEFAULT_LOG_LEVEL = LOG_LEVEL_INFO;

    public static final int LOG_DESTINATION_SYSTEM = 0;
    public static final int LOG_DESTINATION_FILE = 1;
    public static final int DEFAULT_LOG_DESTINATION = LOG_DESTINATION_SYSTEM;

    private static final String SETTINGS_URI_VALUE = "content://com.hyper.onestep.dragshare/settings";

    public static final int STYLE_SIMPLE = 0;

    public static final int STYLE_PORTAL = 1;

    public static final int STYLE_CIRCLE = 2;

    public static final int STYLE_MODERN = 3;
    public static final int DEFAULT_UI_STYLE = STYLE_MODERN;

    @Deprecated
    public static final int STYLE_CARD = STYLE_PORTAL;

    public static final int MIN_EDGE_TRIGGER_DP = 24;
    public static final int DEFAULT_EDGE_TRIGGER_DP = 56;
    public static final int MAX_EDGE_TRIGGER_DP = 200;

    public static final int MIN_SCROLL_SPEED_DP_PER_SECOND = 120;
    public static final int DEFAULT_SCROLL_SPEED_DP_PER_SECOND = 560;
    public static final int MAX_SCROLL_SPEED_DP_PER_SECOND = 1200;

    public static final int SIMPLE_MENU_POSITION_TOP = 0;
    public static final int SIMPLE_MENU_POSITION_BOTTOM = 1;
    public static final int SIMPLE_MENU_POSITION_LEFT = 2;
    public static final int SIMPLE_MENU_POSITION_RIGHT = 3;
    public static final int SIMPLE_MENU_POSITION_NEAR_HAND = 4;
    public static final int DEFAULT_SIMPLE_MENU_POSITION = SIMPLE_MENU_POSITION_BOTTOM;

    public static final int MIN_SIMPLE_MENU_OPACITY_PERCENT = 20;
    public static final int DEFAULT_SIMPLE_MENU_OPACITY_PERCENT = 100;
    public static final int MAX_SIMPLE_MENU_OPACITY_PERCENT = 100;

    public static final int MIN_SIMPLE_MENU_CORNER_RADIUS_DP = 0;
    public static final int DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP = 8;
    public static final int MAX_SIMPLE_MENU_CORNER_RADIUS_DP = 32;

    public static final int MIN_SIMPLE_MENU_EDGE_DISTANCE_DP = 0;
    public static final int DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP = 8;
    public static final int MAX_SIMPLE_MENU_EDGE_DISTANCE_DP = 64;

    public static final int MIN_ICON_OPACITY_PERCENT = 0;
    public static final int DEFAULT_ICON_OPACITY_PERCENT = 100;
    public static final int MAX_ICON_OPACITY_PERCENT = 100;

    public static final int MIN_MODERN_BLUR_RADIUS_DP = 0;
    public static final int DEFAULT_MODERN_BLUR_RADIUS_DP = 60;
    public static final int MAX_MODERN_BLUR_RADIUS_DP = 150;

    public static final int MIN_MODERN_GLASS_OPACITY_PERCENT = 0;
    public static final int DEFAULT_MODERN_GLASS_OPACITY_PERCENT = 36;
    public static final int MAX_MODERN_GLASS_OPACITY_PERCENT = 90;

    public static final boolean DEFAULT_MASTER_ENABLED = true;
    public static final boolean DEFAULT_BLOCK_BACKGROUND_SCROLL = false;
    public static final boolean DEFAULT_TEXT_SHARING_ENABLED = true;
    public static final boolean DEFAULT_IMAGE_SHARING_ENABLED = true;
    public static final boolean DEFAULT_PRELOAD_TEXT_SEGMENTER = true;
    public static final boolean DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES = true;
    public static final boolean DEFAULT_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED = false;
    public static final int MIN_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS = 250;

    public static final int DEFAULT_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS = 0;
    public static final int MAX_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS = 1200;
    public static final int MIN_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT = 50;
    public static final int DEFAULT_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT = 100;
    public static final int MAX_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT = 200;

    public static final String TARGET_COPY_TEXT = "builtin:copy_text";

    public static final String TARGET_COPY_IMAGE = "builtin:copy_image";

    static final String TARGET_COPY = "builtin:copy";

    public static final String TARGET_SAVE_LOCAL = "builtin:save_local";

    public static final String TARGET_TEXT_SEGMENTATION = "builtin:text_segmentation";

    public static final String TARGET_ONESTEP = "builtin:onestep";

    static final String METHOD_GET_SETTINGS = "get_settings";

    private static final String PREFS_NAME = "drag_share_settings";
    private static final String KEY_MASTER_ENABLED = "master_enabled";
    private static final String KEY_COLOR_MODE = "color_mode";
    private static final String KEY_CONTENT_CAPTURE_MODE = "content_capture_mode";
    private static final String KEY_UI_STYLE = "ui_style";
    private static final String KEY_EDGE_TRIGGER_DP = "edge_trigger_dp";
    private static final String KEY_SCROLL_SPEED = "scroll_speed_dp_per_second";
    private static final String KEY_BLOCK_BACKGROUND_SCROLL = "block_background_scroll";
    private static final String KEY_TEXT_SHARING_ENABLED = "text_sharing_enabled";
    private static final String KEY_IMAGE_SHARING_ENABLED = "image_sharing_enabled";
    private static final String KEY_TEXT_COPY_ENABLED = "text_copy_enabled";
    private static final String KEY_IMAGE_COPY_ENABLED = "image_copy_enabled";
    private static final String KEY_PRELOAD_TEXT_SEGMENTER = "preload_text_segmenter";
    private static final String KEY_SIMPLE_MENU_POSITION = "simple_menu_position";
    private static final String KEY_SIMPLE_MENU_OPACITY = "simple_menu_opacity_percent";
    private static final String KEY_SIMPLE_MENU_CORNER_RADIUS = "simple_menu_corner_radius_dp";
    private static final String KEY_SIMPLE_MENU_EDGE_DISTANCE = "simple_menu_edge_distance_dp";
    private static final String KEY_ICON_OPACITY = "icon_opacity_percent";
    private static final String KEY_MODERN_BLUR_RADIUS = "modern_blur_radius_dp";
    private static final String KEY_MODERN_GLASS_OPACITY = "modern_glass_opacity_percent";
    private static final String KEY_CLOSE_MENU_WHEN_POINTER_LEAVES = "close_menu_when_pointer_leaves";
    private static final String KEY_HIDDEN_TARGETS = "hidden_targets";
    private static final String KEY_TARGET_ORDER = "target_order";
    private static final String KEY_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED =
            "accessibility_landscape_recognition_enabled";
    private static final String KEY_ACCESSIBILITY_BLACKLISTED_PACKAGES =
            "accessibility_blacklisted_packages";
    private static final String KEY_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS =
            "accessibility_long_press_timeout_millis";
    private static final String KEY_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT =
            "accessibility_recognition_sensitivity_percent";
    private static final String KEY_LOG_LEVEL = "log_level";
    private static final String KEY_LOG_DESTINATION = "log_destination";

    public final int colorMode;
    public final boolean masterEnabled;
    public final int contentCaptureMode;
    public final int uiStyle;
    public final int edgeTriggerDp;
    public final int scrollSpeedDpPerSecond;
    public final boolean blockBackgroundScroll;
    public final boolean textSharingEnabled;
    public final boolean imageSharingEnabled;
    public final boolean preloadTextSegmenter;
    public final int simpleMenuPosition;
    public final int simpleMenuOpacityPercent;
    public final int simpleMenuCornerRadiusDp;
    public final int simpleMenuEdgeDistanceDp;
    public final int iconOpacityPercent;
    public final int modernBlurRadiusDp;
    public final int modernGlassOpacityPercent;
    public final boolean closeMenuWhenPointerLeaves;
    public final Set<String> hiddenTargetKeys;
    public final List<String> targetOrder;
    public final boolean accessibilityLandscapeRecognitionEnabled;
    public final Set<String> accessibilityBlacklistedPackages;
    public final int accessibilityLongPressTimeoutMillis;
    public final int accessibilityRecognitionSensitivityPercent;
    public final int logLevel;
    public final int logDestination;

    public DragShareSettings(int colorMode, int edgeTriggerDp, int scrollSpeedDpPerSecond) {
        this(
                colorMode,
                DEFAULT_UI_STYLE,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                DEFAULT_BLOCK_BACKGROUND_SCROLL,
                DEFAULT_TEXT_SHARING_ENABLED,
                DEFAULT_IMAGE_SHARING_ENABLED,
                DEFAULT_SIMPLE_MENU_POSITION,
                DEFAULT_SIMPLE_MENU_OPACITY_PERCENT,
                DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP,
                DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP,
                DEFAULT_ICON_OPACITY_PERCENT,
                DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES,
                Collections.emptySet(),
                Collections.emptyList());
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                DEFAULT_TEXT_SHARING_ENABLED,
                DEFAULT_IMAGE_SHARING_ENABLED,
                DEFAULT_SIMPLE_MENU_POSITION,
                DEFAULT_SIMPLE_MENU_OPACITY_PERCENT,
                DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP,
                DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP,
                DEFAULT_ICON_OPACITY_PERCENT,
                DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES,
                Collections.emptySet(),
                Collections.emptyList());
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                DEFAULT_SIMPLE_MENU_POSITION,
                DEFAULT_SIMPLE_MENU_OPACITY_PERCENT,
                DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP,
                DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP,
                DEFAULT_ICON_OPACITY_PERCENT,
                DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES,
                hiddenTargetKeys,
                targetOrder);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP,
                DEFAULT_ICON_OPACITY_PERCENT,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                DEFAULT_CONTENT_CAPTURE_MODE);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                DEFAULT_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED,
                Collections.emptySet());
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                DEFAULT_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                DEFAULT_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages,
            int accessibilityLongPressTimeoutMillis,
            int accessibilityRecognitionSensitivityPercent) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                accessibilityLongPressTimeoutMillis,
                accessibilityRecognitionSensitivityPercent,
                DEFAULT_PRELOAD_TEXT_SEGMENTER);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages,
            int accessibilityLongPressTimeoutMillis,
            int accessibilityRecognitionSensitivityPercent,
            boolean preloadTextSegmenter) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                accessibilityLongPressTimeoutMillis,
                accessibilityRecognitionSensitivityPercent,
                preloadTextSegmenter,
                DEFAULT_MODERN_BLUR_RADIUS_DP,
                DEFAULT_MODERN_GLASS_OPACITY_PERCENT);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages,
            int accessibilityLongPressTimeoutMillis,
            int accessibilityRecognitionSensitivityPercent,
            boolean preloadTextSegmenter,
            boolean textCopyEnabled,
            boolean imageCopyEnabled) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                migrateLegacyCopyTargetVisibility(
                        hiddenTargetKeys,
                        textCopyEnabled,
                        imageCopyEnabled),
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                accessibilityLongPressTimeoutMillis,
                accessibilityRecognitionSensitivityPercent,
                preloadTextSegmenter,
                DEFAULT_MODERN_BLUR_RADIUS_DP,
                DEFAULT_MODERN_GLASS_OPACITY_PERCENT);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages,
            int accessibilityLongPressTimeoutMillis,
            int accessibilityRecognitionSensitivityPercent,
            boolean preloadTextSegmenter,
            int modernBlurRadiusDp,
            int modernGlassOpacityPercent) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                accessibilityLongPressTimeoutMillis,
                accessibilityRecognitionSensitivityPercent,
                preloadTextSegmenter,
                modernBlurRadiusDp,
                modernGlassOpacityPercent,
                DEFAULT_LOG_LEVEL,
                DEFAULT_LOG_DESTINATION);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages,
            int accessibilityLongPressTimeoutMillis,
            int accessibilityRecognitionSensitivityPercent,
            boolean preloadTextSegmenter,
            int modernBlurRadiusDp,
            int modernGlassOpacityPercent,
            int logLevel,
            int logDestination) {
        this(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                accessibilityLongPressTimeoutMillis,
                accessibilityRecognitionSensitivityPercent,
                preloadTextSegmenter,
                modernBlurRadiusDp,
                modernGlassOpacityPercent,
                logLevel,
                logDestination,
                DEFAULT_MASTER_ENABLED);
    }

    public DragShareSettings(
            int colorMode,
            int uiStyle,
            int edgeTriggerDp,
            int scrollSpeedDpPerSecond,
            boolean blockBackgroundScroll,
            boolean textSharingEnabled,
            boolean imageSharingEnabled,
            int simpleMenuPosition,
            int simpleMenuOpacityPercent,
            int simpleMenuCornerRadiusDp,
            int simpleMenuEdgeDistanceDp,
            int iconOpacityPercent,
            boolean closeMenuWhenPointerLeaves,
            Set<String> hiddenTargetKeys,
            List<String> targetOrder,
            int contentCaptureMode,
            boolean accessibilityLandscapeRecognitionEnabled,
            Set<String> accessibilityBlacklistedPackages,
            int accessibilityLongPressTimeoutMillis,
            int accessibilityRecognitionSensitivityPercent,
            boolean preloadTextSegmenter,
            int modernBlurRadiusDp,
            int modernGlassOpacityPercent,
            int logLevel,
            int logDestination,
            boolean masterEnabled) {
        this.masterEnabled = masterEnabled;
        this.colorMode = colorMode == COLOR_DARK ? COLOR_DARK : COLOR_LIGHT;
        this.contentCaptureMode = normalizeContentCaptureMode(contentCaptureMode);
        this.uiStyle = uiStyle == STYLE_SIMPLE
                || uiStyle == STYLE_PORTAL
                || uiStyle == STYLE_CIRCLE
                || uiStyle == STYLE_MODERN
                ? uiStyle
                : DEFAULT_UI_STYLE;
        this.edgeTriggerDp = clamp(
                edgeTriggerDp,
                MIN_EDGE_TRIGGER_DP,
                MAX_EDGE_TRIGGER_DP);
        this.scrollSpeedDpPerSecond = clamp(
                scrollSpeedDpPerSecond,
                MIN_SCROLL_SPEED_DP_PER_SECOND,
                MAX_SCROLL_SPEED_DP_PER_SECOND);
        this.blockBackgroundScroll = blockBackgroundScroll;
        this.textSharingEnabled = textSharingEnabled;
        this.imageSharingEnabled = imageSharingEnabled;
        this.preloadTextSegmenter = preloadTextSegmenter;
        this.simpleMenuPosition = normalizeSimpleMenuPosition(simpleMenuPosition);
        this.simpleMenuOpacityPercent = clamp(
                simpleMenuOpacityPercent,
                MIN_SIMPLE_MENU_OPACITY_PERCENT,
                MAX_SIMPLE_MENU_OPACITY_PERCENT);
        this.simpleMenuCornerRadiusDp = clamp(
                simpleMenuCornerRadiusDp,
                MIN_SIMPLE_MENU_CORNER_RADIUS_DP,
                MAX_SIMPLE_MENU_CORNER_RADIUS_DP);
        this.simpleMenuEdgeDistanceDp = clamp(
                simpleMenuEdgeDistanceDp,
                MIN_SIMPLE_MENU_EDGE_DISTANCE_DP,
                MAX_SIMPLE_MENU_EDGE_DISTANCE_DP);
        this.iconOpacityPercent = clamp(
                iconOpacityPercent,
                MIN_ICON_OPACITY_PERCENT,
                MAX_ICON_OPACITY_PERCENT);
        this.modernBlurRadiusDp = clamp(
                modernBlurRadiusDp,
                MIN_MODERN_BLUR_RADIUS_DP,
                MAX_MODERN_BLUR_RADIUS_DP);
        this.modernGlassOpacityPercent = clamp(
                modernGlassOpacityPercent,
                MIN_MODERN_GLASS_OPACITY_PERCENT,
                MAX_MODERN_GLASS_OPACITY_PERCENT);
        this.closeMenuWhenPointerLeaves = closeMenuWhenPointerLeaves;
        this.hiddenTargetKeys = immutableKeys(normalizeHiddenTargetKeys(hiddenTargetKeys));
        this.targetOrder = immutableKeysAsList(targetOrder);
        this.accessibilityLandscapeRecognitionEnabled =
                accessibilityLandscapeRecognitionEnabled;
        this.accessibilityBlacklistedPackages = immutableKeys(accessibilityBlacklistedPackages);
        this.accessibilityLongPressTimeoutMillis = normalizeAccessibilityLongPressTimeout(
                accessibilityLongPressTimeoutMillis);
        this.accessibilityRecognitionSensitivityPercent = clamp(
                accessibilityRecognitionSensitivityPercent,
                MIN_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT,
                MAX_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT);
        this.logLevel = normalizeLogLevel(logLevel);
        this.logDestination = normalizeLogDestination(logDestination);
    }

    public static DragShareSettings defaults() {
        return new DragShareSettings(
                COLOR_LIGHT,
                DEFAULT_UI_STYLE,
                DEFAULT_EDGE_TRIGGER_DP,
                DEFAULT_SCROLL_SPEED_DP_PER_SECOND,
                DEFAULT_BLOCK_BACKGROUND_SCROLL,
                DEFAULT_TEXT_SHARING_ENABLED,
                DEFAULT_IMAGE_SHARING_ENABLED,
                DEFAULT_SIMPLE_MENU_POSITION,
                DEFAULT_SIMPLE_MENU_OPACITY_PERCENT,
                DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP,
                DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP,
                DEFAULT_ICON_OPACITY_PERCENT,
                DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES,
                Collections.emptySet(),
                Collections.emptyList(),
                DEFAULT_CONTENT_CAPTURE_MODE);
    }

    public static DragShareSettings readLocal(Context context) {
        if (context == null) {
            return defaults();
        }
        SharedPreferences preferences = context.getSharedPreferences(
                PREFS_NAME,
                Context.MODE_PRIVATE);
        Set<String> hiddenTargetKeys = migrateLegacyCopyTargetVisibility(
                preferences.getStringSet(KEY_HIDDEN_TARGETS, Collections.emptySet()),
                preferences.getBoolean(KEY_TEXT_COPY_ENABLED, true),
                preferences.getBoolean(KEY_IMAGE_COPY_ENABLED, true));        return new DragShareSettings(
                preferences.getInt(KEY_COLOR_MODE, COLOR_LIGHT),
                preferences.getInt(KEY_UI_STYLE, DEFAULT_UI_STYLE),
                preferences.getInt(KEY_EDGE_TRIGGER_DP, DEFAULT_EDGE_TRIGGER_DP),
                preferences.getInt(
                        KEY_SCROLL_SPEED,
                        DEFAULT_SCROLL_SPEED_DP_PER_SECOND),
                preferences.getBoolean(
                        KEY_BLOCK_BACKGROUND_SCROLL,
                        DEFAULT_BLOCK_BACKGROUND_SCROLL),
                preferences.getBoolean(
                        KEY_TEXT_SHARING_ENABLED,
                        DEFAULT_TEXT_SHARING_ENABLED),
                preferences.getBoolean(
                        KEY_IMAGE_SHARING_ENABLED,
                        DEFAULT_IMAGE_SHARING_ENABLED),
                preferences.getInt(
                        KEY_SIMPLE_MENU_POSITION,
                        DEFAULT_SIMPLE_MENU_POSITION),
                preferences.getInt(
                        KEY_SIMPLE_MENU_OPACITY,
                        DEFAULT_SIMPLE_MENU_OPACITY_PERCENT),
                preferences.getInt(
                        KEY_SIMPLE_MENU_CORNER_RADIUS,
                        DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP),
                preferences.getInt(
                        KEY_SIMPLE_MENU_EDGE_DISTANCE,
                        DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP),
                preferences.getInt(
                        KEY_ICON_OPACITY,
                        DEFAULT_ICON_OPACITY_PERCENT),
                preferences.getBoolean(
                        KEY_CLOSE_MENU_WHEN_POINTER_LEAVES,
                        DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES),
                hiddenTargetKeys,
                parseKeys(preferences.getString(KEY_TARGET_ORDER, "")),
                preferences.getInt(
                        KEY_CONTENT_CAPTURE_MODE,
                        DEFAULT_CONTENT_CAPTURE_MODE),
                preferences.getBoolean(
                        KEY_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED,
                        DEFAULT_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED),
                preferences.getStringSet(
                        KEY_ACCESSIBILITY_BLACKLISTED_PACKAGES,
                        Collections.emptySet()),
                preferences.getInt(
                        KEY_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                        DEFAULT_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS),
                preferences.getInt(
                        KEY_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT,
                        DEFAULT_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT),
                preferences.getBoolean(
                        KEY_PRELOAD_TEXT_SEGMENTER,
                        DEFAULT_PRELOAD_TEXT_SEGMENTER),
                preferences.getInt(
                        KEY_MODERN_BLUR_RADIUS,
                        DEFAULT_MODERN_BLUR_RADIUS_DP),
                preferences.getInt(
                        KEY_MODERN_GLASS_OPACITY,
                        DEFAULT_MODERN_GLASS_OPACITY_PERCENT),
                preferences.getInt(KEY_LOG_LEVEL, DEFAULT_LOG_LEVEL),
                preferences.getInt(KEY_LOG_DESTINATION, DEFAULT_LOG_DESTINATION),
                readMasterEnabled(preferences));
    }

    
    
    
    private static boolean readMasterEnabled(SharedPreferences preferences) {
        if (preferences.contains(KEY_MASTER_ENABLED)) {
            return preferences.getBoolean(KEY_MASTER_ENABLED, DEFAULT_MASTER_ENABLED);
        }
        Boolean hookEnabled = ImageDragFeatureGate.readEnabledOrNull();
        return hookEnabled == null ? DEFAULT_MASTER_ENABLED : hookEnabled;
    }

    
    public static void setMasterEnabled(Context context, boolean enabled) {
        if (context == null) {
            return;
        }
        DragShareSettings current = readLocal(context);
        if (current.masterEnabled == enabled) {
            return;
        }
        current.withMasterEnabled(enabled).saveLocal(context);
    }

    public DragShareSettings withMasterEnabled(boolean enabled) {
        if (masterEnabled == enabled) {
            return this;
        }
        return new DragShareSettings(
                colorMode,
                uiStyle,
                edgeTriggerDp,
                scrollSpeedDpPerSecond,
                blockBackgroundScroll,
                textSharingEnabled,
                imageSharingEnabled,
                simpleMenuPosition,
                simpleMenuOpacityPercent,
                simpleMenuCornerRadiusDp,
                simpleMenuEdgeDistanceDp,
                iconOpacityPercent,
                closeMenuWhenPointerLeaves,
                hiddenTargetKeys,
                targetOrder,
                contentCaptureMode,
                accessibilityLandscapeRecognitionEnabled,
                accessibilityBlacklistedPackages,
                accessibilityLongPressTimeoutMillis,
                accessibilityRecognitionSensitivityPercent,
                preloadTextSegmenter,
                modernBlurRadiusDp,
                modernGlassOpacityPercent,
                logLevel,
                logDestination,
                enabled);
    }

    public void saveLocal(Context context) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
                .edit()
                .putBoolean(KEY_MASTER_ENABLED, masterEnabled)
                .putInt(KEY_COLOR_MODE, colorMode)
                .putInt(KEY_CONTENT_CAPTURE_MODE, contentCaptureMode)
                .putInt(KEY_UI_STYLE, uiStyle)
                .putInt(KEY_EDGE_TRIGGER_DP, edgeTriggerDp)
                .putInt(KEY_SCROLL_SPEED, scrollSpeedDpPerSecond)
                .putBoolean(KEY_BLOCK_BACKGROUND_SCROLL, blockBackgroundScroll)
                .putBoolean(KEY_TEXT_SHARING_ENABLED, textSharingEnabled)
                .putBoolean(KEY_IMAGE_SHARING_ENABLED, imageSharingEnabled)
                .remove(KEY_TEXT_COPY_ENABLED)
                .remove(KEY_IMAGE_COPY_ENABLED)
                .putBoolean(KEY_PRELOAD_TEXT_SEGMENTER, preloadTextSegmenter)
                .putInt(KEY_SIMPLE_MENU_POSITION, simpleMenuPosition)
                .putInt(KEY_SIMPLE_MENU_OPACITY, simpleMenuOpacityPercent)
                .putInt(KEY_SIMPLE_MENU_CORNER_RADIUS, simpleMenuCornerRadiusDp)
                .putInt(KEY_SIMPLE_MENU_EDGE_DISTANCE, simpleMenuEdgeDistanceDp)
                .putInt(KEY_ICON_OPACITY, iconOpacityPercent)
                .putInt(KEY_MODERN_BLUR_RADIUS, modernBlurRadiusDp)
                .putInt(KEY_MODERN_GLASS_OPACITY, modernGlassOpacityPercent)
                .putBoolean(
                        KEY_CLOSE_MENU_WHEN_POINTER_LEAVES,
                        closeMenuWhenPointerLeaves)
                .putStringSet(KEY_HIDDEN_TARGETS, new LinkedHashSet<>(hiddenTargetKeys))
                .putString(KEY_TARGET_ORDER, joinKeys(targetOrder))
                .putBoolean(
                        KEY_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED,
                        accessibilityLandscapeRecognitionEnabled)
                .putStringSet(
                        KEY_ACCESSIBILITY_BLACKLISTED_PACKAGES,
                        new LinkedHashSet<>(accessibilityBlacklistedPackages))
                .putInt(
                        KEY_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                        accessibilityLongPressTimeoutMillis)
                .putInt(
                        KEY_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT,
                        accessibilityRecognitionSensitivityPercent)
                .putInt(KEY_LOG_LEVEL, logLevel)
                .putInt(KEY_LOG_DESTINATION, logDestination)
                .apply();
        DragShareLog.configure(this);
        DragShareLog.i("DragShare/Settings", "logging configured level=" + logLevel
                + " destination=" + logDestination);
        context.getContentResolver().notifyChange(settingsUri(), null);
    }

    static DragShareSettings readFromProvider(Context portalContext) {
        if (portalContext == null) {
            return defaults();
        }
        try {
            Bundle result = portalContext.getContentResolver().call(
                    ImageStagingClient.BASE_URI,
                    METHOD_GET_SETTINGS,
                    null,
                    null);
            return fromBundle(result);
        } catch (Throwable ignored) {
            return defaults();
        }
    }

    Bundle toBundle() {
        Bundle result = new Bundle();
        result.putBoolean(KEY_MASTER_ENABLED, masterEnabled);
        result.putInt(KEY_COLOR_MODE, colorMode);
        result.putInt(KEY_CONTENT_CAPTURE_MODE, contentCaptureMode);
        result.putInt(KEY_UI_STYLE, uiStyle);
        result.putInt(KEY_EDGE_TRIGGER_DP, edgeTriggerDp);
        result.putInt(KEY_SCROLL_SPEED, scrollSpeedDpPerSecond);
        result.putBoolean(KEY_BLOCK_BACKGROUND_SCROLL, blockBackgroundScroll);
        result.putBoolean(KEY_TEXT_SHARING_ENABLED, textSharingEnabled);
        result.putBoolean(KEY_IMAGE_SHARING_ENABLED, imageSharingEnabled);
        
        result.putBoolean(
                KEY_TEXT_COPY_ENABLED,
                isTargetVisible(TARGET_COPY_TEXT));
        result.putBoolean(
                KEY_IMAGE_COPY_ENABLED,
                isTargetVisible(TARGET_COPY_IMAGE));
        result.putBoolean(KEY_PRELOAD_TEXT_SEGMENTER, preloadTextSegmenter);
        result.putInt(KEY_SIMPLE_MENU_POSITION, simpleMenuPosition);
        result.putInt(KEY_SIMPLE_MENU_OPACITY, simpleMenuOpacityPercent);
        result.putInt(KEY_SIMPLE_MENU_CORNER_RADIUS, simpleMenuCornerRadiusDp);
        result.putInt(KEY_SIMPLE_MENU_EDGE_DISTANCE, simpleMenuEdgeDistanceDp);
        result.putInt(KEY_ICON_OPACITY, iconOpacityPercent);
        result.putInt(KEY_MODERN_BLUR_RADIUS, modernBlurRadiusDp);
        result.putInt(KEY_MODERN_GLASS_OPACITY, modernGlassOpacityPercent);
        result.putBoolean(KEY_CLOSE_MENU_WHEN_POINTER_LEAVES, closeMenuWhenPointerLeaves);
        result.putStringArrayList(KEY_HIDDEN_TARGETS, new ArrayList<>(hiddenTargetKeys));
        result.putStringArrayList(KEY_TARGET_ORDER, new ArrayList<>(targetOrder));
        result.putBoolean(
                KEY_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED,
                accessibilityLandscapeRecognitionEnabled);
        result.putStringArrayList(
                KEY_ACCESSIBILITY_BLACKLISTED_PACKAGES,
                new ArrayList<>(accessibilityBlacklistedPackages));
        result.putInt(
                KEY_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                accessibilityLongPressTimeoutMillis);
        result.putInt(
                KEY_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT,
                accessibilityRecognitionSensitivityPercent);
        result.putInt(KEY_LOG_LEVEL, logLevel);
        result.putInt(KEY_LOG_DESTINATION, logDestination);
        return result;
    }

    static DragShareSettings fromBundle(Bundle bundle) {
        if (bundle == null) {
            return defaults();
        }
        ArrayList<String> hiddenValues = bundle.getStringArrayList(KEY_HIDDEN_TARGETS);
        ArrayList<String> orderValues = bundle.getStringArrayList(KEY_TARGET_ORDER);
        ArrayList<String> accessibilityBlacklistValues = bundle.getStringArrayList(
                KEY_ACCESSIBILITY_BLACKLISTED_PACKAGES);
        Set<String> hiddenTargetKeys = migrateLegacyCopyTargetVisibility(
                hiddenValues == null
                        ? Collections.emptySet()
                        : new LinkedHashSet<>(hiddenValues),
                bundle.getBoolean(KEY_TEXT_COPY_ENABLED, true),
                bundle.getBoolean(KEY_IMAGE_COPY_ENABLED, true));
        return new DragShareSettings(
                bundle.getInt(KEY_COLOR_MODE, COLOR_LIGHT),
                bundle.getInt(KEY_UI_STYLE, DEFAULT_UI_STYLE),
                bundle.getInt(KEY_EDGE_TRIGGER_DP, DEFAULT_EDGE_TRIGGER_DP),
                bundle.getInt(
                        KEY_SCROLL_SPEED,
                        DEFAULT_SCROLL_SPEED_DP_PER_SECOND),
                bundle.getBoolean(
                        KEY_BLOCK_BACKGROUND_SCROLL,
                        DEFAULT_BLOCK_BACKGROUND_SCROLL),
                bundle.getBoolean(
                        KEY_TEXT_SHARING_ENABLED,
                        DEFAULT_TEXT_SHARING_ENABLED),
                bundle.getBoolean(
                        KEY_IMAGE_SHARING_ENABLED,
                        DEFAULT_IMAGE_SHARING_ENABLED),
                bundle.getInt(
                        KEY_SIMPLE_MENU_POSITION,
                        DEFAULT_SIMPLE_MENU_POSITION),
                bundle.getInt(
                        KEY_SIMPLE_MENU_OPACITY,
                        DEFAULT_SIMPLE_MENU_OPACITY_PERCENT),
                bundle.getInt(
                        KEY_SIMPLE_MENU_CORNER_RADIUS,
                        DEFAULT_SIMPLE_MENU_CORNER_RADIUS_DP),
                bundle.getInt(
                        KEY_SIMPLE_MENU_EDGE_DISTANCE,
                        DEFAULT_SIMPLE_MENU_EDGE_DISTANCE_DP),
                bundle.getInt(
                        KEY_ICON_OPACITY,
                        DEFAULT_ICON_OPACITY_PERCENT),
                bundle.getBoolean(
                        KEY_CLOSE_MENU_WHEN_POINTER_LEAVES,
                        DEFAULT_CLOSE_MENU_WHEN_POINTER_LEAVES),
                hiddenTargetKeys,
                orderValues == null ? Collections.emptyList() : orderValues,
                bundle.getInt(
                        KEY_CONTENT_CAPTURE_MODE,
                        DEFAULT_CONTENT_CAPTURE_MODE),
                bundle.getBoolean(
                        KEY_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED,
                        DEFAULT_ACCESSIBILITY_LANDSCAPE_RECOGNITION_ENABLED),
                accessibilityBlacklistValues == null
                        ? Collections.emptySet()
                        : new LinkedHashSet<>(accessibilityBlacklistValues),
                bundle.getInt(
                        KEY_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                        DEFAULT_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS),
                bundle.getInt(
                        KEY_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT,
                        DEFAULT_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT),
                bundle.getBoolean(
                        KEY_PRELOAD_TEXT_SEGMENTER,
                        DEFAULT_PRELOAD_TEXT_SEGMENTER),
                bundle.getInt(
                        KEY_MODERN_BLUR_RADIUS,
                        DEFAULT_MODERN_BLUR_RADIUS_DP),
                bundle.getInt(
                        KEY_MODERN_GLASS_OPACITY,
                        DEFAULT_MODERN_GLASS_OPACITY_PERCENT),
                bundle.getInt(KEY_LOG_LEVEL, DEFAULT_LOG_LEVEL),
                bundle.getInt(KEY_LOG_DESTINATION, DEFAULT_LOG_DESTINATION),
                bundle.getBoolean(KEY_MASTER_ENABLED, DEFAULT_MASTER_ENABLED));
    }

    public boolean isSharingEnabled(boolean image) {
        if (!masterEnabled) {
            return false;
        }
        return image ? imageSharingEnabled : textSharingEnabled;
    }

    public boolean isPortalCaptureMode() {
        return contentCaptureMode == CONTENT_CAPTURE_PORTAL;
    }

    public boolean isAccessibilityCaptureMode() {
        return contentCaptureMode == CONTENT_CAPTURE_ACCESSIBILITY;
    }

    
    public boolean isPortalRuntimeEnabled() {
        return masterEnabled && isPortalCaptureMode();
    }

    
    public boolean isAccessibilityRuntimeEnabled() {
        return masterEnabled && isAccessibilityCaptureMode();
    }

    public boolean isModernStyle() {
        return uiStyle == STYLE_MODERN;
    }

    public boolean isAccessibilityPackageBlacklisted(String packageName) {
        return packageName != null && accessibilityBlacklistedPackages.contains(packageName);
    }

    public boolean isAccessibilityRecognitionEnabledForOrientation(int orientation) {
        return accessibilityLandscapeRecognitionEnabled
                || orientation != Configuration.ORIENTATION_LANDSCAPE;
    }

    public int resolveAccessibilityLongPressTimeoutMillis(int systemTimeoutMillis) {
        if (accessibilityLongPressTimeoutMillis
                != DEFAULT_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS) {
            return accessibilityLongPressTimeoutMillis;
        }
        return clamp(
                systemTimeoutMillis,
                MIN_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                MAX_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS);
    }

    public float accessibilityTouchSlopMultiplier() {
        return accessibilityRecognitionSensitivityPercent / 100f;
    }

    public boolean isTargetVisible(String key) {
        return key != null && !hiddenTargetKeys.contains(key);
    }

    static Uri settingsUri() {
        return Uri.parse(SETTINGS_URI_VALUE);
    }

    private static Set<String> migrateLegacyCopyTargetVisibility(
            Set<String> hiddenTargetKeys,
            boolean textCopyEnabled,
            boolean imageCopyEnabled) {
        LinkedHashSet<String> hidden = new LinkedHashSet<>(normalizeHiddenTargetKeys(
                hiddenTargetKeys));
        if (!textCopyEnabled) {
            hidden.add(TARGET_COPY_TEXT);
        }
        if (!imageCopyEnabled) {
            hidden.add(TARGET_COPY_IMAGE);
        }
        return hidden;
    }

    private static Set<String> normalizeHiddenTargetKeys(Set<String> hiddenTargetKeys) {
        LinkedHashSet<String> hidden = new LinkedHashSet<>();
        if (hiddenTargetKeys != null) {
            hidden.addAll(hiddenTargetKeys);
        }
        if (hidden.remove(TARGET_COPY)) {
            hidden.add(TARGET_COPY_TEXT);
            hidden.add(TARGET_COPY_IMAGE);
        }
        return hidden;
    }

    private static Set<String> immutableKeys(Collection<String> values) {
        LinkedHashSet<String> result = new LinkedHashSet<>();
        if (values != null) {
            for (String value : values) {
                if (value != null && !value.trim().isEmpty()) {
                    result.add(value);
                }
            }
        }
        return Collections.unmodifiableSet(result);
    }

    private static List<String> immutableKeysAsList(Collection<String> values) {
        ArrayList<String> result = new ArrayList<>();
        if (values != null) {
            for (String value : values) {
                if (value != null && !value.trim().isEmpty() && !result.contains(value)) {
                    result.add(value);
                }
            }
        }
        return Collections.unmodifiableList(result);
    }

    private static String joinKeys(List<String> values) {
        StringBuilder result = new StringBuilder();
        if (values == null) {
            return "";
        }
        for (String value : values) {
            if (value == null || value.trim().isEmpty() || value.indexOf('\n') >= 0) {
                continue;
            }
            if (result.length() > 0) {
                result.append('\n');
            }
            result.append(value);
        }
        return result.toString();
    }

    private static List<String> parseKeys(String encoded) {
        ArrayList<String> result = new ArrayList<>();
        if (encoded == null || encoded.isEmpty()) {
            return result;
        }
        String[] values = encoded.split("\\n");
        Collections.addAll(result, values);
        return result;
    }

    private static int clamp(int value, int minimum, int maximum) {
        return Math.max(minimum, Math.min(maximum, value));
    }

    private static int normalizeSimpleMenuPosition(int position) {
        return position >= SIMPLE_MENU_POSITION_TOP
                && position <= SIMPLE_MENU_POSITION_NEAR_HAND
                ? position
                : DEFAULT_SIMPLE_MENU_POSITION;
    }

    private static int normalizeContentCaptureMode(int mode) {
        return mode == CONTENT_CAPTURE_ACCESSIBILITY
                ? CONTENT_CAPTURE_ACCESSIBILITY
                : CONTENT_CAPTURE_PORTAL;
    }

    private static int normalizeAccessibilityLongPressTimeout(int timeoutMillis) {
        if (timeoutMillis == DEFAULT_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS) {
            return timeoutMillis;
        }
        return clamp(
                timeoutMillis,
                MIN_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS,
                MAX_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS);
    }

    private static int normalizeLogLevel(int level) {
        if (level == LOG_LEVEL_DISABLED || level == LOG_LEVEL_DEBUG) {
            return level;
        }
        return LOG_LEVEL_INFO;
    }

    private static int normalizeLogDestination(int destination) {
        return destination == LOG_DESTINATION_FILE
                ? LOG_DESTINATION_FILE
                : LOG_DESTINATION_SYSTEM;
    }
}
