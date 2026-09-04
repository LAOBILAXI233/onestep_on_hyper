package com.hyper.onestep;

import android.annotation.SuppressLint;
import android.Manifest;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.app.WallpaperManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.DragEvent;
import android.view.Gravity;
import android.view.HapticFeedbackConstants;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;

import com.hyper.onestep.data.settings.OneStepSettings;
import com.hyper.onestep.data.settings.OneStepSettingsStore;
import com.hyper.onestep.data.settings.TopAppListPolicy;
import com.hyper.onestep.data.apps.LauncherAppRepository;
import com.hyper.onestep.feature.embedding.EmbeddedAppHost;
import com.hyper.onestep.feature.embedding.DismissedAppClosePolicy;
import com.hyper.onestep.feature.embedding.DefaultHomeRoutingPolicy;
import com.hyper.onestep.feature.embedding.EmbeddedStartEpochStore;
import com.hyper.onestep.feature.embedding.HiddenActivityViewHost;
import com.hyper.onestep.feature.embedding.HostedDisplayRotationController;
import com.hyper.onestep.feature.drag.ImageDragSessionController;
import com.hyper.onestep.feature.drag.ImageDragBridgeRegistry;
import com.hyper.onestep.feature.drag.ImageDragFeatureGate;
import com.hyper.onestep.feature.drag.ImageDragShareTarget;
import com.hyper.onestep.feature.drag.ImageDragSourcePolicy;
import com.hyper.onestep.feature.drag.ImageFileNamePolicy;
import com.hyper.onestep.feature.drag.ImageShareTargetPolicy;
import com.hyper.onestep.feature.logging.SessionLogRecorder;
import com.hyper.onestep.feature.tasks.RunningTaskAppResolver;
import com.hyper.onestep.model.LauncherApp;
import com.hyper.onestep.VirtualDisplayRegionRegistry;
import com.hyper.onestep.dragshare.HyperDragDropBridge;
import com.hyper.onestep.model.PinnedTaskState;
import com.hyper.onestep.system.root.PersistentRootShell;
import com.hyper.onestep.system.root.ShellCommandResult;
import com.hyper.onestep.system.root.ZygiskHookConfig;
import com.leaf.hyperdragshare.codex.DragShareAccessibilityService;
import com.leaf.hyperdragshare.codex.TextSegmentationActivity;
import com.hyper.onestep.system.ui.SystemUiController;
import com.hyper.onestep.ui.background.BlurredBackgroundView;
import com.hyper.onestep.ui.gesture.CornerTriggerGesturePolicy;
import com.hyper.onestep.ui.settings.OneStepSettingsPage;
import com.hyper.onestep.ui.settings.SettingsPanelController;
import com.hyper.onestep.ui.topbar.TopPanelController;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.SidebarMode;
import com.hyper.onestep.lsp.MultiTaskController;
import com.hyper.onestep.util.MimeUtils;
import com.hyper.onestep.view.ContentView;
import com.hyper.onestep.ui.widget.AppShortcutView;
import com.hyper.onestep.ui.widget.FixedViewportFrameLayout;
import com.hyper.onestep.ui.widget.PagingHorizontalScrollView;
import com.hyper.onestep.ui.window.AppLaunchPlacement;
import com.hyper.onestep.ui.window.EmptySideSlotClickPolicy;
import com.hyper.onestep.ui.window.MainPaneFullscreenPolicy;
import com.hyper.onestep.ui.window.OneStepWindowView;
import com.hyper.onestep.ui.window.SideWindowInputShieldController;
import com.hyper.onestep.ui.window.WindowAnimationController;
import com.hyper.onestep.ui.window.WindowLayoutCalculator;
import com.hyper.onestep.ui.window.WindowLayoutModePolicy;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BooleanSupplier;

import static com.hyper.onestep.data.settings.OneStepSettings.CORNER_TRIGGER_SENSITIVITY_DEFAULT;
import static com.hyper.onestep.data.settings.OneStepSettings.ONE_STEP_TRIGGER_AREA_SCALE_DEFAULT;
import static com.hyper.onestep.data.settings.OneStepSettings.DEFAULT_SIDE_WINDOWS;
import static com.hyper.onestep.data.settings.OneStepSettings.DESKTOP_PAGE_COLUMNS;
import static com.hyper.onestep.data.settings.OneStepSettings.DESKTOP_PAGE_ROWS;
import static com.hyper.onestep.data.settings.OneStepSettings.MAX_SIDE_WINDOWS;
import static com.hyper.onestep.data.settings.OneStepSettings.TOP_APP_ICON_SCALE_DEFAULT;
import static com.hyper.onestep.data.settings.OneStepSettings.TOP_APP_ICON_SIZE_DEFAULT_DP;
import static com.hyper.onestep.data.settings.OneStepSettings.TOP_APP_STRIP_SPACING_SCALE_DEFAULT;
import static com.hyper.onestep.data.settings.OneStepSettings.TOP_APP_STRIP_VERTICAL_PADDING_SCALE_DEFAULT;
import static com.hyper.onestep.data.settings.OneStepSettings.TOP_NAV_CONTENT_HEIGHT_DP;
import static com.hyper.onestep.data.settings.OneStepSettings.TOP_NAV_VERTICAL_MARGIN_SCALE_DEFAULT;
import static com.hyper.onestep.data.settings.OneStepSettings.canUseSideWindowCount;
import static com.hyper.onestep.data.settings.OneStepSettings.isSupportedGridLayout;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeAllowedSideWindowCount;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeCornerTriggerSensitivity;
import static com.hyper.onestep.data.settings.OneStepSettings.oneStepTriggerAreaSizeDp;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeSideWindowCount;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeTopAppIconScale;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeTopAppStripSpacingScale;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeTopAppStripVerticalPaddingScale;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeOneStepTriggerAreaScale;
import static com.hyper.onestep.data.settings.OneStepSettings.sanitizeTopNavVerticalMarginScale;

public class MainActivity extends Activity {
    private static final String TAG = "VanStep";
    private static final String ACTION_OPLUS_SKIN_CHANGED =
            "oplus.intent.action.SKIN_CHANGED";
    private static final String ACTION_MIUI_THEME_CHANGED =
            "miui.intent.action.THEME_CHANGED";
    private static final String ACTION_SMARTISAN_ICONS_CHANGED =
            "com.smartisanos.launcher.update_icon";
    private static final String ACTION_OVERLAY_CHANGED =
            "android.intent.action.OVERLAY_CHANGED";
    private static final int LAUNCHER_APP_LOAD_CACHED = 0;
    private static final int LAUNCHER_APP_LOAD_RELOAD = 1;
    private static final int LAUNCHER_APP_LOAD_THEME_REFRESH = 2;
    static final String EXTRA_SHOW_DESKTOP_HOME =
            "com.hyper.onestep.extra.SHOW_DESKTOP_HOME";
    static final String EXTRA_DEFAULT_DISPLAY_RELAY_ATTEMPTED =
            "com.hyper.onestep.extra.DEFAULT_DISPLAY_RELAY_ATTEMPTED";
    private static WeakReference<MainActivity> defaultDisplayInstance =
            new WeakReference<>(null);

    public static boolean acceptHyperDragText(String text) {
        MainActivity activity = defaultDisplayInstance.get();
        if (activity == null || activity.activityDestroyed || TextUtils.isEmpty(text)) {
            return false;
        }
        activity.runOnUiThread(() ->
                activity.deliverDraggedTextToSlot(activity.activeMainSlot, text));
        return true;
    }

    public static boolean launchTextSegmentationFromHost(String text, int touchX, int touchY) {
        MainActivity activity = defaultDisplayInstance.get();
        if (activity == null || activity.activityDestroyed || TextUtils.isEmpty(text)) {
            return false;
        }
        activity.runOnUiThread(() -> activity.startTextSegmentationInTask(text, touchX, touchY));
        return true;
    }

    /**
     * External automation hook (broadcast from OneStepModeReceiver).
     * {@code targetMode} TRUE enters OneStep, FALSE exits, null toggles.
     */
    public static boolean requestOneStepModeFromExternal(Boolean targetMode) {
        MainActivity activity = defaultDisplayInstance.get();
        if (activity == null || activity.activityDestroyed) {
            return false;
        }
        activity.runOnUiThread(() -> {
            if (activity.activityDestroyed) {
                return;
            }
            boolean enter = targetMode == null ? !activity.multiWindowMode
                    : targetMode.booleanValue();
            if (enter) {
                if (!activity.multiWindowMode) {
                    activity.enterOneStepMode(false);
                }
            } else {
                activity.exitOneStepMode();
            }
        });
        return true;
    }

    private void startTextSegmentationInTask(String text, int touchX, int touchY) {
        if (activityDestroyed) {
            return;
        }
        Intent intent = TextSegmentationActivity.createIntent(text, touchX, touchY);
        intent.setFlags(intent.getFlags() & ~Intent.FLAG_ACTIVITY_NEW_TASK);
        try {
            startActivity(intent);
        } catch (RuntimeException e) {
            Log.w(TAG, "In-task segmentation launch failed; retry as new task", e);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(intent);
        }
    }
    private static final int MAX_WINDOWS = MAX_SIDE_WINDOWS + 2;
    private static final int REQUEST_PICK_BACKGROUND = 42;
    private static final int REQUEST_EXPORT_LOG_STORAGE = 43;
    private static final int TOP_MEDIA_AREA_MIN_HEIGHT_DP = 116;
    private static final int TOP_MEDIA_PLAYER_HEIGHT_DP = 76;
    private static final long PIP_MONITOR_INTERVAL_MS = 900L;
    private static final long PIP_MONITOR_RETRY_INTERVAL_MS = 2400L;
    private static final long PIP_MONITOR_IDLE_INTERVAL_MS = 4000L;
    private static final long RUNNING_TASK_MONITOR_INTERVAL_MS = 1500L;
    private static final long RUNNING_TASK_MONITOR_RETRY_INTERVAL_MS = 4000L;
    private static final long RUNNING_TASK_EVENT_REFRESH_DELAY_MS = 64L;
    private static final int RUNNING_TASK_QUERY_LIMIT = 128;
    private static final long SUPERSEDED_DISPLAY_RELEASE_GRACE_MS = 5000L;
    private static final int TOP_NAV_VERTICAL_SPACING_DEFAULT_DP = 20;
    private static final int TOP_BAR_HEIGHT_DEFAULT_DP = 74;
    private static final int TOP_NAV_BUTTON_SIZE_DP = 26;
    private static final int TOP_NAV_BUTTON_SPACING_DP = 8;
    private static final int TOP_NAV_ICON_SIZE_DP = 20;
    private static final int MAIN_PANE_SWAP_BUTTON_WIDTH_DP = 40;
    private static final int MAIN_PANE_SWAP_BUTTON_HEIGHT_DP = 64;
    private static final int MAIN_PANE_SWAP_ICON_HORIZONTAL_PADDING_DP = 10;
    private static final int MAIN_PANE_SWAP_ICON_VERTICAL_PADDING_DP = 12;
    private static final int MEDIA_ROOT_COMMAND_TIMEOUT_SECONDS = 8;
    private static final String[] KERNEL_SU_MANAGER_PACKAGES = {
            "me.weishu.kernelsu",
            "com.rifsxd.ksunext"
    };
    private static final int EMBEDDED_START_RETRY_MS = 25;
    private static final int EMBEDDED_START_MAX_RETRIES = 120;
    private static final int WINDOW_FRAME_SWITCH_ANIMATION_MS = 200;
    private static final int TOP_APP_REORDER_ANIMATION_MS = 220;
    private static final long WINDOW_SWITCH_IDLE_WARMUP_THRESHOLD_MS = 3000L;
    private static final int SIDE_DISMISS_DISTANCE_DP = 48;
    private static final int SIDE_DISMISS_SETTLE_MS = 180;
    private static final int WINDOW_SCALE_APPEAR_MS = 240;
    private static final float WINDOW_SCALE_APPEAR_START = 0.82f;
    private static final int MAIN_APP_REPLACE_FADE_OUT_MS = 160;
    private static final int CORNER_TRIGGER_DISTANCE_DEFAULT_DP = 36;
    private static final int CORNER_TRIGGER_PREVIEW_HIDE_DELAY_MS = 2000;
    private static final int EXIT_FULLSCREEN_LAYOUT_DELAY_MS = 180;
    private static final int EMBEDDED_LAYOUT_REFRESH_DELAY_MS = 320;
    private static final int VIRTUAL_DISPLAY_MIN_SHORT_EDGE_PX = 1080;
    private static final long POST_ANIMATION_NON_CRITICAL_WORK_DELAY_MS = 64L;
    private static final long CROSS_APP_ROUTE_RETRY_MS = 60L;
    private static final long DEFAULT_HOME_RESTORE_DELAY_MS = 80L;
    private static final long HOSTED_DISPLAY_FOCUS_DELAY_MS = 80L;
    private static final long DIRECT_BOOT_BRIDGE_PREWARM_RELEASE_DELAY_MS = 5000L;
    private static final int MAX_PENDING_CROSS_APP_ROUTES = 8;
    private static final long IMAGE_DRAG_CACHE_TTL_MS = 10L * 60L * 1000L;
    private static final long IMAGE_DRAG_CALLBACK_TIMEOUT_MS = 5000L;
    private static final int IMAGE_DRAG_SHARE_ANIMATION_MS = 180;
    static final String EXTRA_IMAGE_SHARE_ROUTE =
            "com.hyper.onestep.extra.IMAGE_SHARE_ROUTE";
    static final String EXTRA_IMAGE_SHARE_WAIT_FOR_APP_READY =
            "com.hyper.onestep.extra.IMAGE_SHARE_WAIT_FOR_APP_READY";
    private static final long MAX_SHARED_IMAGE_BYTES = 512L * 1024L * 1024L;
    private static final int DEFERRED_MEDIA_SESSION_REFRESH = 1;
    private static final int DEFERRED_MEDIA_UI_REFRESH = 1 << 1;
    private static final int DEFERRED_PLAYLIST_REFRESH = 1 << 2;
    private static final int DEFERRED_TOP_COMPONENT_REFRESH = 1 << 3;
    
    
    private static final String[] REQUIRED_EMBEDDING_PERMISSIONS = {
            "android.permission.ACTIVITY_EMBEDDING",
            "android.permission.MANAGE_ACTIVITY_TASKS",
            "android.permission.MANAGE_ACTIVITY_STACKS",
            "android.permission.INTERNAL_SYSTEM_WINDOW",
            "android.permission.REAL_GET_TASKS",
            "android.permission.START_ACTIVITIES_FROM_BACKGROUND",
            "android.permission.ADD_TRUSTED_DISPLAY",
            "android.permission.MEDIA_CONTENT_CONTROL",
            "android.permission.STATUS_BAR"
    };

    private final LauncherApp[] windowApps = new LauncherApp[MAX_WINDOWS];
    private final OneStepWindowView[] windowViews = new OneStepWindowView[MAX_WINDOWS];
    private final EmbeddedAppHost[] embeddedHosts = new EmbeddedAppHost[MAX_WINDOWS];
    private final int[] embeddedSyncGenerations = new int[MAX_WINDOWS];
    private final boolean[] embeddedSlotClosing = new boolean[MAX_WINDOWS];

    private final LauncherApp[] releasedToForegroundApps = new LauncherApp[MAX_WINDOWS];
    private final int[] releasedToForegroundTaskIds = new int[MAX_WINDOWS];
    private final List<AppShortcutView> shortcutViews = new ArrayList<>();
    private final Set<String> taskBackedAppInstances = new HashSet<>();
    private final List<Integer> sideSlotOrder = new ArrayList<>();
    private final ArrayDeque<RoutedAppLaunch> pendingCrossAppRoutes = new ArrayDeque<>();
    private final Map<String, Intent> routedLaunchIntents = new HashMap<>();
    private PendingImageSharePromotion pendingImageSharePromotion;
    private LauncherApp pendingBusyAddOrFocusApp;

    private List<LauncherApp> launcherApps = Collections.emptyList();
    private List<LauncherApp> orderedTopAppCandidates = Collections.emptyList();
    private List<LauncherApp> topAppStripApps = Collections.emptyList();
    private Set<String> selectedTopAppInstanceKeys = Collections.emptySet();
    private Set<String> topAppPinnedInstanceKeys = Collections.emptySet();
    private volatile long windowSwitchInputGateUntilUptime;
    private Map<String, Long> topAppLastUsedCache = Collections.emptyMap();
    private Map<String, Integer> topAppLaunchCountCache = Collections.emptyMap();
    private boolean topAppUsageQueryPending;
    private boolean usageStatsAccessEnsured;
    private List<LauncherApp> builtInDesktopApps = Collections.emptyList();
    private LauncherApp builtInDesktopApp;
    private boolean builtInDesktopResolutionFresh;

    private static final String PREFERRED_EMBEDDED_DESKTOP_PACKAGE = "com.smartisanos.home";
    private boolean oneStepDesktopSelected = true;
    private LauncherAppRepository launcherAppRepository;
    private final PersistentRootShell persistentRootShell = new PersistentRootShell();
    private boolean embeddingHintShown;
    private boolean rootAuthorizationHintShown;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService mediaRootExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService hookSettingsExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService displayImePolicyExecutor =
            Executors.newSingleThreadExecutor();
    private final ExecutorService sensorPolicyExecutor =
            Executors.newSingleThreadExecutor();
    private final ExecutorService visualEffectExecutor =
            Executors.newSingleThreadExecutor();
    private final ExecutorService wallpaperExecutor =
            Executors.newSingleThreadExecutor();
    private final ExecutorService pipDockExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService runningTaskExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService launcherIconExecutor = Executors.newSingleThreadExecutor();
    private final ExecutorService imageDragIoExecutor = Executors.newSingleThreadExecutor();
    private final Object rootInputBridgeStartLock = new Object();
    private boolean launcherIconReceiverRegistered;
    private LauncherApps launcherAppsManager;
    private boolean launcherAppsCallbackRegistered;
    private boolean launcherIconRefreshInFlight;
    private int pendingLauncherAppLoadMode = -1;
    private int launcherIconDensityDpi;
    private int launcherIconUiModeNight;
    private String launcherIconLocales = "";
    private final BroadcastReceiver launcherIconChangeReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent == null ? "theme broadcast" : intent.getAction();
            if (Intent.ACTION_CONFIGURATION_CHANGED.equals(action)) {
                if (recordLauncherIconConfiguration()) {
                    requestLauncherAppLoad(action, LAUNCHER_APP_LOAD_RELOAD);
                }
                return;
            }
            requestLauncherAppLoad(action, LAUNCHER_APP_LOAD_THEME_REFRESH);
        }
    };
    private final LauncherApps.Callback launcherAppsCallback = new LauncherApps.Callback() {
        @Override
        public void onPackageAdded(String packageName, UserHandle user) {
            requestLauncherAppLoad("package added: " + packageName,
                    LAUNCHER_APP_LOAD_RELOAD);
        }

        @Override
        public void onPackageChanged(String packageName, UserHandle user) {
            requestLauncherAppLoad("package changed: " + packageName,
                    LAUNCHER_APP_LOAD_RELOAD);
        }

        @Override
        public void onPackageRemoved(String packageName, UserHandle user) {
            requestLauncherAppLoad("package removed: " + packageName,
                    LAUNCHER_APP_LOAD_RELOAD);
        }

        @Override
        public void onPackagesAvailable(
                String[] packageNames, UserHandle user, boolean replacing) {
            requestLauncherAppLoad("packages available", LAUNCHER_APP_LOAD_RELOAD);
        }

        @Override
        public void onPackagesUnavailable(
                String[] packageNames, UserHandle user, boolean replacing) {
            requestLauncherAppLoad("packages unavailable", LAUNCHER_APP_LOAD_RELOAD);
        }
    };
    private final Runnable refreshAllEmbeddedSlotLayoutsRunnable =
            this::runScheduledEmbeddedSlotRefresh;
    private boolean forceEmbeddedLayoutRefresh;
    private ViewTreeObserver embeddedLayoutRefreshObserver;
    private ViewTreeObserver.OnPreDrawListener embeddedLayoutRefreshPreDrawListener;
    private final Runnable syncSideInputProtectionRunnable =
            this::syncSideInputProtection;

    private final Runnable cornerTriggerPreviewHideRunnable = this::hideCornerTriggerPreview;
    private final Runnable drainCrossAppRoutesRunnable = this::drainCrossAppRoutes;
    private final Runnable retryPendingBusyAddOrFocusRunnable = this::retryPendingBusyAddOrFocus;
    private ContentView legacyContentView;
    private FrameLayout legacyPanel;
    private FrameLayout legacyRegionCard;
    private Dialog legacyRegionDialog;
    private int hoveredNativeDropSlot = -1;
    private View nativeDropSlotHighlight;
    private boolean legacyPanelShown;
    private ContentView.ContentType activeRegionContentType = ContentView.ContentType.NONE;

    private float legacyPanelDownRawX;
    private float legacyPanelDownRawY;
    private int hoveredShareTargetIndex = -1;
    private TextView imageDragShareCapsuleView;
    private View hoveredContentDropIcon;
    private static final int NATIVE_SHARE_TARGET_POOL = 100;
    private final List<AppShortcutView> imageDragNativeTargetViews = new ArrayList<>();
    private final List<NativeShareTarget> imageDragNativeTargets = new ArrayList<>();
    private int hoveredNativeShareTargetIndex = -1;

    private static final class NativeShareTarget {
        final CharSequence label;
        final Drawable icon;
        final String packageName;
        final ComponentName component;

        NativeShareTarget(CharSequence label, Drawable icon,
                String packageName, ComponentName component) {
            this.label = label;
            this.icon = icon;
            this.packageName = packageName;
            this.component = component;
        }
    }
    private int legacySidebarMode = SidebarMode.MODE_LEFT;
    private final OneStepWindowView.Callbacks windowViewCallbacks =
            new OneStepWindowView.Callbacks() {
                @Override
                public View createDesktopHome() {
                    return oneStepDesktopSelected
                            ? MainActivity.this.createDesktopHome() : null;
                }

                @Override
                public void configureDesktopHomeViewport(OneStepWindowView windowView) {
                    MainActivity.this.configureDesktopHomeViewport(windowView);
                }

                @Override
                public void drawSharedBackground(Canvas canvas, View target) {
                    if (oneStepBackgroundView != null) {
                        oneStepBackgroundView.drawSharedBackground(canvas, target);
                    }
                }

                @Override
                public boolean isVerticalWindowLayout() {
                    return verticalWindowLayout;
                }

                @Override
                public int getSideDismissDirection() {
                    return MainActivity.this.getSideDismissDirection();
                }

                @Override
                public int getSideDismissDistancePx() {
                    return dp(SIDE_DISMISS_DISTANCE_DP);
                }

                @Override
                public boolean canDismissSlot(int slot) {
                    return slot >= 0 && slot < MAX_WINDOWS
                            && (windowApps[slot] != null || isInternalSettingsSlot(slot)
                            || isDesktopHomeSlot(slot));
                }

                @Override
                public boolean movedPastSideDismissThreshold(float dx, float dy) {
                    return MainActivity.this.movedPastSideDismissThreshold(dx, dy);
                }

                @Override
                public void dismissSideWindow(int slot) {
                    MainActivity.this.dismissSideWindow(slot);
                }

                @Override
                public void settleSideWindowBack(OneStepWindowView windowView) {
                    MainActivity.this.settleSideWindowBack(windowView);
                }

                @Override
                public boolean shouldRetainEmbeddedSurface(int slot) {
                    return slot >= 0 && slot < MAX_WINDOWS
                            && windowApps[slot] != null
                            && embeddedHosts[slot] instanceof RootVirtualDisplayHost;
                }

                @Override
                public void onAppDroppedInSlot(int slot, String componentFlat) {
                    handleLegacyAppDrop(slot, componentFlat);
                }
                @Override public void onSideWindowMotion(OneStepWindowView view,
                        MotionEvent event) {
                    
                    if (imageDragSessionController != null) {
                        imageDragSessionController.onTouch(view.getSlot(), event);
                    }
                }
                @Override public boolean onNativeContentDragInWindow(OneStepWindowView view,
                        DragEvent event) {
                    
                    
                    return handleNativeContentDrag(view, event);
                }
            };
    private final RootVirtualDisplayHost.Callbacks rootVirtualDisplayCallbacks =
            new RootVirtualDisplayHost.Callbacks() {
                @Override public LauncherApp[] windowApps() { return windowApps; }
                @Override public OneStepWindowView[] windowViews() { return windowViews; }
                @Override public boolean[] embeddedSlotClosing() { return embeddedSlotClosing; }
                @Override public Handler mainHandler() { return mainHandler; }
                @Override public ExecutorService displayImePolicyExecutor() {
                    return displayImePolicyExecutor;
                }
                @Override public ExecutorService sensorPolicyExecutor() {
                    return sensorPolicyExecutor;
                }
                @Override public PersistentRootShell persistentRootShell() {
                    return persistentRootShell;
                }
                @Override public EmbeddedStartEpochStore embeddedStartEpochStore() {
                    return embeddedStartEpochStore;
                }
                @Override public Object rootInputBridgeStartLock() {
                    return rootInputBridgeStartLock;
                }
                @Override public int embeddedStartEpoch() { return embeddedStartEpoch; }
                @Override public boolean shouldRunEmbeddedStart(int startEpoch) {
                    return MainActivity.this.shouldRunEmbeddedStart(startEpoch);
                }
                @Override public boolean isMainDisplaySlot(int slot) {
                    return MainActivity.this.isMainDisplaySlot(slot);
                }
                @Override public boolean isMainPaneSlot(int slot) {
                    return MainActivity.this.isMainPaneSlot(slot);
                }
                @Override public boolean isDualMainLayout() { return dualMainLayout; }
                @Override public boolean isLargeScreenDevice() {
                    return WindowLayoutModePolicy.isLargeScreen(
                            getResources().getConfiguration().smallestScreenWidthDp);
                }
                @Override public boolean activateMainSlot(int slot) {
                    return MainActivity.this.activateMainPane(slot, false);
                }
                @Override public boolean isActivityDestroyed() { return activityDestroyed; }
                @Override public boolean isWindowFrameAnimationRunning() {
                    return isWindowAnimationRunning();
                }
                @Override public boolean isMultiWindowMode() { return multiWindowMode; }
                @Override public boolean isWindowSlotEnabled(int slot) {
                    return MainActivity.this.isWindowSlotEnabled(slot);
                }
                @Override public boolean suppressEmbeddedStarts() {
                    return suppressEmbeddedStarts;
                }
                @Override public View workspace() { return workspace; }
                @Override public int mainSlotSwitchPendingSlot() {
                    return mainSlotSwitchPendingSlot;
                }
                @Override public int activeMainSlot() { return activeMainSlot; }
                @Override public boolean claimStaleSensorUidOverrideRecovery() {
                    if (staleSensorUidOverridesRecoveryAttempted) {
                        return false;
                    }
                    staleSensorUidOverridesRecoveryAttempted = true;
                    return true;
                }
                @Override public int latestPhysicalLandscapeRotation() {
                    return getLatestPhysicalLandscapeRotation();
                }
                @Override public boolean hasGrantedSystemEmbeddingPermission() {
                    return MainActivity.this.hasGrantedSystemEmbeddingPermission();
                }
                @Override public boolean isSystemAppInstall() {
                    return MainActivity.this.isSystemAppInstall();
                }
                @Override public void showEmbeddingHint(String reason) {
                    showEmbeddingHintIfNeeded(reason);
                }
                @Override public void showRootAuthorizationHint() {
                    showRootAuthorizationHintIfNeeded();
                }
                @Override public void swapWithMain(int slot) {
                    MainActivity.this.swapWithMain(slot);
                }
                @Override public int dp(float value) { return MainActivity.this.dp(value); }
                @Override public Set<String> recordedSensorUidOverrides() {
                    return getRecordedSensorUidOverrides();
                }
                @Override public void recordSensorUidOverride(String packageName) {
                    MainActivity.this.recordSensorUidOverride(packageName);
                }
                @Override public void clearSensorUidOverrideRecord(String packageName) {
                    MainActivity.this.clearSensorUidOverrideRecord(packageName);
                }
                @Override public long rootInputBridgeLastStartUptime() {
                    return rootInputBridgeLastStartUptime;
                }
                @Override public void setRootInputBridgeLastStartUptime(long uptime) {
                    rootInputBridgeLastStartUptime = uptime;
                }
                @Override public boolean claimTrustedDisplayRoleSetup() {
                    if (trustedDisplayRoleSetupAttempted) {
                        return false;
                    }
                    trustedDisplayRoleSetupAttempted = true;
                    return true;
                }
                @Override public Rect[] calculateWindowRects() {
                    return MainActivity.this.calculateWindowRects();
                }
                @Override public Intent consumeRoutedLaunchIntent(
                        int slot, String packageName) {
                    return MainActivity.this.consumeRoutedLaunchIntent(slot, packageName);
                }
                @Override public boolean onCrossAppLaunch(
                        int sourceDisplayId, String sourcePackage,
                        Intent intent, String targetPackage,
                        String sharedImageMimeType,
                        ParcelFileDescriptor sharedImageDescriptor) {
                    return MainActivity.this.onCrossAppLaunch(
                            sourceDisplayId, sourcePackage, intent, targetPackage,
                            sharedImageMimeType, sharedImageDescriptor);
                }
                @Override public void onSystemTaskEvent(
                        int event, int displayId, int taskId, String packageName,
                        String componentName) {
                    MainActivity.this.onSystemTaskEvent(
                            event, displayId, taskId, packageName, componentName);
                }
                @Override public boolean onImageDragTouch(
                        int sourceSlot, MotionEvent event) {
                    return imageDragSessionController != null
                            && imageDragSessionController.onTouch(sourceSlot, event);
                }
                @Override public void onHostedAppExitedAfterBack(
                        int slot, LauncherApp app, Runnable afterDesktopTakeover) {
                    MainActivity.this.onHostedAppExitedAfterBack(
                            slot, app, afterDesktopTakeover);
                }
            };
    private OneStepSettingsStore settingsStore;
    private EmbeddedStartEpochStore embeddedStartEpochStore;
    private FrameLayout workspace;
    private View screenContainerBackground;
    private FrameLayout rootContainer;
    private FrameLayout topChromeContainer;
    private LinearLayout topChromeContent;
    private FrameLayout topAppStripRoot;
    private LinearLayout topNavLeftControls;
    private LinearLayout topNavRightControls;
    private ImageView topNavPageLeftControl;
    private ImageView topNavPageRightControl;
    private ImageView topNavSettingsControl;
    private ImageView topNavExpandLeftControl;
    private ImageView topNavExpandRightControl;
    private ImageView mainPaneSwapControl;
    private WindowManager mainPaneSwapWindowManager;
    private WindowManager.LayoutParams mainPaneSwapWindowLayoutParams;
    private boolean mainPaneSwapWindowAttached;
    private BlurredBackgroundView oneStepBackgroundView;
    private HorizontalScrollView topAppStripScrollView;
    private LinearLayout topAppStripRow;
    private int topAppStripOrderAnimationGeneration;
    private HorizontalScrollView imageDragShareTargetScrollView;
    private LinearLayout imageDragShareTargetRow;
    private View[] imageDragShareTargetViews = new View[0];
    private boolean[] imageDragShareTargetEnabled = new boolean[0];
    private List<ImageDragShareEntry> imageDragShareEntries = Collections.emptyList();
    private final Rect imageDragShareHitRect = new Rect();
    private boolean imageDragShareTargetsVisible;
    private int imageDragShareAnimationGeneration;
    private boolean nativeContentDragActive;
    
    private static final int HYPERDRAG_BUILTIN_COUNT = 2;
    private final List<AppShortcutView> hyperDragBuiltInViews = new ArrayList<>();
    private final String[] hyperDragBuiltInLabels = new String[HYPERDRAG_BUILTIN_COUNT];
    private final Rect hyperDragBuiltInHitRect = new Rect();
    private int hoveredHyperDragBuiltInIndex = -1;
    private int hoveredHyperDragDropSlot = -1;
    private boolean hyperDragDropSessionActive;
    private boolean hyperDragDropImage;
    private boolean hyperDragTextDirectToSlot;
    private String hyperDragDropMime;
    private HyperDragDropBridge.Host hyperDragDropHost;
    private View statusGestureShield;
    private View leftCornerTrigger;
    private View rightCornerTrigger;
    private boolean cornerTriggerTracking;
    private boolean cornerTriggerFromLeft;
    private boolean cornerTriggerConsumed;
    private float cornerTriggerDownX;
    private float cornerTriggerDownY;
    private final int[] cornerTriggerLocationOnScreen = new int[2];
    private FrameLayout cornerTriggerPreviewLayer;
    private View leftCornerTriggerPreview;
    private View rightCornerTriggerPreview;
    private volatile int activeMainSlot;
    private int firstMainSlot;
    private int secondMainSlot = -1;
    private boolean dualMainLayout;
    private boolean mainPanesSwapped;
    private HostedDisplayRotationController hostedDisplayRotationController;
    private boolean mainOnLeft = true;
    private boolean multiWindowMode;
    private boolean exitOneStepPending;
    private boolean activityDestroyed;
    private boolean activityResumed;
    private boolean activityLifecycleResumed;
    private boolean nonDefaultDisplayHomeRelay;
    private boolean directBootHome;
    private boolean directBootUnlockReceiverRegistered;
    private boolean directBootInitializationRequested;
    private boolean fullHomeInitialized;
    private int lastHostDisplayWidth;
    private int lastHostDisplayHeight;
    private FrameLayout directBootRootContainer;
    private RootVirtualDisplayHost directBootBridgePrewarmHost;
    private LauncherApp directBootPrewarmDesktopApp;
    private boolean embeddedResourcesReleased;
    private WindowAnimationController windowAnimationController;
    private boolean windowSwitchAnimationCritical;
    private int deferredWindowSwitchUiWork;
    private boolean staleSensorUidOverridesRecoveryAttempted;
    private boolean kernelSuAuthorizationReturnPending;
    private boolean kernelSuAuthorizationRecoveryInFlight;
    private int mainSlotSwitchGeneration;
    private int mainSlotSwitchPendingSlot = -1;
    private int mainSlotSwitchPendingOldSlot = -1;
    private int mainContentReplacementGeneration;
    private int mainContentReplacementPendingSlot = -1;
    private int desktopTakeoverGeneration;
    private int pendingMainAppStartSlot = -1;
    private LauncherApp pendingMainAppStart;
    private int pendingInternalSettingsSlot = -1;
    private int pendingDesktopHomeSlot = -1;
    private boolean desktopHomeRequestPending;
    private long rootInputBridgeLastStartUptime;
    private boolean trustedDisplayRoleSetupAttempted;
    private volatile boolean suppressEmbeddedStarts;
    private volatile int embeddedStartEpoch;
    private int desktopGridRows = DESKTOP_PAGE_ROWS;
    private int desktopGridColumns = DESKTOP_PAGE_COLUMNS;
    private int topAppIconScalePct = TOP_APP_ICON_SCALE_DEFAULT;
    private int topAppStripSpacingScalePct = TOP_APP_STRIP_SPACING_SCALE_DEFAULT;
    private int topAppStripVerticalPaddingScalePct =
            TOP_APP_STRIP_VERTICAL_PADDING_SCALE_DEFAULT;
    private boolean topComponentsVisible = true;
    private boolean statusBarSpacingEnabled;
    private boolean verticalWindowLayout;
    private int sideWindowCount = DEFAULT_SIDE_WINDOWS;
    private int topNavVerticalMarginScalePct = TOP_NAV_VERTICAL_MARGIN_SCALE_DEFAULT;
    private int oneStepTriggerAreaScalePct = ONE_STEP_TRIGGER_AREA_SCALE_DEFAULT;
    private int cornerTriggerSensitivityPct = CORNER_TRIGGER_SENSITIVITY_DEFAULT;
    private boolean logRecordingEnabled;
    private SystemUiController systemUiController;
    private SessionLogRecorder sessionLogRecorder;
    private OneStepSettingsPage settingsPanelController;
    private TopPanelController topPanelController;
    private SideWindowInputShieldController sideInputShieldController;
    private ImageDragSessionController imageDragSessionController;
    private android.window.OnBackInvokedCallback systemBackCallback;
    private boolean pipMonitoringActive;
    private boolean pipQueryInFlight;
    private boolean pipDockInFlight;
    private boolean pipActive;
    private boolean pipDockApplied;
    private int pipTaskId = -1;
    private int pipMonitorGeneration;
    private boolean runningTaskMonitoringActive;
    private boolean runningTaskQueryInFlight;
    private boolean runningTaskRefreshPending;
    private boolean runningTaskQueryFailureLogged;
    private int runningTaskMonitorGeneration;
    private boolean defaultHomeRestorePending;
    private int hostedDisplayFocusGeneration;
    private boolean systemRecentsComponentResolved;
    private ComponentName systemRecentsComponent;
    private final Rect pipRestoreBounds = new Rect();
    private final Runnable flushDeferredWindowSwitchWorkRunnable =
            this::flushDeferredWindowSwitchWork;
    private final Runnable showDesktopHomeRunnable = this::showDesktopHomeInMain;
    private final Runnable restoreOneStepHomeRunnable = this::restoreOneStepHomeNow;
    private final Runnable pipMonitorRunnable = this::queryPipStateAsync;
    private final Runnable pipDockBoundsUpdateRunnable = this::requestPipDockFromSlot;
    private final Runnable runningTaskMonitorRunnable = this::queryRunningTaskStatusesAsync;
    private final BroadcastReceiver directBootUnlockReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (Intent.ACTION_USER_UNLOCKED.equals(intent == null ? null : intent.getAction())) {
                initializeFullHomeAfterDirectBootUnlock();
            }
        }
    };
    private final ImageDragBridgeRegistry.Listener imageDragBridgeListener =
            new ImageDragBridgeRegistry.Listener() {
                @Override public boolean canAccept(
                        int callingUid, int sourceDisplayId, String sourcePackage) {
                    return canAcceptImageDragSource(
                            callingUid, sourceDisplayId, sourcePackage);
                }

                @Override public boolean onImageReady(
                        int sourceDisplayId, String sourcePackage,
                        String mimeType, Uri sourceUri, File imageFile) {
                    return beginImageDragFileBlocking(
                            sourceDisplayId, sourcePackage, imageFile, mimeType, sourceUri);
                }
            };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        if (isSystemAppInstall()) {
            setTheme(R.style.Theme_VanStep_TransparentNavigation);
        }
        super.onCreate(savedInstanceState);
        int activityDisplayId = getActivityDisplayId();
        if (activityDisplayId != Display.DEFAULT_DISPLAY) {
            nonDefaultDisplayHomeRelay = true;
            Log.w(TAG, "Redirect HOME activity from virtual display " + activityDisplayId
                    + " to default display");
            redirectHomeToDefaultDisplay();
            return;
        }
        if (!isCurrentUserUnlocked()) {
            directBootHome = true;
            showDirectBootHome();
            registerDirectBootUnlockReceiver();
            Log.i(TAG, "Showing Direct Boot HOME until user unlock");
            return;
        }
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        initializeFullHome();
    }

    private void initializeFullHome() {
        directBootHome = false;
        unregisterDirectBootUnlockReceiver();
        applyOneStepRotationPolicy(getResources().getConfiguration());
        defaultDisplayInstance = new WeakReference<>(this);
        Window hostWindow = getWindow();
        hostWindow.clearFlags(WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER);
        hostWindow.setFormat(PixelFormat.OPAQUE);
        hostWindow.setBackgroundDrawable(new ColorDrawable(Color.BLACK));
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            hostWindow.setStatusBarColor(Color.TRANSPARENT);
            hostWindow.setNavigationBarColor(
                    isSystemAppInstall() ? Color.TRANSPARENT : Color.BLACK);
        }

        loadOneStepSettings();
        if (logRecordingEnabled) {
            startSessionLogRecording();
        }
        settingsPanelController = createSettingsPanelController();
        
        
        new Handler(Looper.getMainLooper()).postDelayed(() -> {
            if (settingsPanelController != null && !activityDestroyed) {
                try {
                    settingsPanelController.prewarm();
                } catch (Throwable t) {
                    Log.w(TAG, "Settings page prewarm failed", t);
                }
            }
        }, 2500);
        topPanelController = createTopPanelController();
        try {
            wireLegacyUiBridge();
        } catch (Throwable t) {
            Log.w(TAG, "Legacy sidebar bridge unavailable", t);
        }
        windowAnimationController = createWindowAnimationController();
        initializeEmbeddedBridgeState();
        launcherAppRepository = new LauncherAppRepository(this);
        
        
        launcherApps = LauncherAppRepository.getCachedLauncherApps();
        recordLauncherIconConfiguration();
        reconcileTopAppListConfiguration();
        loadBuiltInDesktopAppsForStartup();
        reconcileDirectBootPrewarmDesktop();
        setContentView(createDesktop());
        directBootRootContainer = null;
        finishFullHomeInitialization();
    }

    private void finishFullHomeInitialization() {
        if (activityDestroyed || fullHomeInitialized) {
            return;
        }
        Window hostWindow = getWindow();
        if (ImageDragFeatureGate.isEnabled()) {
            imageDragSessionController = createImageDragSessionController();
            ImageDragBridgeRegistry.register(imageDragBridgeListener);
            cleanupStaleImageDragFiles();
        }
        registerLauncherIconChangeReceiver();
        sideInputShieldController = new SideWindowInputShieldController(
                this, MAX_WINDOWS, new SideWindowInputShieldController.Callbacks() {
            @Override
            public boolean shouldShieldSlot(int slot) {
                return shouldShieldSideInput(slot);
            }

            @Override
            public OneStepWindowView windowView(int slot) {
                return slot >= 0 && slot < MAX_WINDOWS ? windowViews[slot] : null;
            }
        });
        
        
        hostWindow.setFormat(PixelFormat.OPAQUE);
        hostWindow.getDecorView().setBackgroundColor(Color.BLACK);
        systemUiController = new SystemUiController(
                this, this::shouldHideStatusBarForOneStep,
                () -> activityDestroyed, this::isSystemAppInstall, this::handleSystemBack);
        getWindow().getDecorView().post(() -> Log.i(TAG, "Hardware acceleration: decor="
                + getWindow().getDecorView().isHardwareAccelerated()));
        applyStatusBarForCurrentMode();
        registerSystemBackCallback();
        logSystemPermissionState();
        createEmbeddedHosts();
        initializeHostedLandscapeOrientationForwarding();
        prewarmRootInputBridge();
        renderWindows();
        mainHandler.post(this::requestDesktopHomeInMain);
        initMediaMonitoring();
        initAmapNavigationMonitoring();
        recordHostDisplaySize();
        fullHomeInitialized = true;
        requestLauncherAppLoad("initial HOME load", LAUNCHER_APP_LOAD_CACHED);
        mainHandler.postDelayed(this::releaseDirectBootBridgePrewarmHost,
                DIRECT_BOOT_BRIDGE_PREWARM_RELEASE_DELAY_MS);
        if (activityLifecycleResumed) {
            resumeFullHome();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        activityLifecycleResumed = true;
        restoreReleasedEmbeddedApps();
        if (nonDefaultDisplayHomeRelay || directBootHome) {
            return;
        }
        if (!fullHomeInitialized) {
            return;
        }
        if (kernelSuAuthorizationReturnPending && !kernelSuAuthorizationRecoveryInFlight) {
            recoverAfterKernelSuAuthorizationReturn();
        }
        resumeFullHome();
    }

    private void recoverAfterKernelSuAuthorizationReturn() {
        kernelSuAuthorizationReturnPending = false;
        kernelSuAuthorizationRecoveryInFlight = true;
        hookSettingsExecutor.execute(() -> {
            persistentRootShell.close();
            ShellCommandResult result = runMainPrivilegedCommand(
                    "id -u", "verify ROOT authorization after KernelSU return", false);
            boolean granted = result.isSuccess() && outputContainsLine(result.output, "0");
            mainHandler.post(() -> {
                kernelSuAuthorizationRecoveryInFlight = false;
                if (activityDestroyed) {
                    return;
                }
                if (!activityLifecycleResumed) {
                    kernelSuAuthorizationReturnPending = granted;
                    return;
                }
                if (granted) {
                    Log.i(TAG, "KernelSU authorization returned; refreshing existing HOME task");
                    applyRootAuthorizationToEmbeddedHosts();
                } else {
                    Log.i(TAG, "KernelSU authorization not available after return; keep HOME task");
                }
            });
        });
    }

    private void applyRootAuthorizationToEmbeddedHosts() {
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost) {
                ((RootVirtualDisplayHost) host).onRootAuthorizationGranted();
            }
        }
        if (settingsPanelController != null) {
            settingsPanelController.onRootAuthorizationGranted();
        }
        prewarmRootInputBridge();
        scheduleHostedDisplayFocus("ROOT authorization granted");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event == null) {
            return false;
        }
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            cornerTriggerTracking = false;
            cornerTriggerConsumed = false;
            if (!multiWindowMode) {
                View trigger = findCornerTrigger(event.getRawX(), event.getRawY());
                if (trigger != null) {
                    cornerTriggerTracking = true;
                    cornerTriggerFromLeft = trigger == leftCornerTrigger;
                    cornerTriggerDownX = event.getRawX();
                    cornerTriggerDownY = event.getRawY();
                }
            }
        } else if (cornerTriggerConsumed) {
            if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                cornerTriggerConsumed = false;
            }
            return true;
        } else if (cornerTriggerTracking) {
            if (action == MotionEvent.ACTION_POINTER_DOWN) {
                cornerTriggerTracking = false;
            } else if (action == MotionEvent.ACTION_MOVE
                    && CornerTriggerGesturePolicy.matches(
                    cornerTriggerFromLeft,
                    event.getRawX() - cornerTriggerDownX,
                    event.getRawY() - cornerTriggerDownY,
                    getCornerTriggerDistancePx())) {
                cornerTriggerTracking = false;
                cornerTriggerConsumed = true;
                MotionEvent cancelEvent = MotionEvent.obtain(event);
                try {
                    cancelEvent.setAction(MotionEvent.ACTION_CANCEL);
                    super.dispatchTouchEvent(cancelEvent);
                } finally {
                    cancelEvent.recycle();
                }
                enterOneStepMode(cornerTriggerFromLeft);
                return true;
            } else if (action == MotionEvent.ACTION_UP
                    || action == MotionEvent.ACTION_CANCEL) {
                cornerTriggerTracking = false;
            }
        }
        return super.dispatchTouchEvent(event);
    }

    private View findCornerTrigger(float rawX, float rawY) {
        if (isPointInsideCornerTrigger(leftCornerTrigger, rawX, rawY)) {
            return leftCornerTrigger;
        }
        return isPointInsideCornerTrigger(rightCornerTrigger, rawX, rawY)
                ? rightCornerTrigger : null;
    }

    private boolean isPointInsideCornerTrigger(View trigger, float rawX, float rawY) {
        if (trigger == null || !trigger.isShown()
                || trigger.getWidth() <= 0 || trigger.getHeight() <= 0) {
            return false;
        }
        trigger.getLocationOnScreen(cornerTriggerLocationOnScreen);
        int left = cornerTriggerLocationOnScreen[0];
        int top = cornerTriggerLocationOnScreen[1];
        return rawX >= left && rawX < left + trigger.getWidth()
                && rawY >= top && rawY < top + trigger.getHeight();
    }

    private void resumeFullHome() {
        boolean returningToForeground = !activityResumed;
        activityResumed = true;
        startRunningTaskMonitoring();
        suppressEmbeddedStarts = false;
        
        if (settingsStore.loadTopAppSortMode() == 1) {
            refreshTopAppUsageAsync();
        }
        if (returningToForeground && systemUiController != null) {
            systemUiController.invalidateAppliedState();
        }
        applyStatusBarForCurrentMode();
        hostedDisplayRotationController.enable();
        resumeMediaMonitoring();
        startPipMonitoring();
        scheduleSideInputProtectionSync();
        scheduleHostedDisplayFocus("OneStep resumed");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (directBootHome || !fullHomeInitialized) {
            return;
        }
        if (!nonDefaultDisplayHomeRelay) {
            boolean hostDisplaySizeChanged = recordHostDisplaySize();
            applyOneStepRotationPolicy(newConfig);
            boolean mainPaneCountChanged = reconcileMainPaneCount(newConfig);
            if (workspace != null) {
                workspace.post(() -> {
                    applyWindowLayout(false);
                    if (mainPaneCountChanged) {
                        configureMainPaneImePolicies();
                    }
                    if (hostDisplaySizeChanged) {
                        scheduleEmbeddedSlotRefresh(true);
                    }
                });
            }
        }
    }

    private boolean recordHostDisplaySize() {
        int width = getResources().getDisplayMetrics().widthPixels;
        int height = getResources().getDisplayMetrics().heightPixels;
        boolean changed = lastHostDisplayWidth > 0 && lastHostDisplayHeight > 0
                && (lastHostDisplayWidth != width || lastHostDisplayHeight != height);
        if (changed) {
            Log.i(TAG, "Host display size changed: old="
                    + lastHostDisplayWidth + "x" + lastHostDisplayHeight
                    + ", new=" + width + "x" + height);
        }
        lastHostDisplayWidth = width;
        lastHostDisplayHeight = height;
        return changed;
    }

    private void registerLauncherIconChangeReceiver() {
        if (launcherIconReceiverRegistered) {
            return;
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
        filter.addAction(ACTION_OVERLAY_CHANGED);
        filter.addAction(ACTION_MIUI_THEME_CHANGED);
        filter.addAction(ACTION_OPLUS_SKIN_CHANGED);
        filter.addAction(ACTION_SMARTISAN_ICONS_CHANGED);
        try {
            ContextCompat.registerReceiver(this, launcherIconChangeReceiver, filter,
                    ContextCompat.RECEIVER_EXPORTED);
            launcherIconReceiverRegistered = true;
        } catch (RuntimeException e) {
            Log.w(TAG, "Unable to register theme icon receiver", e);
        }
        launcherAppsManager = getSystemService(LauncherApps.class);
        if (launcherAppsManager != null) {
            try {
                launcherAppsManager.registerCallback(launcherAppsCallback, mainHandler);
                launcherAppsCallbackRegistered = true;
            } catch (RuntimeException e) {
                Log.w(TAG, "Unable to register launcher app callback", e);
            }
        }
    }

    private void unregisterLauncherIconChangeReceiver() {
        if (launcherIconReceiverRegistered) {
            try {
                unregisterReceiver(launcherIconChangeReceiver);
            } catch (RuntimeException e) {
                Log.w(TAG, "Unable to unregister theme icon receiver", e);
            }
        }
        launcherIconReceiverRegistered = false;
        if (launcherAppsCallbackRegistered && launcherAppsManager != null) {
            try {
                launcherAppsManager.unregisterCallback(launcherAppsCallback);
            } catch (RuntimeException e) {
                Log.w(TAG, "Unable to unregister launcher app callback", e);
            }
        }
        launcherAppsCallbackRegistered = false;
        launcherAppsManager = null;
    }

    private boolean recordLauncherIconConfiguration() {
        Configuration configuration = getResources().getConfiguration();
        int densityDpi = configuration.densityDpi;
        int uiModeNight = configuration.uiMode & Configuration.UI_MODE_NIGHT_MASK;
        String locales = configuration.getLocales().toLanguageTags();
        boolean changed = launcherIconDensityDpi != 0
                && (launcherIconDensityDpi != densityDpi
                || launcherIconUiModeNight != uiModeNight
                || !TextUtils.equals(launcherIconLocales, locales));
        launcherIconDensityDpi = densityDpi;
        launcherIconUiModeNight = uiModeNight;
        launcherIconLocales = locales;
        return changed;
    }

    private void requestLauncherAppLoad(String reason, int loadMode) {
        if (activityDestroyed || nonDefaultDisplayHomeRelay || launcherAppRepository == null) {
            return;
        }
        if (launcherIconRefreshInFlight) {
            pendingLauncherAppLoadMode = Math.max(pendingLauncherAppLoadMode, loadMode);
            return;
        }
        launcherIconRefreshInFlight = true;
        long startedAt = SystemClock.elapsedRealtime();
        try {
            launcherIconExecutor.execute(() -> {
                List<LauncherApp> refreshedApps = null;
                List<LauncherApp> refreshedDesktopApps = null;
                RuntimeException loadError = null;
                try {
                    if (loadMode == LAUNCHER_APP_LOAD_THEME_REFRESH) {
                        refreshedApps = launcherAppRepository.refreshLauncherApps();
                    } else if (loadMode == LAUNCHER_APP_LOAD_RELOAD) {
                        refreshedApps = launcherAppRepository.reloadLauncherApps();
                    } else {
                        refreshedApps = launcherAppRepository.loadLauncherApps();
                    }
                    refreshedDesktopApps = launcherAppRepository.loadHomeApps();
                } catch (RuntimeException e) {
                    loadError = e;
                }
                List<LauncherApp> result = refreshedApps;
                List<LauncherApp> desktopResult = refreshedDesktopApps;
                RuntimeException error = loadError;
                mainHandler.post(() -> finishLauncherIconRefresh(
                        reason, loadMode, startedAt, result, desktopResult, error));
            });
        } catch (RuntimeException e) {
            launcherIconRefreshInFlight = false;
            Log.w(TAG, "Unable to schedule themed icon refresh", e);
        }
    }

    private void finishLauncherIconRefresh(
            String reason, int loadMode, long startedAt, List<LauncherApp> refreshedApps,
            List<LauncherApp> refreshedDesktopApps, RuntimeException error) {
        launcherIconRefreshInFlight = false;
        if (!activityDestroyed && error == null && refreshedApps != null) {
            applyRefreshedLauncherApps(refreshedApps);
            applyRefreshedBuiltInDesktopApps(refreshedDesktopApps);
            Log.i(TAG, "Loaded launcher apps: reason=" + reason
                    + ", mode=" + loadMode + ", count=" + refreshedApps.size()
                    + ", elapsedMs=" + (SystemClock.elapsedRealtime() - startedAt));
        } else if (error != null) {
            Log.w(TAG, "Loading launcher apps failed: reason=" + reason, error);
        }
        if (pendingLauncherAppLoadMode >= 0 && !activityDestroyed) {
            int pendingMode = pendingLauncherAppLoadMode;
            pendingLauncherAppLoadMode = -1;
            requestLauncherAppLoad("coalesced launcher change", pendingMode);
        }
    }

    private void applyRefreshedLauncherApps(List<LauncherApp> refreshedApps) {
        boolean structureChanged = launcherApps.size() != refreshedApps.size();
        if (!structureChanged) {
            for (int i = 0; i < launcherApps.size(); i++) {
                LauncherApp oldApp = launcherApps.get(i);
                LauncherApp newApp = refreshedApps.get(i);
                if (!oldApp.isSameInstance(newApp)
                        || !TextUtils.equals(oldApp.label, newApp.label)) {
                    structureChanged = true;
                    break;
                }
            }
        }

        launcherApps = refreshedApps;
        reconcileTopAppListConfiguration();
        Map<String, LauncherApp> refreshedByInstance = new HashMap<>();
        Map<String, LauncherApp> refreshedByPackage = new HashMap<>();
        for (LauncherApp app : refreshedApps) {
            refreshedByInstance.put(app.instanceKey(), app);
            if (app.isCurrentUser()) {
                refreshedByPackage.putIfAbsent(app.packageName, app);
            }
        }
        for (int slot = 0; slot < windowApps.length; slot++) {
            LauncherApp current = windowApps[slot];
            if (current == null) {
                continue;
            }
            if (builtInDesktopApp != null
                    && builtInDesktopApp.componentName.equals(current.componentName)) {
                continue;
            }
            LauncherApp refreshed = refreshedByInstance.get(current.instanceKey());
            if (refreshed == null && current.isCurrentUser()) {
                refreshed = refreshedByPackage.get(current.packageName);
            }
            if (refreshed != null) {
                windowApps[slot] = refreshed;
            }
        }

        if (structureChanged) {
            rebuildTopChromeContent();
        } else {
            for (AppShortcutView shortcut : shortcutViews) {
                LauncherApp app = refreshedByInstance.get(shortcut.getInstanceKeyValue());
                if (app != null) {
                    shortcut.bind(app);
                }
            }
        }
        if (topPanelController != null) {
            topPanelController.refreshAppIcons();
        }
        
        
        if (settingsStore.loadTopAppSortMode() == 1) {
            refreshTopAppUsageAsync();
        } else {
            updateShortcutAppStatuses();
        }
    }

    private void applyRefreshedBuiltInDesktopApps(List<LauncherApp> refreshedApps) {
        if (refreshedApps == null) {
            return;
        }
        builtInDesktopApps = refreshedApps;
        oneStepDesktopSelected = settingsStore.isOneStepDesktopSelected();
        ComponentName selectedComponent = settingsStore.getBuiltInDesktopComponent();
        LauncherApp selected = oneStepDesktopSelected
                ? null : findAppByComponent(refreshedApps, selectedComponent);
        if (!oneStepDesktopSelected && selected == null) {
            oneStepDesktopSelected = true;
            settingsStore.saveOneStepDesktop();
        }
        builtInDesktopApp = selected;
        if (!settingsStore.isDesktopPreferenceExplicitlySet()) {
            applyPreferredEmbeddedDesktopDefault();
        }
        if (selected != null) {
            for (int slot = 0; slot < windowApps.length; slot++) {
                LauncherApp current = windowApps[slot];
                if (current != null && selected.componentName.equals(current.componentName)) {
                    windowApps[slot] = selected;
                }
            }
        }
        updateSettingsPageViews();
        renderWindows();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (directBootHome) {
            if (isCurrentUserUnlocked()) {
                initializeFullHomeAfterDirectBootUnlock();
            }
            return;
        }
        if (!fullHomeInitialized) {
            return;
        }
        if (nonDefaultDisplayHomeRelay) {
            redirectHomeToDefaultDisplay();
            return;
        }
        boolean desktopHomeRequest = isDesktopHomeRequestIntent(intent);
        if (desktopHomeRequest && activityResumed) {
            suppressEmbeddedStarts = false;
            requestDesktopHomeInMain();
            return;
        }
        if (desktopHomeRequest) {
            overridePendingTransition(0, 0);
        }
        suppressEmbeddedStarts = false;
        applyStatusBarForCurrentMode();
        hostedDisplayRotationController.enable();
        resumeMediaMonitoring();
        startPipMonitoring();
        if (desktopHomeRequest) {
            mainHandler.post(this::requestDesktopHomeInMain);
        }
    }

    private boolean isDesktopHomeRequestIntent(Intent intent) {
        return isSystemHomeIntent(intent)
                || (intent != null && intent.getBooleanExtra(EXTRA_SHOW_DESKTOP_HOME, false));
    }

    private boolean isSystemHomeIntent(Intent intent) {
        return intent != null && TextUtils.equals(Intent.ACTION_MAIN, intent.getAction())
                && intent.hasCategory(Intent.CATEGORY_HOME);
    }

    @Override
    protected void onPause() {
        activityLifecycleResumed = false;
        if (nonDefaultDisplayHomeRelay || directBootHome || !fullHomeInitialized) {
            super.onPause();
            return;
        }
        cancelScheduledHostedDisplayFocus();
        activityResumed = false;
        stopRunningTaskMonitoring();
        pauseMediaMonitoring();
        super.onPause();
    }

    @Override
    protected void onStop() {
        if (nonDefaultDisplayHomeRelay || directBootHome || !fullHomeInitialized) {
            super.onStop();
            return;
        }
        hostedDisplayRotationController.disable();
        stopAllHostedSensorLandscapeRotations("OneStep stopped");
        hostedDisplayRotationController.clearLatestRotation();
        pauseMediaMonitoring();
        stopPipMonitoring(true);
        suspendWindowInputRouting();
        super.onStop();
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (directBootHome || !fullHomeInitialized) {
            return;
        }
        if (hasFocus) {
            applyStatusBarForCurrentMode();
            scheduleSideInputProtectionSync();
        }
    }

    private void initializeHostedLandscapeOrientationForwarding() {
        hostedDisplayRotationController = new HostedDisplayRotationController(
                this, mainHandler, new HostedDisplayRotationController.Listener() {
            @Override
            public void onHostedDisplayChanged(int displayId) {
                RootVirtualDisplayHost host = findRootVirtualDisplayHost(displayId);
                if (host != null) {
                    host.onHostedDisplayRotationChanged();
                }
            }

            @Override
            public void onPhysicalLandscapeRotationChanged(int rotation) {
                dispatchPhysicalLandscapeRotationToHostedDisplays(rotation);
            }
        });
        hostedDisplayRotationController.register();
    }

    private void dispatchPhysicalLandscapeRotationToHostedDisplays(int targetRotation) {
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost) {
                ((RootVirtualDisplayHost) host).onPhysicalLandscapeRotationChanged(
                        targetRotation);
            }
        }
    }

    private void refreshAllHostedSensorLandscapeRotations() {
        if (getLatestPhysicalLandscapeRotation() < 0) {
            return;
        }
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost) {
                ((RootVirtualDisplayHost) host).onWindowSwitchSettledForSensorRotation();
            }
        }
    }

    private int getLatestPhysicalLandscapeRotation() {
        return hostedDisplayRotationController == null
                ? -1 : hostedDisplayRotationController.getLatestLandscapeRotation();
    }

    private void stopAllHostedSensorLandscapeRotations(String reason) {
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost) {
                ((RootVirtualDisplayHost) host).stopSensorLandscapeRotationAsync(reason);
            }
        }
    }

    private RootVirtualDisplayHost findRootVirtualDisplayHost(int targetDisplayId) {
        if (targetDisplayId <= Display.DEFAULT_DISPLAY) {
            return null;
        }
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost
                    && ((RootVirtualDisplayHost) host).getDisplayId() == targetDisplayId) {
                return (RootVirtualDisplayHost) host;
            }
        }
        return null;
    }

    private void applyStatusBarForCurrentMode() {
        if (systemUiController != null) {
            systemUiController.apply();
        }
    }

    private void focusActiveHostedDisplay(String reason) {
        RootVirtualDisplayHost activeHost = activeMainSlot >= 0
                && activeMainSlot < embeddedHosts.length
                && embeddedHosts[activeMainSlot] instanceof RootVirtualDisplayHost
                ? (RootVirtualDisplayHost) embeddedHosts[activeMainSlot] : null;
        if (activeHost != null) {
            activeHost.focusHostedDisplayAsync(reason, null);
        }
    }

    private int getActivityDisplayId() {
        Display display = getWindowManager().getDefaultDisplay();
        return display == null ? Display.DEFAULT_DISPLAY : display.getDisplayId();
    }

    private void redirectHomeToDefaultDisplay() {
        MainActivity defaultActivity = defaultDisplayInstance.get();
        if (defaultActivity != null && !defaultActivity.activityDestroyed
                && defaultActivity != this) {
            defaultActivity.scheduleHostedDisplayFocus("virtual HOME redirected");
            defaultActivity.suppressEmbeddedStarts = false;
            defaultActivity.requestDesktopHomeInMain();
            finish();
            overridePendingTransition(0, 0);
            return;
        }
        if (getIntent().getBooleanExtra(EXTRA_DEFAULT_DISPLAY_RELAY_ATTEMPTED, false)) {
            Log.e(TAG, "Stop repeated HOME redirect because no default-display instance exists");
            finish();
            overridePendingTransition(0, 0);
            return;
        }
        Intent redirectIntent = new Intent(this, HomeRedirectActivity.class)
                .putExtra(EXTRA_SHOW_DESKTOP_HOME, true)
                .putExtra(EXTRA_DEFAULT_DISPLAY_RELAY_ATTEMPTED, true)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ActivityOptions options = ActivityOptions.makeBasic();
                options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
                startActivity(redirectIntent, options.toBundle());
            } else {
                startActivity(redirectIntent);
            }
        } catch (ActivityNotFoundException | SecurityException e) {
            Log.e(TAG, "Unable to redirect HOME to default display", e);
        } finally {
            finish();
            overridePendingTransition(0, 0);
        }
    }

    private void onSystemTaskEvent(
            int event, int displayId, int taskId, String packageName, String componentName) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            handleSystemTaskEvent(event, displayId, taskId, packageName, componentName);
            return;
        }
        CountDownLatch handled = new CountDownLatch(1);
        mainHandler.post(() -> {
            try {
                handleSystemTaskEvent(event, displayId, taskId, packageName, componentName);
            } finally {
                handled.countDown();
            }
        });
        try {
            handled.await(120L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    private void handleSystemTaskEvent(
            int event, int displayId, int taskId, String packageName, String componentName) {
        requestRunningTaskStatusRefresh();
        promotePendingImageShareIfReady(
                event, displayId, packageName, componentName);
        if (activityDestroyed || activeMainSlot < 0 || activeMainSlot >= MAX_WINDOWS) {
            return;
        }
        LauncherApp currentMainApp = windowApps[activeMainSlot];
        EmbeddedAppHost activeHost = embeddedHosts[activeMainSlot];
        RootVirtualDisplayHost rootHost = activeHost instanceof RootVirtualDisplayHost
                ? (RootVirtualDisplayHost) activeHost : null;
        boolean systemRecentsMovedToFront = event
                == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && isSystemRecentsTask(packageName, componentName);
        if (systemRecentsMovedToFront) {
            if (displayId == Display.DEFAULT_DISPLAY && !isOneStepDefaultHome()) {
                cancelPendingOneStepHomeRestore();
                Log.i(TAG, "Leave default-display recents to the configured system HOME");
                return;
            }
            if (displayId == Display.DEFAULT_DISPLAY) {
                
                
                
                Log.i(TAG, "Allow default-display recents; embedded apps release on open"
                        + " and restore on return");
                return;
            }
            RootVirtualDisplayHost recentsHost = findRootVirtualDisplayHost(displayId);
            boolean mainShowsHostedDesktop = rootHost != null
                    && currentMainApp != null && currentMainApp.isHomeEntry();
            if (mainShowsHostedDesktop && displayId == rootHost.getDisplayId()) {
                return;
            }
            if (mainShowsHostedDesktop
                    && rootHost.moveSystemTaskToHostedDisplay(taskId, componentName)) {
                Log.i(TAG, "Moved system recents from display " + displayId
                        + " into main desktop display " + rootHost.getDisplayId());
                return;
            }
            Log.i(TAG, "Dismiss system recents outside main desktop: display=" + displayId
                    + ", mainDesktop=" + mainShowsHostedDesktop);
            if (recentsHost != null) {
                recentsHost.dismissHostedSystemRecents();
            }
            scheduleHostedDisplayFocus("hosted recents dismissed");
            return;
        }
        boolean embeddedAppOpenedToDefaultDisplay = event
                == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && displayId == Display.DEFAULT_DISPLAY
                && !TextUtils.equals(packageName, getPackageName());
        if (embeddedAppOpenedToDefaultDisplay) {
            int hostedSlot = findSlotHostingPackage(packageName);
            if (hostedSlot >= 0) {
                handleEmbeddedAppReleasedToForeground(
                        hostedSlot, taskId, packageName, componentName);
                return;
            }
            LauncherApp mainApp = activeMainSlot >= 0 && activeMainSlot < MAX_WINDOWS
                    ? windowApps[activeMainSlot] : null;
            boolean homeShownInMain = mainApp != null && mainApp.isHomeEntry()
                    || isDesktopHomeSlot(activeMainSlot);
            if (homeShownInMain
                    && !isBuiltInDesktopHomeTask(packageName, componentName)) {
                Log.i(TAG, "Claim app opened over hosted desktop into slot: "
                        + packageName + ", task=" + taskId);
                addOrFocusLatestApp(packageName);
                return;
            }
        }
        if (event == RootVirtualDisplayBridge.TASK_EVENT_REMOVAL_STARTED) {
            dropReleasedMemoryIfTaskRemoved(taskId, packageName);
        }
        if (event == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && displayId > Display.DEFAULT_DISPLAY
                && findRootVirtualDisplayHost(displayId) != null) {
            
            
            
            RootVirtualDisplayHost frontHost = findRootVirtualDisplayHost(displayId);
            int frontSlot = frontHost.getSlot();
            LauncherApp frontApp = frontSlot >= 0 && frontSlot < MAX_WINDOWS
                    ? windowApps[frontSlot] : null;
            if (!activityLifecycleResumed && frontApp != null && !frontApp.isHomeEntry()
                    && TextUtils.equals(frontApp.packageName, packageName)) {
                Log.i(TAG, "Release parked task opened from background: slot=" + frontSlot
                        + ", task=" + taskId + ", app=" + packageName);
                handleEmbeddedAppReleasedToForeground(
                        frontSlot, taskId, packageName, componentName);
                return;
            }
            scheduleHostedDisplayFocus("hosted task moved to front");
        }
        boolean oneStepHomeMovedToFront = event
                == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && displayId == Display.DEFAULT_DISPLAY
                && TextUtils.equals(packageName, getPackageName());
        if (oneStepHomeMovedToFront) {
            
            
            restoreReleasedEmbeddedApps();
            Log.i(TAG, "Route default-display HOME through OneStep containers");
            requestDesktopHomeInMain();
            return;
        }
        boolean systemDesktopMovedToDefaultDisplay = event
                == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && displayId == Display.DEFAULT_DISPLAY
                && isBuiltInDesktopHomeTask(packageName, componentName);
        if (systemDesktopMovedToDefaultDisplay) {
            if (!isOneStepDefaultHome()) {
                cancelPendingOneStepHomeRestore();
                Log.i(TAG, "Keep configured system HOME in front: " + componentName);
                return;
            }
            Log.i(TAG, "Restore OneStep after system HOME moved desktop to default display: "
                    + componentName);
            bringOneStepHomeToFront();
            return;
        }
        RootVirtualDisplayHost eventHost = findRootVirtualDisplayHost(displayId);
        int eventSlot = eventHost == null ? activeMainSlot : eventHost.getSlot();
        if (eventHost != null && isMainPaneSlot(eventSlot)) {
            rootHost = eventHost;
            currentMainApp = windowApps[eventSlot];
        } else {
            eventSlot = activeMainSlot;
        }
        if (rootHost == null) {
            return;
        }
        if (displayId > Display.DEFAULT_DISPLAY
                && rootHost.getDisplayId() != displayId) {
            return;
        }
        LauncherApp currentApp = currentMainApp;
        if (currentApp == null || currentApp.isHomeEntry()) {
            return;
        }
        if (event == RootVirtualDisplayBridge.TASK_EVENT_STACK_CHANGED) {
            rootHost.checkHostedTaskAfterSystemTaskChange();
            return;
        }
        boolean hostedTaskRemovalStarted = event
                == RootVirtualDisplayBridge.TASK_EVENT_REMOVAL_STARTED
                && (TextUtils.equals(currentApp.packageName, packageName)
                || (TextUtils.isEmpty(packageName)
                && rootHost.matchesHostedTask(currentApp, taskId)));
        boolean systemDesktopMovedToFront = event
                == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && displayId == rootHost.getDisplayId()
                && isBuiltInDesktopHomeTask(packageName, componentName);
        if (systemDesktopMovedToFront && rootHost.isHostedSurfaceRevealPending(currentApp)) {
            Log.i(TAG, "Keep secondary desktop concealed while hosted app is launching: slot="
                    + activeMainSlot + ", app=" + currentApp.packageName);
            return;
        }
        boolean hostedTaskMovedToFront = event
                == RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                && displayId == rootHost.getDisplayId()
                && !TextUtils.equals(packageName, getPackageName())
                && !systemDesktopMovedToFront;
        if (hostedTaskMovedToFront
                && rootHost.onHostedTaskMovedToFront(
                currentApp, taskId, packageName)) {
            return;
        }
        if (hostedTaskRemovalStarted) {
            if (eventSlot != activeMainSlot) {
                clearInactiveMainAfterTaskRemoval(eventSlot, currentApp);
                return;
            }
            Log.i(TAG, "Take over desktop when hosted task removal starts: slot="
                    + activeMainSlot + ", task=" + taskId
                    + ", app=" + currentApp.packageName);
            onHostedAppExitedAfterBack(activeMainSlot, currentApp, null);
            return;
        }
        if (systemDesktopMovedToFront) {
            handleHostedHomeRequest(activeMainSlot, currentApp, rootHost);
            return;
        }
        if (displayId <= Display.DEFAULT_DISPLAY) {
            rootHost.checkHostedTaskAfterSystemTaskChange();
        }
    }

    private void clearInactiveMainAfterTaskRemoval(int slot, LauncherApp removedApp) {
        if (!isMainPaneSlot(slot) || slot == activeMainSlot || removedApp == null
                || windowApps[slot] == null
                || !removedApp.isSameInstance(windowApps[slot])) {
            return;
        }
        embeddedSyncGenerations[slot]++;
        windowApps[slot] = null;
        clearHostedAppRevealState(slot);
        windowViews[slot].setLiveAppVisible(false);
        renderWindows();
        Log.i(TAG, "Cleared inactive main pane after hosted task removal: slot=" + slot
                + ", app=" + removedApp.packageName);
    }

    private void handleHostedHomeRequest(
            int sourceSlot, LauncherApp currentApp, RootVirtualDisplayHost sourceHost) {
        LauncherApp selectedDesktop = resolveBuiltInDesktopApp();
        int existingDesktopSlot = selectedDesktop == null
                ? -1 : findSlotByComponent(selectedDesktop.componentName);
        boolean canKeepCurrentApp = findEmptySideSlot() >= 0
                || (existingDesktopSlot >= 0 && existingDesktopSlot != sourceSlot
                && !embeddedSlotClosing[existingDesktopSlot]);

        Log.i(TAG, "Route hosted HOME through OneStep containers: sourceSlot="
                + sourceSlot + ", app=" + currentApp.packageName
                + ", keepCurrent=" + canKeepCurrentApp
                + ", existingDesktopSlot=" + existingDesktopSlot);
        if (canKeepCurrentApp) {
            
            
            if (!sourceHost.restart(currentApp)) {
                sourceHost.concealHostedSurfaceForDesktopTakeover(currentApp);
            }
        } else {
            sourceHost.concealHostedSurfaceForDesktopTakeover(currentApp);
        }
        requestDesktopHomeInMain();
    }

    private void bringOneStepHomeToFront() {
        if (!isOneStepDefaultHome()) {
            cancelPendingOneStepHomeRestore();
            return;
        }
        if (defaultHomeRestorePending) {
            return;
        }
        defaultHomeRestorePending = true;
        Log.i(TAG, "Restore OneStep after system HOME moved desktop to default display");
        mainHandler.postDelayed(restoreOneStepHomeRunnable, DEFAULT_HOME_RESTORE_DELAY_MS);
    }

    private void scheduleHostedDisplayFocus(String reason) {
        final int generation = ++hostedDisplayFocusGeneration;
        mainHandler.postDelayed(() -> {
            if (!activityDestroyed && activityResumed
                    && generation == hostedDisplayFocusGeneration) {
                focusActiveHostedDisplay(reason);
            }
        }, HOSTED_DISPLAY_FOCUS_DELAY_MS);
    }

    private void cancelScheduledHostedDisplayFocus() {
        hostedDisplayFocusGeneration++;
    }

    private void restoreOneStepHomeNow() {
        defaultHomeRestorePending = false;
        if (activityDestroyed) {
            return;
        }
        if (!isOneStepDefaultHome()) {
            Log.i(TAG, "Cancel OneStep HOME restore because the default HOME changed");
            return;
        }
        Intent homeIntent = new Intent(this, MainActivity.class)
                .putExtra(EXTRA_SHOW_DESKTOP_HOME, true)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_ACTIVITY_CLEAR_TOP
                        | Intent.FLAG_ACTIVITY_SINGLE_TOP
                        | Intent.FLAG_ACTIVITY_NO_ANIMATION);
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ActivityOptions options = ActivityOptions.makeBasic();
                options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
                startActivity(homeIntent, options.toBundle());
            } else {
                startActivity(homeIntent);
            }
            overridePendingTransition(0, 0);
        } catch (ActivityNotFoundException | SecurityException e) {
            Log.e(TAG, "Unable to restore OneStep after system HOME", e);
            requestDesktopHomeInMain();
        }
    }

    private void cancelPendingOneStepHomeRestore() {
        if (!defaultHomeRestorePending) {
            return;
        }
        defaultHomeRestorePending = false;
        mainHandler.removeCallbacks(restoreOneStepHomeRunnable);
    }

    private boolean isOneStepDefaultHome() {
        try {
            ComponentName defaultHome = new Intent(Intent.ACTION_MAIN)
                    .addCategory(Intent.CATEGORY_HOME)
                    .resolveActivity(getPackageManager());
            String defaultHomePackage = defaultHome == null
                    ? null : defaultHome.getPackageName();
            return DefaultHomeRoutingPolicy.shouldInterceptSystemHome(
                    getPackageName(), defaultHomePackage);
        } catch (RuntimeException e) {
            return false;
        }
    }

    private boolean isBuiltInDesktopPackage(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        if (builtInDesktopApp != null
                && TextUtils.equals(builtInDesktopApp.packageName, packageName)) {
            return true;
        }
        for (LauncherApp desktopApp : builtInDesktopApps) {
            if (desktopApp != null
                    && TextUtils.equals(desktopApp.packageName, packageName)) {
                return true;
            }
        }
        return false;
    }

    private boolean isBuiltInDesktopHomeTask(String packageName, String componentName) {
        if (!isBuiltInDesktopPackage(packageName) || TextUtils.isEmpty(componentName)) {
            return false;
        }
        ComponentName taskComponent = ComponentName.unflattenFromString(componentName);
        if (taskComponent == null) {
            return false;
        }
        if (builtInDesktopApp != null
                && taskComponent.equals(builtInDesktopApp.componentName)) {
            return true;
        }
        for (LauncherApp desktopApp : builtInDesktopApps) {
            if (desktopApp != null && taskComponent.equals(desktopApp.componentName)) {
                return true;
            }
        }
        return false;
    }

    private boolean isSystemRecentsTask(String packageName, String componentName) {
        if (TextUtils.isEmpty(componentName)) {
            return false;
        }
        ComponentName taskComponent = ComponentName.unflattenFromString(componentName);
        if (taskComponent == null) {
            return false;
        }
        ComponentName configuredRecents = resolveSystemRecentsComponent();
        if (configuredRecents != null) {
            return configuredRecents.equals(taskComponent);
        }
        return isBuiltInDesktopPackage(packageName)
                && taskComponent.getClassName().endsWith("RecentsActivity");
    }

    private ComponentName resolveSystemRecentsComponent() {
        if (systemRecentsComponentResolved) {
            return systemRecentsComponent;
        }
        systemRecentsComponentResolved = true;
        try {
            Resources systemResources = Resources.getSystem();
            int resourceId = systemResources.getIdentifier(
                    "config_recentsComponentName", "string", "android");
            if (resourceId != 0) {
                systemRecentsComponent = ComponentName.unflattenFromString(
                        systemResources.getString(resourceId));
            }
        } catch (RuntimeException e) {
            Log.w(TAG, "Unable to resolve system recents component: "
                    + e.getClass().getSimpleName());
        }
        return systemRecentsComponent;
    }

    private boolean shouldHideStatusBarForOneStep() {
        return !multiWindowMode || exitOneStepPending || !statusBarSpacingEnabled;
    }

    private synchronized Set<String> getRecordedSensorUidOverrides() {
        return settingsStore.getSensorUidOverrides();
    }

    private synchronized void recordSensorUidOverride(String packageName) {
        settingsStore.recordSensorUidOverride(packageName);
    }

    private synchronized void clearSensorUidOverrideRecord(String packageName) {
        settingsStore.clearSensorUidOverride(packageName);
    }

    @Override
    protected void onDestroy() {
        activityDestroyed = true;
        if (directBootHome) {
            unregisterDirectBootUnlockReceiver();
            releaseDirectBootResources();
            super.onDestroy();
            return;
        }
        releaseDirectBootBridgePrewarmHost();
        if (hyperDragDropHost != null) {
            endHyperDragDropSession();
            HyperDragDropBridge.unregister(hyperDragDropHost);
            hyperDragDropHost = null;
        }
        if (imageDragSessionController != null) {
            imageDragSessionController.cancel();
            imageDragSessionController = null;
        }
        ImageDragBridgeRegistry.unregister(imageDragBridgeListener);
        removeMainPaneSwapWindow(true);
        if (sessionLogRecorder != null) {
            sessionLogRecorder.close();
            sessionLogRecorder = null;
        }
        MainActivity replacementActivity = defaultDisplayInstance.get();
        boolean supersededOnDefaultDisplay = replacementActivity != null
                && replacementActivity != this
                && !replacementActivity.activityDestroyed;
        if (replacementActivity == this) {
            defaultDisplayInstance.clear();
        }
        if (nonDefaultDisplayHomeRelay) {
            launcherIconExecutor.shutdownNow();
            imageDragIoExecutor.shutdownNow();
            mediaRootExecutor.shutdownNow();
            hookSettingsExecutor.shutdownNow();
            visualEffectExecutor.shutdownNow();
            wallpaperExecutor.shutdownNow();
            pipDockExecutor.shutdownNow();
            runningTaskExecutor.shutdownNow();
            releaseEmbeddedResources();
            super.onDestroy();
            return;
        }
        cancelScheduledHostedDisplayFocus();
        unregisterLauncherIconChangeReceiver();
        cancelWindowSurfaceAnimation();
        if (hostedDisplayRotationController != null) {
            hostedDisplayRotationController.close();
        }
        if (systemUiController != null) {
            systemUiController.close();
            systemUiController = null;
        }
        mainHandler.removeCallbacks(cornerTriggerPreviewHideRunnable);
        mainHandler.removeCallbacks(drainCrossAppRoutesRunnable);
        mainHandler.removeCallbacks(retryPendingBusyAddOrFocusRunnable);
        pendingBusyAddOrFocusApp = null;
        mainHandler.removeCallbacks(flushDeferredWindowSwitchWorkRunnable);
        mainHandler.removeCallbacks(showDesktopHomeRunnable);
        mainHandler.removeCallbacks(restoreOneStepHomeRunnable);
        mainHandler.removeCallbacks(pipMonitorRunnable);
        mainHandler.removeCallbacks(pipDockBoundsUpdateRunnable);
        mainHandler.removeCallbacks(runningTaskMonitorRunnable);
        mainHandler.removeCallbacks(syncSideInputProtectionRunnable);
        cancelScheduledEmbeddedSlotRefresh();
        if (sideInputShieldController != null) {
            sideInputShieldController.release();
            sideInputShieldController = null;
        }
        windowSwitchAnimationCritical = false;
        deferredWindowSwitchUiWork = 0;
        pendingCrossAppRoutes.clear();
        routedLaunchIntents.clear();
        pauseMediaMonitoring();
        if (!supersededOnDefaultDisplay && (isFinishing() || exitOneStepPending)) {
            backgroundOpenedApps();
        }
        if (topPanelController != null) {
            topPanelController.close();
            topPanelController = null;
        }
        mediaRootExecutor.shutdownNow();
        hookSettingsExecutor.shutdownNow();
        launcherIconExecutor.shutdownNow();
        imageDragIoExecutor.shutdownNow();
        visualEffectExecutor.shutdownNow();
        wallpaperExecutor.shutdownNow();
        pipDockExecutor.shutdown();
        runningTaskExecutor.shutdownNow();
        if (supersededOnDefaultDisplay && !embeddedResourcesReleased) {
            Log.w(TAG, "Keep superseded virtual displays for "
                    + SUPERSEDED_DISPLAY_RELEASE_GRACE_MS
                    + "ms while Android completes the pending HOME dispatch");
            mainHandler.postDelayed(() -> releaseEmbeddedResources(true),
                    SUPERSEDED_DISPLAY_RELEASE_GRACE_MS);
        } else {
            releaseEmbeddedResources();
        }
        unregisterSystemBackCallback();
        super.onDestroy();
    }

    private void releaseEmbeddedResources() {
        releaseEmbeddedResources(false);
    }

    private void releaseEmbeddedResources(boolean supersededByReplacement) {
        if (embeddedResourcesReleased) {
            return;
        }
        embeddedResourcesReleased = true;
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host != null) {
                if (supersededByReplacement && host instanceof RootVirtualDisplayHost) {
                    ((RootVirtualDisplayHost) host).releaseForActivityReplacement();
                } else {
                    host.release();
                }
            }
        }
        displayImePolicyExecutor.shutdownNow();
        try {
            sensorPolicyExecutor.execute(persistentRootShell::close);
            sensorPolicyExecutor.shutdown();
        } catch (RuntimeException e) {
            sensorPolicyExecutor.shutdownNow();
            persistentRootShell.close();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_PICK_BACKGROUND && resultCode == RESULT_OK && data != null) {
            saveSelectedBackground(data.getData(), data.getFlags());
        }
        
        
        if (settingsPanelController != null) {
            settingsPanelController.dispatchActivityResult(requestCode, resultCode, data);
        }
    }

    private void exportSessionLog() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q
                && checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE)
                != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE},
                    REQUEST_EXPORT_LOG_STORAGE);
            return;
        }
        performSessionLogExport();
    }

    private void performSessionLogExport() {
        SessionLogRecorder recorder = sessionLogRecorder;
        if (recorder == null) {
            Toast.makeText(this, "日志记录器未启动", Toast.LENGTH_SHORT).show();
            return;
        }
        boolean accepted = recorder.export(result -> mainHandler.post(() -> {
            if (activityDestroyed) {
                return;
            }
            String message = result.isSuccessful()
                    ? "日志已导出：Download/" + result.getFileName()
                    : "日志导出失败：" + result.getErrorMessage();
            Toast.makeText(MainActivity.this, message, Toast.LENGTH_LONG).show();
        }));
        Toast.makeText(this, accepted ? "正在导出日志…" : "日志正在导出",
                Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions,
            int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != REQUEST_EXPORT_LOG_STORAGE) {
            return;
        }
        if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            performSessionLogExport();
        } else {
            Toast.makeText(this, "未获得存储权限，无法导出日志", Toast.LENGTH_SHORT).show();
        }
    }

    @SuppressLint("GestureBackNavigation")
    @Override
    public void onBackPressed() {
        if (directBootHome || !fullHomeInitialized) {
            return;
        }
        handleSystemBack();
    }

    private boolean isCurrentUserUnlocked() {
        UserManager userManager = getSystemService(UserManager.class);
        return userManager == null || userManager.isUserUnlocked();
    }

    private void showDirectBootHome() {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        Window directBootWindow = getWindow();
        directBootWindow.clearFlags(WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER);
        directBootWindow.setFormat(PixelFormat.OPAQUE);
        directBootWindow.setBackgroundDrawable(new ColorDrawable(Color.BLACK));
        directBootWindow.setStatusBarColor(Color.BLACK);
        directBootWindow.setNavigationBarColor(Color.BLACK);

        FrameLayout root = new FrameLayout(this);
        root.setBackgroundColor(Color.BLACK);
        directBootRootContainer = root;

        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.CENTER);
        content.setBackgroundColor(Color.BLACK);

        ImageView icon = new ImageView(this);
        icon.setImageResource(R.mipmap.ic_launcher);
        icon.setContentDescription(getString(R.string.app_name));
        int iconSize = dp(72);
        content.addView(icon, new LinearLayout.LayoutParams(iconSize, iconSize));

        TextView label = new TextView(this);
        label.setText(R.string.app_name);
        label.setTextColor(Color.WHITE);
        label.setGravity(Gravity.CENTER);
        setDpTextSize(label, 18f);
        LinearLayout.LayoutParams labelParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        labelParams.topMargin = dp(16);
        content.addView(label, labelParams);
        root.addView(content, matchFrame());
        setContentView(root);
        root.post(this::prewarmDirectBootRootBridge);
    }

    private void prewarmDirectBootRootBridge() {
        if (!directBootHome || activityDestroyed || directBootBridgePrewarmHost != null) {
            return;
        }
        RootVirtualDisplayHost prewarmHost = new RootVirtualDisplayHost(
                this, this, 0, rootVirtualDisplayCallbacks, true);
        if (!prewarmHost.hasRootAccess()) {
            prewarmHost.release();
            return;
        }
        directBootBridgePrewarmHost = prewarmHost;
        prewarmHost.ensureRootInputBridgeStarted();
        ComponentName desktopComponent =
                OneStepSettingsStore.getDirectBootBuiltInDesktopComponent(this);
        if (desktopComponent != null) {
            try {
                LauncherApp desktopApp = new LauncherAppRepository(this)
                        .loadHomeApp(desktopComponent);
                if (desktopApp != null && directBootRootContainer != null) {
                    directBootPrewarmDesktopApp = desktopApp;
                    directBootRootContainer.addView(prewarmHost.getView(), 0, matchFrame());
                    prewarmHost.prepareDirectBootDisplay(desktopApp);
                }
            } catch (RuntimeException e) {
                Log.w(TAG, "Direct Boot desktop prelaunch unavailable", e);
            }
        }
        Log.i(TAG, "Prewarming root display bridge during Direct Boot: desktop="
                + (directBootPrewarmDesktopApp == null ? "none"
                : directBootPrewarmDesktopApp.componentKey()));
    }

    private void releaseDirectBootBridgePrewarmHost() {
        RootVirtualDisplayHost prewarmHost = directBootBridgePrewarmHost;
        LauncherApp prewarmDesktop = directBootPrewarmDesktopApp;
        directBootBridgePrewarmHost = null;
        directBootPrewarmDesktopApp = null;
        if (prewarmDesktop != null && windowApps[0] != null
                && prewarmDesktop.isSameInstance(windowApps[0])) {
            windowApps[0] = null;
        }
        if (prewarmHost != null) {
            prewarmHost.release();
        }
    }

    private void reconcileDirectBootPrewarmDesktop() {
        if (directBootBridgePrewarmHost == null) {
            return;
        }
        if (directBootPrewarmDesktopApp != null && builtInDesktopApp != null
                && directBootPrewarmDesktopApp.isSameInstance(builtInDesktopApp)) {
            return;
        }
        releaseDirectBootBridgePrewarmHost();
    }

    private void registerDirectBootUnlockReceiver() {
        if (directBootUnlockReceiverRegistered) {
            return;
        }
        IntentFilter filter = new IntentFilter(Intent.ACTION_USER_UNLOCKED);
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                registerReceiver(directBootUnlockReceiver, filter, Context.RECEIVER_EXPORTED);
            } else {
                registerReceiver(directBootUnlockReceiver, filter);
            }
            directBootUnlockReceiverRegistered = true;
        } catch (RuntimeException e) {
            Log.w(TAG, "Unable to register Direct Boot unlock receiver", e);
        }
        if (isCurrentUserUnlocked()) {
            initializeFullHomeAfterDirectBootUnlock();
        }
    }

    private void unregisterDirectBootUnlockReceiver() {
        if (!directBootUnlockReceiverRegistered) {
            return;
        }
        try {
            unregisterReceiver(directBootUnlockReceiver);
        } catch (RuntimeException ignored) {
        }
        directBootUnlockReceiverRegistered = false;
    }

    private void initializeFullHomeAfterDirectBootUnlock() {
        if (!directBootHome || directBootInitializationRequested || activityDestroyed
                || !isCurrentUserUnlocked()) {
            return;
        }
        directBootInitializationRequested = true;
        unregisterDirectBootUnlockReceiver();
        Log.i(TAG, "User unlocked; initializing full OneStep HOME in place");
        mainHandler.post(() -> {
            if (!activityDestroyed && directBootHome) {
                initializeFullHome();
            }
        });
    }

    private void releaseDirectBootResources() {
        releaseDirectBootBridgePrewarmHost();
        mainHandler.removeCallbacksAndMessages(null);
        mediaRootExecutor.shutdownNow();
        hookSettingsExecutor.shutdownNow();
        displayImePolicyExecutor.shutdownNow();
        sensorPolicyExecutor.shutdownNow();
        visualEffectExecutor.shutdownNow();
        wallpaperExecutor.shutdownNow();
        pipDockExecutor.shutdownNow();
        runningTaskExecutor.shutdownNow();
        launcherIconExecutor.shutdownNow();
        imageDragIoExecutor.shutdownNow();
        persistentRootShell.close();
    }

    private void registerSystemBackCallback() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU || systemBackCallback != null) {
            return;
        }
        systemBackCallback = this::handleSystemBack;
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(
                android.window.OnBackInvokedDispatcher.PRIORITY_DEFAULT, systemBackCallback);
    }

    private void unregisterSystemBackCallback() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU || systemBackCallback == null) {
            return;
        }
        try {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(systemBackCallback);
        } catch (IllegalArgumentException ignored) {
        }
        systemBackCallback = null;
    }

    @SuppressLint("MissingPermission")
    private View createDesktop() {
        FrameLayout root = new FrameLayout(this);
        rootContainer = root;
        root.setOnDragListener(this::handleNativeContentDrag);
        root.setBackground(makeWallpaperFallback());
        try {
            root.setBackground(WallpaperManager.getInstance(this).getDrawable());
        } catch (RuntimeException ignored) {
            root.setBackground(makeWallpaperFallback());
        }

        oneStepBackgroundView = new BlurredBackgroundView(
                this,
                visualEffectExecutor,
                this::loadCurrentListBackgroundDrawable,
                () -> windowSwitchAnimationCritical,
                () -> activityDestroyed,
                this::invalidateWindowPlaceholderBackgrounds);
        root.addView(oneStepBackgroundView, matchFrame());

        workspace = new FrameLayout(this);
        workspace.setBackgroundColor(Color.TRANSPARENT);
        workspace.setClipChildren(true);
        workspace.setClipToPadding(true);
        workspace.addOnLayoutChangeListener((view, left, top, right, bottom,
                                             oldLeft, oldTop, oldRight, oldBottom) -> {
            int width = right - left;
            int height = bottom - top;
            int oldWidth = oldRight - oldLeft;
            int oldHeight = oldBottom - oldTop;
            if (activityDestroyed || oldWidth <= 0 || oldHeight <= 0
                    || width <= 0 || height <= 0
                    || (width == oldWidth && height == oldHeight)) {
                return;
            }
            view.post(() -> {
                if (!activityDestroyed && view == workspace
                        && view.getWidth() == width && view.getHeight() == height) {
                    applyWindowLayout(false);
                }
            });
        });
        root.addView(workspace, matchFrame());

        screenContainerBackground = new View(this);
        screenContainerBackground.setBackgroundColor(Color.BLACK);
        workspace.addView(screenContainerBackground, matchFrame());

        topChromeContainer = new FrameLayout(this);
        topChromeContent = new LinearLayout(this);
        topChromeContent.setOrientation(LinearLayout.VERTICAL);
        topChromeContent.setPadding(0, getStatusBarSpacingHeight(), 0, 0);
        topChromeContainer.addView(topChromeContent, matchFrame());
        topChromeContent.addView(createTopMediaArea(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopMediaAreaHeight()));
        topChromeContent.addView(createTopNavigationBar(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopNavHeight()));
        topChromeContent.addView(createTopAppStrip(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopAppStripHeight()));
        FrameLayout.LayoutParams topChromeLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopChromeHeight(), Gravity.TOP);
        root.addView(topChromeContainer, topChromeLp);

        activeMainSlot = 0;
        firstMainSlot = activeMainSlot;
        dualMainLayout = shouldUseDualMainLayout(getResources().getConfiguration());
        secondMainSlot = dualMainLayout ? 1 : -1;
        multiWindowMode = false;
        initializeSideSlotOrder();

        for (int i = 0; i < MAX_WINDOWS; i++) {
            final int slot = i;
            windowViews[i] = new OneStepWindowView(
                    this, i == activeMainSlot, makeWindowPlaceholderBorder(), windowViewCallbacks);
            windowViews[i].setMainWindowMode(isMainPaneSlot(i));
            windowViews[i].setOnClickListener(v -> {
                if (isWindowSwitchInputGated()) {
                    return;
                }
                if (isMainPaneSlot(slot)) {
                    activateMainPane(slot, true);
                } else {
                    handleSideSlotClick(slot);
                }
            });
            windowViews[i].setOnLongClickListener(v -> {
                if (isWindowSwitchInputGated()) {
                    return true;
                }
                if (isMainPaneSlot(slot)) {
                    activateMainPane(slot, true);
                    syncEmbeddedSlot(slot);
                } else {
                    swapWithMain(slot);
                }
                return true;
            });
        }

        mainPaneSwapControl = createMainPaneSwapControl();
        mainPaneSwapWindowManager = getWindowManager();

        setTopChromeVisible(false, false);
        applyWindowLayout(false);
        addCornerTriggers(root);
        return root;
    }

    private void initializeSideSlotOrder() {
        sideSlotOrder.clear();
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (!isMainPaneSlot(slot)) {
                sideSlotOrder.add(slot);
            }
        }
    }

    private void applyWindowLayout(boolean animate) {
        applyWindowLayout(animate, null);
    }

    private void applyWindowLayout(boolean animate, Runnable onAnimationFinished) {
        applyWindowLayout(animate, onAnimationFinished, true);
    }

    private void applyWindowLayout(boolean animate, Runnable onAnimationFinished,
                                   boolean allowSurfaceLayerAnimation) {
        if (workspace == null) {
            return;
        }
        if (workspace.getWidth() == 0 || workspace.getHeight() == 0) {
            workspace.post(() -> applyWindowLayout(false, onAnimationFinished));
            return;
        }

        Rect[] targetRects = calculateWindowRects();
        suspendWindowInputRouting();
        updateScreenContainerBackground();
        ensureWindowChildren();
        updateMainPaneSwapControl(targetRects);

        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            // During an animated transition every currently-visible slot
            // stays visible so it glides to its (possibly offscreen) target
            // rect; hiding a departing slot here made it snap in place after
            // the animation finished, which read as a flash. The next
            // non-animated layout pass parks unused slots INVISIBLE so they
            // never intercept touches.
            boolean visible = isWindowSlotEnabled(slot) && !embeddedSlotClosing[slot];
            if (!visible && animate && hasLaidOutWindowFrames()) {
                visible = windowViews[slot].getVisibility() == View.VISIBLE;
            }
            windowViews[slot].setVisibility(visible ? View.VISIBLE : View.INVISIBLE);
            windowViews[slot].setMainWindowMode(isMainPaneSlot(slot));
        }

        Runnable layoutFinished = () -> {
            restoreWindowInputRoutingAfterLayout();
            configureMainDesktopHomeViewports();
            keepMainPaneSwapControlOnTop();
            if (onAnimationFinished != null) {
                onAnimationFinished.run();
            } else {
                refreshAllEmbeddedSlotLayouts();
            }
            scheduleEmbeddedSlotRefresh();
        };

        if (!animate || !hasLaidOutWindowFrames()) {
            cancelWindowSurfaceAnimation();
            for (int slot = 0; slot < MAX_WINDOWS; slot++) {
                setWindowFrame(windowViews[slot], targetRects[slot]);
                resetWindowTransform(windowViews[slot]);
            }
            applyWindowZOrder();
            layoutFinished.run();
            return;
        }

        animateWindowFrames(targetRects, layoutFinished, allowSurfaceLayerAnimation);
    }

    private void configureDesktopHomeViewport(OneStepWindowView windowView) {
        if (windowView == null || workspace == null) {
            return;
        }
        int viewportWidth = workspace.getWidth();
        int viewportHeight = workspace.getHeight();
        if (viewportWidth <= 0 || viewportHeight <= 0) {
            return;
        }
        windowView.updateDesktopHomeViewport(viewportWidth, viewportHeight);
    }

    private void configureMainDesktopHomeViewports() {
        configureDesktopHomeViewport(windowViews[activeMainSlot]);
        int otherMainSlot = getOtherMainSlot(activeMainSlot);
        if (otherMainSlot >= 0) {
            configureDesktopHomeViewport(windowViews[otherMainSlot]);
        }
    }

    private void ensureWindowChildren() {
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            OneStepWindowView windowView = windowViews[slot];
            if (windowView.getParent() != workspace) {
                ViewParent parent = windowView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(windowView);
                }
                workspace.addView(windowView);
            }
        }
    }

    private void updateScreenContainerBackground() {
        if (screenContainerBackground == null) {
            return;
        }
        int topMargin = multiWindowMode ? getTopChromeHeight() : 0;
        FrameLayout.LayoutParams layoutParams =
                (FrameLayout.LayoutParams) screenContainerBackground.getLayoutParams();
        if (layoutParams.topMargin == topMargin) {
            return;
        }
        layoutParams.topMargin = topMargin;
        screenContainerBackground.setLayoutParams(layoutParams);
    }

    private Rect[] calculateWindowRects() {
        int layoutFirstMainSlot = firstMainSlot;
        int layoutSecondMainSlot = secondMainSlot;
        if (mainPanesSwapped && secondMainSlot >= 0) {
            layoutFirstMainSlot = secondMainSlot;
            layoutSecondMainSlot = firstMainSlot;
        }
        return WindowLayoutCalculator.calculate(
                MAX_WINDOWS,
                workspace.getWidth(),
                workspace.getHeight(),
                dp(2),
                getTopChromeHeight(),
                multiWindowMode,
                verticalWindowLayout,
                activeMainSlot,
                layoutFirstMainSlot,
                layoutSecondMainSlot,
                sideSlotOrder,
                getVisibleSideWindowCount(),
                mainOnLeft,
                dp(3));
    }

    private ImageView createMainPaneSwapControl() {
        ImageView control = new ImageView(this);
        control.setImageResource(R.drawable.main_pane_swap);
        control.setPadding(
                dp(MAIN_PANE_SWAP_ICON_HORIZONTAL_PADDING_DP),
                dp(MAIN_PANE_SWAP_ICON_VERTICAL_PADDING_DP),
                dp(MAIN_PANE_SWAP_ICON_HORIZONTAL_PADDING_DP),
                dp(MAIN_PANE_SWAP_ICON_VERTICAL_PADDING_DP));
        control.setScaleType(ImageView.ScaleType.FIT_CENTER);
        control.setContentDescription("交换两个主屏幕");
        control.setClickable(true);
        control.setFocusable(true);
        control.setElevation(dp(32));
        control.setTranslationZ(dp(32));

        GradientDrawable background = new GradientDrawable();
        background.setShape(GradientDrawable.RECTANGLE);
        background.setCornerRadius(dp(MAIN_PANE_SWAP_BUTTON_WIDTH_DP / 2f));
        background.setColor(0xe629332e);
        background.setStroke(dp(1), 0xb3ffffff);
        control.setBackground(new RippleDrawable(
                ColorStateList.valueOf(0x40ffffff), background, null));
        control.setVisibility(View.GONE);
        control.setOnClickListener(v -> swapMainPanePositions());
        return control;
    }

    private void updateMainPaneSwapControl(Rect[] targetRects) {
        if (mainPaneSwapControl == null) {
            return;
        }
        boolean visible = dualMainLayout && multiWindowMode
                && firstMainSlot >= 0 && secondMainSlot >= 0
                && firstMainSlot < targetRects.length && secondMainSlot < targetRects.length;
        if (!visible) {
            removeMainPaneSwapWindow(false);
            return;
        }

        Rect firstRect = targetRects[firstMainSlot];
        Rect secondRect = targetRects[secondMainSlot];
        Rect leftRect = firstRect.left <= secondRect.left ? firstRect : secondRect;
        Rect rightRect = leftRect == firstRect ? secondRect : firstRect;
        int centerX = (leftRect.right + rightRect.left) / 2;
        int overlapTop = Math.max(leftRect.top, rightRect.top);
        int overlapBottom = Math.min(leftRect.bottom, rightRect.bottom);
        int centerY = (overlapTop + overlapBottom) / 2;
        int buttonWidth = dp(MAIN_PANE_SWAP_BUTTON_WIDTH_DP);
        int buttonHeight = dp(MAIN_PANE_SWAP_BUTTON_HEIGHT_DP);
        int[] workspaceLocation = new int[2];
        workspace.getLocationOnScreen(workspaceLocation);
        showOrUpdateMainPaneSwapWindow(
                workspaceLocation[0] + centerX - buttonWidth / 2,
                workspaceLocation[1] + centerY - buttonHeight / 2,
                buttonWidth,
                buttonHeight);
    }

    private void showOrUpdateMainPaneSwapWindow(
            int left, int top, int width, int height) {
        if (activityDestroyed || rootContainer == null || mainPaneSwapControl == null) {
            return;
        }
        View decorView = getWindow().getDecorView();
        if (!rootContainer.isAttachedToWindow() || decorView.getWindowToken() == null) {
            rootContainer.post(() -> {
                if (!activityDestroyed) {
                    applyWindowLayout(false);
                }
            });
            return;
        }

        if (mainPaneSwapWindowLayoutParams == null) {
            mainPaneSwapWindowLayoutParams = new WindowManager.LayoutParams(
                    width,
                    height,
                    WindowManager.LayoutParams.TYPE_APPLICATION_PANEL,
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                            | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
                            | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
                    PixelFormat.TRANSLUCENT);
            mainPaneSwapWindowLayoutParams.gravity = Gravity.TOP | Gravity.START;
            mainPaneSwapWindowLayoutParams.setTitle("OneStep main pane swap");
        }
        mainPaneSwapWindowLayoutParams.token = decorView.getWindowToken();
        mainPaneSwapWindowLayoutParams.x = left;
        mainPaneSwapWindowLayoutParams.y = top;
        mainPaneSwapWindowLayoutParams.width = width;
        mainPaneSwapWindowLayoutParams.height = height;
        mainPaneSwapControl.setVisibility(View.VISIBLE);

        try {
            if (mainPaneSwapWindowAttached) {
                mainPaneSwapWindowManager.updateViewLayout(
                        mainPaneSwapControl, mainPaneSwapWindowLayoutParams);
            } else {
                mainPaneSwapWindowManager.addView(
                        mainPaneSwapControl, mainPaneSwapWindowLayoutParams);
                mainPaneSwapWindowAttached = true;
            }
        } catch (WindowManager.BadTokenException | IllegalArgumentException e) {
            mainPaneSwapWindowAttached = false;
            mainPaneSwapControl.setVisibility(View.GONE);
            Log.w(TAG, "Unable to attach main pane swap window: "
                    + e.getClass().getSimpleName());
        }
    }

    private void removeMainPaneSwapWindow(boolean immediate) {
        if (!mainPaneSwapWindowAttached || mainPaneSwapWindowManager == null
                || mainPaneSwapControl == null) {
            return;
        }
        try {
            if (immediate) {
                mainPaneSwapWindowManager.removeViewImmediate(mainPaneSwapControl);
            } else {
                mainPaneSwapWindowManager.removeView(mainPaneSwapControl);
            }
        } catch (IllegalArgumentException ignored) {
        }
        mainPaneSwapWindowAttached = false;
        mainPaneSwapControl.setVisibility(View.GONE);
    }

    private void keepMainPaneSwapControlOnTop() {
        if (mainPaneSwapWindowAttached && mainPaneSwapControl != null) {
            mainPaneSwapControl.invalidate();
        }
    }

    private void swapMainPanePositions() {
        if (!dualMainLayout || !multiWindowMode || secondMainSlot < 0
                || exitOneStepPending || isWindowAnimationRunning()) {
            return;
        }
        mainPanesSwapped = !mainPanesSwapped;
        applyWindowLayout(true, null, false);
    }

    private boolean hasLaidOutWindowFrames() {
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (!isWindowSlotEnabled(slot)) {
                continue;
            }
            OneStepWindowView windowView = windowViews[slot];
            if (windowView.getWidth() <= 0 || windowView.getHeight() <= 0) {
                return false;
            }
        }
        return true;
    }

    private void gateWindowSwitchInputForAnimation(long durationMs) {
        windowSwitchInputGateUntilUptime = SystemClock.uptimeMillis()
                + Math.max(0L, durationMs - 100L);
    }

    private boolean isWindowSwitchInputGated() {
        return SystemClock.uptimeMillis() < windowSwitchInputGateUntilUptime;
    }

    private void animateWindowFrames(Rect[] targetRects, Runnable onAnimationFinished,
                                     boolean allowSurfaceLayerAnimation) {
        gateWindowSwitchInputForAnimation(WINDOW_FRAME_SWITCH_ANIMATION_MS);
        windowAnimationController.animate(
                targetRects, onAnimationFinished,
                allowSurfaceLayerAnimation && !mainPaneSwapWindowAttached);
    }

    private void cancelWindowSurfaceAnimation() {
        if (windowAnimationController != null) {
            windowAnimationController.cancelAndReset();
        }
    }

    private boolean isWindowAnimationRunning() {
        return windowAnimationController != null && windowAnimationController.isRunning();
    }

    private void beginWindowSwitchAnimationCriticalSection() {
        mainHandler.removeCallbacks(flushDeferredWindowSwitchWorkRunnable);
        windowSwitchAnimationCritical = true;
    }

    private void scheduleDeferredWindowSwitchWorkFlush() {
        mainHandler.removeCallbacks(flushDeferredWindowSwitchWorkRunnable);
        mainHandler.postDelayed(flushDeferredWindowSwitchWorkRunnable,
                POST_ANIMATION_NON_CRITICAL_WORK_DELAY_MS);
    }

    private boolean deferWindowSwitchUiWork(int workFlags) {
        if (!windowSwitchAnimationCritical) {
            return false;
        }
        deferredWindowSwitchUiWork |= workFlags;
        return true;
    }

    private void flushDeferredWindowSwitchWork() {
        if (activityDestroyed) {
            windowSwitchAnimationCritical = false;
            deferredWindowSwitchUiWork = 0;
            return;
        }
        if (isWindowAnimationRunning()) {
            scheduleDeferredWindowSwitchWorkFlush();
            return;
        }
        windowSwitchAnimationCritical = false;
        int workFlags = deferredWindowSwitchUiWork;
        deferredWindowSwitchUiWork = 0;

        if ((workFlags & DEFERRED_MEDIA_SESSION_REFRESH) != 0) {
            refreshActiveMediaController();
        } else if ((workFlags & DEFERRED_MEDIA_UI_REFRESH) != 0) {
            updateMediaUi();
        } else if ((workFlags & DEFERRED_PLAYLIST_REFRESH) != 0) {
            updatePlaylistPanel();
        }
        if ((workFlags & DEFERRED_TOP_COMPONENT_REFRESH) != 0) {
            refreshTopStatusComponents();
        }
    }

    private void applyWindowZOrder() {
        for (int slot : sideSlotOrder) {
            if (!isWindowSlotEnabled(slot)) {
                continue;
            }
            OneStepWindowView sideView = windowViews[slot];
            sideView.setElevation(0f);
            sideView.setTranslationZ(0f);
            sideView.setZ(0f);
            sideView.bringToFront();
        }
        int otherMainSlot = getOtherMainSlot(activeMainSlot);
        if (otherMainSlot >= 0) {
            OneStepWindowView otherMainView = windowViews[otherMainSlot];
            otherMainView.setElevation(dp(4));
            otherMainView.setTranslationZ(dp(4));
            otherMainView.setZ(dp(8));
            otherMainView.bringToFront();
        }
        OneStepWindowView activeMainView = windowViews[activeMainSlot];
        activeMainView.setElevation(dp(8));
        activeMainView.setTranslationZ(dp(8));
        activeMainView.setZ(dp(16));
        activeMainView.bringToFront();
        keepMainPaneSwapControlOnTop();
        workspace.invalidate();
    }

    private int getVisibleSideWindowCount() {
        return Math.min(sideWindowCount, sideSlotOrder.size());
    }

    private int getEnabledWindowCount() {
        return (secondMainSlot >= 0 ? 2 : 1) + getVisibleSideWindowCount();
    }

    private boolean isWindowSlotEnabled(int slot) {
        if (isMainPaneSlot(slot)) {
            return true;
        }
        int sideIndex = sideSlotOrder.indexOf(slot);
        return sideIndex >= 0 && sideIndex < getVisibleSideWindowCount();
    }

    private void configureWindowPivot(View view, Rect currentRect, Rect targetRect) {
        if (targetRect.left == 0 && currentRect.left == 0) {
            view.setPivotX(0);
        } else if (targetRect.right == workspace.getWidth()
                && currentRect.right == workspace.getWidth()) {
            view.setPivotX(currentRect.width());
        } else {
            view.setPivotX(currentRect.width() / 2f);
        }

        if (targetRect.top == 0 && currentRect.top == 0) {
            view.setPivotY(0);
        } else if (targetRect.bottom == workspace.getHeight()
                && currentRect.bottom == workspace.getHeight()) {
            view.setPivotY(currentRect.height());
        } else {
            view.setPivotY(currentRect.height() / 2f);
        }
    }

    private float calculateTranslationX(View view, Rect currentRect, Rect targetRect,
                                        float targetScaleX) {
        return targetRect.left - currentRect.left
                - view.getPivotX() * (1f - targetScaleX);
    }

    private float calculateTranslationY(View view, Rect currentRect, Rect targetRect,
                                        float targetScaleY) {
        return targetRect.top - currentRect.top
                - view.getPivotY() * (1f - targetScaleY);
    }

    private Rect getWindowFrame(View view) {
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) view.getLayoutParams();
        return new Rect(lp.leftMargin, lp.topMargin,
                lp.leftMargin + Math.max(1, lp.width),
                lp.topMargin + Math.max(1, lp.height));
    }

    private void setWindowFrame(View view, Rect rect) {
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (lp == null) {
            lp = new FrameLayout.LayoutParams(rect.width(), rect.height());
        }
        if (lp.width == rect.width() && lp.height == rect.height()
                && lp.leftMargin == rect.left && lp.topMargin == rect.top) {
            return;
        }
        lp.width = rect.width();
        lp.height = rect.height();
        lp.leftMargin = rect.left;
        lp.topMargin = rect.top;
        view.setLayoutParams(lp);
    }

    private void resetWindowTransform(View view) {
        view.animate().cancel();
        view.setTranslationX(0);
        view.setTranslationY(0);
        view.setScaleX(1f);
        view.setScaleY(1f);
    }

    private int getTopChromeHeight() {
        return getStatusBarSpacingHeight() + getTopMediaAreaHeight()
                + getTopNavHeight() + getTopAppStripHeight();
    }

    private void setTopChromeVisible(boolean visible, boolean animate) {
        if (topChromeContainer == null) {
            return;
        }
        int chromeHeight = Math.max(1, getTopChromeHeight());
        topChromeContent.setPadding(0, getStatusBarSpacingHeight(), 0, 0);
        ViewGroup.LayoutParams layoutParams = topChromeContainer.getLayoutParams();
        if (layoutParams != null && layoutParams.height != chromeHeight) {
            layoutParams.height = chromeHeight;
            topChromeContainer.setLayoutParams(layoutParams);
        }
        topChromeContainer.animate().cancel();
        if (visible) {
            topChromeContainer.setVisibility(View.VISIBLE);
            if (!animate) {
                topChromeContainer.setTranslationY(0f);
                schedulePipDockBoundsUpdate();
                return;
            }
            topChromeContainer.setTranslationY(-chromeHeight);
            topChromeContainer.animate()
                    .translationY(0f)
                    .setDuration(WINDOW_FRAME_SWITCH_ANIMATION_MS)
                    .setInterpolator(new AccelerateDecelerateInterpolator())
                    .withEndAction(this::schedulePipDockBoundsUpdate)
                    .start();
            return;
        }
        if (!animate) {
            topChromeContainer.setTranslationY(-chromeHeight);
            topChromeContainer.setVisibility(View.GONE);
            return;
        }
        topChromeContainer.animate()
                .translationY(-chromeHeight)
                .setDuration(WINDOW_FRAME_SWITCH_ANIMATION_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> topChromeContainer.setVisibility(View.GONE))
                .start();
    }

    private void rebuildTopChromeContent() {
        if (topChromeContainer == null || topChromeContent == null) {
            return;
        }
        shortcutViews.clear();
        topChromeContent.removeAllViews();
        topChromeContent.setPadding(0, getStatusBarSpacingHeight(), 0, 0);
        topChromeContent.addView(createTopMediaArea(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopMediaAreaHeight()));
        topChromeContent.addView(createTopNavigationBar(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopNavHeight()));
        topChromeContent.addView(createTopAppStrip(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopAppStripHeight()));

        ViewGroup.LayoutParams rawLp = topChromeContainer.getLayoutParams();
        if (rawLp != null && rawLp.height != getTopChromeHeight()) {
            rawLp.height = getTopChromeHeight();
            topChromeContainer.setLayoutParams(rawLp);
        }
        topChromeContainer.setTranslationY(multiWindowMode ? 0f : -getTopChromeHeight());
        rebuildDesktopHomeViews();
        updateShortcutAppStatuses();
        requestRunningTaskStatusRefresh();
        applyWindowLayout(false);
        scheduleEmbeddedSlotRefresh();
    }

    private void addCornerTriggers(FrameLayout root) {
        int gestureShieldHeight = getTopGestureShieldHeight();
        statusGestureShield = new View(this);
        statusGestureShield.setBackgroundColor(Color.TRANSPARENT);
        statusGestureShield.setVisibility(View.GONE);
        root.addView(statusGestureShield, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, gestureShieldHeight,
                Gravity.TOP));

        cornerTriggerPreviewLayer = new FrameLayout(this);
        cornerTriggerPreviewLayer.setClipChildren(false);
        cornerTriggerPreviewLayer.setClipToPadding(false);
        cornerTriggerPreviewLayer.setClickable(false);
        cornerTriggerPreviewLayer.setFocusable(false);
        cornerTriggerPreviewLayer.setImportantForAccessibility(
                View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        cornerTriggerPreviewLayer.setVisibility(View.GONE);
        leftCornerTriggerPreview = createCornerTriggerPreviewMask();
        rightCornerTriggerPreview = createCornerTriggerPreviewMask();
        cornerTriggerPreviewLayer.addView(leftCornerTriggerPreview);
        cornerTriggerPreviewLayer.addView(rightCornerTriggerPreview);
        root.addView(cornerTriggerPreviewLayer, matchFrame());

        leftCornerTrigger = createCornerTrigger();
        rightCornerTrigger = createCornerTrigger();
        FrameLayout.LayoutParams leftLp = new FrameLayout.LayoutParams(getCornerTriggerSizePx(),
                getCornerTriggerSizePx(),
                Gravity.START | Gravity.TOP);
        FrameLayout.LayoutParams rightLp = new FrameLayout.LayoutParams(getCornerTriggerSizePx(),
                getCornerTriggerSizePx(),
                Gravity.END | Gravity.TOP);
        root.addView(leftCornerTrigger, leftLp);
        root.addView(rightCornerTrigger, rightLp);
        updateCornerTriggerBounds();
        updateCornerTriggers();
    }

    private int getTopGestureShieldHeight() {
        return Math.max(dp(28), getStatusBarHeight() + dp(8));
    }

    private View createCornerTrigger() {
        View trigger = new View(this);
        trigger.setBackgroundColor(Color.TRANSPARENT);
        trigger.setClickable(false);
        trigger.setFocusable(false);
        trigger.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        return trigger;
    }

    private View createCornerTriggerPreviewMask() {
        View preview = new View(this);
        preview.setBackground(makePanelBackground(0x553f8cff, 0xff2f80ff, dp(14)));
        preview.setClipToOutline(true);
        preview.setClickable(false);
        preview.setFocusable(false);
        preview.setLongClickable(false);
        preview.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        return preview;
    }

    private void updateCornerTriggerBounds() {
        int size = getCornerTriggerSizePx();
        updateCornerTriggerBounds(leftCornerTrigger, size, Gravity.START | Gravity.TOP);
        updateCornerTriggerBounds(rightCornerTrigger, size, Gravity.END | Gravity.TOP);
        updateCornerTriggerBounds(leftCornerTriggerPreview, size, Gravity.START | Gravity.TOP);
        updateCornerTriggerBounds(rightCornerTriggerPreview, size, Gravity.END | Gravity.TOP);
    }

    private void updateCornerTriggerBounds(View view, int size, int gravity) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams rawParams = view.getLayoutParams();
        FrameLayout.LayoutParams params = rawParams instanceof FrameLayout.LayoutParams
                ? (FrameLayout.LayoutParams) rawParams
                : new FrameLayout.LayoutParams(size, size, gravity);
        params.width = size;
        params.height = size;
        params.gravity = gravity;
        params.topMargin = multiWindowMode ? 0 : getStatusBarHeight();
        view.setLayoutParams(params);
    }

    private void showCornerTriggerPreview() {
        if (cornerTriggerPreviewLayer == null) {
            return;
        }
        updateCornerTriggerBounds();
        mainHandler.removeCallbacks(cornerTriggerPreviewHideRunnable);
        cornerTriggerPreviewLayer.setAlpha(1f);
        cornerTriggerPreviewLayer.setVisibility(View.VISIBLE);
        mainHandler.postDelayed(cornerTriggerPreviewHideRunnable,
                CORNER_TRIGGER_PREVIEW_HIDE_DELAY_MS);
    }

    private void hideCornerTriggerPreview() {
        if (cornerTriggerPreviewLayer == null) {
            return;
        }
        cornerTriggerPreviewLayer.setAlpha(1f);
        cornerTriggerPreviewLayer.setVisibility(View.GONE);
    }

    private void updateCornerTriggers() {
        int visibility = multiWindowMode ? View.GONE : View.VISIBLE;
        updateCornerTriggerBounds();
        if (statusGestureShield != null) {
            statusGestureShield.setVisibility(View.GONE);
        }
        if (leftCornerTrigger != null) {
            leftCornerTrigger.setVisibility(visibility);
            if (visibility == View.VISIBLE) {
                leftCornerTrigger.bringToFront();
            }
        }
        if (rightCornerTrigger != null) {
            rightCornerTrigger.setVisibility(visibility);
            if (visibility == View.VISIBLE) {
                rightCornerTrigger.bringToFront();
            }
        }
        if (rootContainer != null) {
            rootContainer.invalidate();
        }
    }

    private void enterOneStepMode(boolean sideFromLeft) {
        suppressEmbeddedStarts = false;
        mainOnLeft = !sideFromLeft;
        updateTopNavigationControls();
        multiWindowMode = false;
        applyWindowLayout(false);
        multiWindowMode = true;
        boolean refreshMainSizeForOneStep = needsMainSizeRefreshForCurrentLayout(
                "OneStep mode");
        applyStatusBarForCurrentMode();
        setTopChromeVisible(true, true);
        updateCornerTriggers();
        applyWindowLayoutWithMainSizeRefresh(refreshMainSizeForOneStep);
    }

    private void exitOneStepMode() {
        if (!multiWindowMode || exitOneStepPending) {
            return;
        }
        exitOneStepPending = true;
        requestPipUndock();
        applyStatusBarForCurrentMode();
        suspendEmbeddedStartsForFullscreen();
        workspace.postDelayed(this::completeExitOneStepMode,
                EXIT_FULLSCREEN_LAYOUT_DELAY_MS);
    }

    private void completeExitOneStepMode() {
        exitOneStepPending = false;
        if (!multiWindowMode) {
            return;
        }
        activateEdgeMainPaneForFullscreen();
        boolean refreshMainSizeForFullscreen = needsMainSizeRefresh(
                workspace == null ? 0 : workspace.getWidth(),
                workspace == null ? 0 : workspace.getHeight(),
                "fullscreen");
        multiWindowMode = false;
        applyStatusBarForCurrentMode();
        setTopChromeVisible(false, true);
        updateCornerTriggers();
        applyWindowLayoutWithMainSizeRefresh(refreshMainSizeForFullscreen);
    }

    private boolean needsMainSizeRefreshForCurrentLayout(String targetMode) {
        if (workspace == null || workspace.getWidth() <= 0 || workspace.getHeight() <= 0
                || activeMainSlot < 0 || activeMainSlot >= windowViews.length) {
            return false;
        }
        Rect[] targetRects = calculateWindowRects();
        Rect mainRect = targetRects[activeMainSlot];
        return mainRect != null && needsMainSizeRefresh(
                mainRect.width(), mainRect.height(), targetMode);
    }

    private boolean needsMainSizeRefresh(int targetWidth, int targetHeight, String targetMode) {
        if (targetWidth <= 0 || targetHeight <= 0
                || activeMainSlot < 0 || activeMainSlot >= embeddedHosts.length) {
            return false;
        }
        EmbeddedAppHost host = embeddedHosts[activeMainSlot];
        if (!(host instanceof RootVirtualDisplayHost)) {
            return false;
        }
        boolean needsRefresh = ((RootVirtualDisplayHost) host).needsSizeRefreshForTargetAspect(
                targetWidth, targetHeight);
        if (needsRefresh) {
            Log.i(TAG, "Refresh main virtual display for " + targetMode + " aspect: slot="
                    + activeMainSlot + ", target=" + targetWidth + "x" + targetHeight);
        }
        return needsRefresh;
    }

    private void applyWindowLayoutWithMainSizeRefresh(boolean refreshMainSize) {
        if (!refreshMainSize) {
            applyWindowLayout(true);
            return;
        }
        applyWindowLayout(true, () -> {
            refreshAllEmbeddedSlotLayouts();
            refreshMainSizeAfterLayout();
        });
    }

    private void refreshMainSizeAfterLayout() {
        if (activeMainSlot < 0 || activeMainSlot >= embeddedHosts.length
                || embeddedSlotClosing[activeMainSlot]) {
            return;
        }
        EmbeddedAppHost host = embeddedHosts[activeMainSlot];
        if (host != null) {
            host.refreshContainerSize(true);
        }
    }

    private View createTopMediaArea() {
        return topPanelController.createView();
    }

    private float getPipAspectRatio() {
        return topPanelController.getPipAspectRatio();
    }

    private boolean shouldShowTopComponentArea() {
        return topPanelController.shouldShowTopComponentArea();
    }

    private View createTopNavigationBar() {
        FrameLayout navRoot = new FrameLayout(this);
        navRoot.setBackgroundColor(Color.TRANSPARENT);

        topNavLeftControls = new LinearLayout(this);
        topNavLeftControls.setGravity(Gravity.START | Gravity.CENTER_VERTICAL);
        topNavLeftControls.setPadding(dp(16), 0, 0, 0);
        FrameLayout.LayoutParams leftLp = new FrameLayout.LayoutParams(
                dp(122), ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.START | Gravity.CENTER_VERTICAL);
        navRoot.addView(topNavLeftControls, leftLp);

        topNavPageLeftControl = createTopNavImageControl(
                R.drawable.top_nav_page_left, "应用列表向左");
        topNavPageLeftControl.setOnClickListener(v -> scrollTopAppStripPage(1));
        topNavPageRightControl = createTopNavImageControl(
                R.drawable.top_nav_page_right, "应用列表向右");
        topNavPageRightControl.setOnClickListener(v -> scrollTopAppStripPage(-1));
        topNavSettingsControl = createTopNavImageControl(
                R.drawable.top_nav_settings, "设置");
        topNavSettingsControl.setOnClickListener(v -> showInternalSettingsPage());
        topNavExpandLeftControl = createTopNavImageControl(
                R.drawable.top_nav_expand_left, "展开");
        topNavExpandLeftControl.setOnClickListener(v -> exitOneStepMode());
        topNavExpandRightControl = createTopNavImageControl(
                R.drawable.top_nav_expand_right, "展开");
        topNavExpandRightControl.setOnClickListener(v -> exitOneStepMode());

        TextView title = new TextView(this);
        title.setText("Van Step");
        title.setGravity(Gravity.CENTER);
        title.setSingleLine(true);
        title.setEllipsize(TextUtils.TruncateAt.END);
        title.setTextColor(0x86ffffff);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setShadowLayer(dp(1), 0, dp(1), 0x26000000);
        setDpTextSize(title, 20);
        FrameLayout.LayoutParams titleLp = new FrameLayout.LayoutParams(
                dp(172), ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER);
        navRoot.addView(title, titleLp);

        topNavRightControls = new LinearLayout(this);
        topNavRightControls.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        topNavRightControls.setPadding(0, 0, dp(16), 0);
        FrameLayout.LayoutParams rightLp = new FrameLayout.LayoutParams(
                dp(122), ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.END | Gravity.CENTER_VERTICAL);
        navRoot.addView(topNavRightControls, rightLp);
        updateTopNavigationControls();

        View topLine = new View(this);
        topLine.setBackgroundColor(0x18715f53);
        FrameLayout.LayoutParams topLineLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(1), Gravity.TOP);
        navRoot.addView(topLine, topLineLp);

        View bottomLine = new View(this);
        bottomLine.setBackgroundColor(0x18715f53);
        FrameLayout.LayoutParams bottomLineLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(1), Gravity.BOTTOM);
        navRoot.addView(bottomLine, bottomLineLp);
        return navRoot;
    }

    private ImageView createTopNavImageControl(int drawableResId, String description) {
        ImageView control = new ImageView(this);
        LayerDrawable icon = new LayerDrawable(new Drawable[]{getDrawable(drawableResId)});
        icon.setLayerSize(0, dp(TOP_NAV_ICON_SIZE_DP), dp(TOP_NAV_ICON_SIZE_DP));
        icon.setLayerGravity(0, Gravity.CENTER);
        control.setImageDrawable(icon);
        control.setScaleType(ImageView.ScaleType.CENTER);
        control.setPadding(0, 0, 0, 0);
        control.setImageAlpha(217);
        control.setContentDescription(description);
        control.setClickable(true);
        control.setFocusable(true);
        return control;
    }

    private void updateTopNavigationControls() {
        if (topNavLeftControls == null || topNavRightControls == null
                || topNavPageLeftControl == null || topNavPageRightControl == null
                || topNavSettingsControl == null || topNavExpandLeftControl == null
                || topNavExpandRightControl == null) {
            return;
        }
        topNavLeftControls.removeAllViews();
        topNavRightControls.removeAllViews();
        if (verticalWindowLayout || mainOnLeft) {
            addTopNavControl(topNavLeftControls, topNavPageLeftControl);
            addTopNavControl(topNavLeftControls, topNavPageRightControl);
            addTopNavControl(topNavRightControls, topNavSettingsControl);
            addTopNavControl(topNavRightControls, topNavExpandRightControl);
            return;
        }
        addTopNavControl(topNavLeftControls, topNavExpandLeftControl);
        addTopNavControl(topNavLeftControls, topNavSettingsControl);
        addTopNavControl(topNavRightControls, topNavPageLeftControl);
        addTopNavControl(topNavRightControls, topNavPageRightControl);
    }

    private void addTopNavControl(LinearLayout container, View control) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(
                dp(TOP_NAV_BUTTON_SIZE_DP), dp(TOP_NAV_BUTTON_SIZE_DP));
        if (container.getChildCount() > 0) {
            layoutParams.leftMargin = dp(TOP_NAV_BUTTON_SPACING_DP);
        }
        container.addView(control, layoutParams);
    }

    private TextView createTopNavControl(String symbol, float sizeDp, String description) {
        TextView control = new TextView(this);
        control.setText(symbol);
        control.setGravity(Gravity.CENTER);
        control.setTextColor(0xd9ffffff);
        control.setTypeface(Typeface.DEFAULT_BOLD);
        control.setContentDescription(description);
        control.setShadowLayer(dp(1), 0, dp(1), 0x33000000);
        setDpTextSize(control, sizeDp);
        return control;
    }

    private void scrollTopAppStripPage(int visualDirection) {
        HorizontalScrollView scrollView = topAppStripScrollView;
        if (scrollView == null || scrollView.getChildCount() == 0 || scrollView.getWidth() <= 0) {
            return;
        }
        int pageWidth = Math.max(1, scrollView.getWidth());
        int childWidth = scrollView.getChildAt(0).getWidth();
        int maxScrollX = Math.max(0, childWidth - scrollView.getWidth());
        int targetScrollX = scrollView.getScrollX() + visualDirection * pageWidth;
        targetScrollX = Math.max(0, Math.min(maxScrollX, targetScrollX));
        scrollView.smoothScrollTo(targetScrollX, 0);
    }

    private void initMediaMonitoring() {
        topPanelController.startMediaMonitoring();
    }

    private void initAmapNavigationMonitoring() {
        topPanelController.startNavigationMonitoring();
    }

    private void resumeMediaMonitoring() {
        topPanelController.resume();
    }

    private void pauseMediaMonitoring() {
        if (topPanelController != null) {
            topPanelController.pause();
        }
    }

    private void refreshTopStatusComponents() {
        topPanelController.refreshTopStatusComponents();
    }

    private void initializeEmbeddedBridgeState() {
        embeddedStartEpochStore = new EmbeddedStartEpochStore(this);
        embeddedStartEpoch = embeddedStartEpochStore.beginSession();
    }

    private void refreshActiveMediaController() {
        topPanelController.refreshActiveMediaController();
    }

    private void updateMediaUi() {
        topPanelController.updateMediaUi();
    }

    private boolean hidePlaylistPanel() {
        return topPanelController.hidePlaylistPanel();
    }

    private void updatePlaylistPanel() {
        topPanelController.updatePlaylistPanel();
    }

    private View createTopAppStrip() {
        FrameLayout stripRoot = new FrameLayout(this);
        topAppStripRoot = stripRoot;
        stripRoot.setBackgroundColor(Color.TRANSPARENT);
        stripRoot.setClipChildren(true);
        stripRoot.setClipToPadding(true);

        HorizontalScrollView scrollView = new HorizontalScrollView(this);
        topAppStripScrollView = scrollView;
        scrollView.setHorizontalScrollBarEnabled(false);
        scrollView.setOverScrollMode(View.OVER_SCROLL_NEVER);
        stripRoot.addView(scrollView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopAppStripHeight(), Gravity.TOP));

        LinearLayout row = new LinearLayout(this);
        topAppStripRow = row;
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(getTopAppStripSidePaddingDp()), dp(getTopAppStripVerticalPaddingDp()),
                dp(getTopAppStripSidePaddingDp()), dp(getTopAppStripVerticalPaddingDp()));
        scrollView.addView(row, new HorizontalScrollView.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        for (LauncherApp app : getPrioritizedTopAppStripApps()) {
            int iconSizeDp = getTopAppIconSizeDp();
            AppShortcutView shortcut = new AppShortcutView(this, false, iconSizeDp, 0);
            shortcut.setStatusIndicatorEnabled(true);
            shortcut.bind(app);
            shortcut.setTag(app);
            shortcut.setOnClickListener(v -> addOrFocusApp(app));
            installPressDragGesture(shortcut, app);
            int cellWidthDp = getTopAppStripCellWidthDp(iconSizeDp);
            LinearLayout.LayoutParams shortcutLp = new LinearLayout.LayoutParams(dp(cellWidthDp),
                    ViewGroup.LayoutParams.MATCH_PARENT);
            row.addView(shortcut, shortcutLp);
            shortcutViews.add(shortcut);
        }

        imageDragShareTargetScrollView = createImageDragShareTargetStrip();
        imageDragShareTargetScrollView.setVisibility(View.INVISIBLE);
        imageDragShareTargetScrollView.setTranslationY(-getTopAppStripHeight());
        stripRoot.addView(imageDragShareTargetScrollView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, getTopAppStripHeight(), Gravity.TOP));
        imageDragShareTargetsVisible = false;
        imageDragShareAnimationGeneration++;
        registerHyperDragDropBridge();

        View bottomLine = new View(this);
        bottomLine.setBackgroundColor(Color.BLACK);
        FrameLayout.LayoutParams lineLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(2), Gravity.BOTTOM);
        stripRoot.addView(bottomLine, lineLp);
        return stripRoot;
    }

    private List<LauncherApp> getPrioritizedTopAppStripApps() {
        Set<String> visibleKeys = getVisibleWindowAppInstanceKeys();
        List<String> configuredOrder = new ArrayList<>(topAppStripApps.size());
        Map<String, LauncherApp> appsByKey = new HashMap<>();
        for (LauncherApp app : topAppStripApps) {
            String key = app.instanceKey();
            configuredOrder.add(key);
            appsByKey.put(key, app);
        }
        List<String> displayOrder = TopAppListPolicy.prioritizeVisible(
                configuredOrder, visibleKeys);
        List<LauncherApp> result = new ArrayList<>(displayOrder.size());
        for (String key : displayOrder) {
            LauncherApp app = appsByKey.get(key);
            if (app != null) {
                result.add(app);
            }
        }
        return result;
    }

    private Set<String> getVisibleWindowAppInstanceKeys() {
        Set<String> visibleKeys = new LinkedHashSet<>();
        for (LauncherApp app : windowApps) {
            if (app != null) {
                visibleKeys.add(app.instanceKey());
            }
        }
        return visibleKeys;
    }

    private void updateTopAppStripOrder() {
        LinearLayout row = topAppStripRow;
        if (row == null) {
            return;
        }
        Set<String> visibleKeys = getVisibleWindowAppInstanceKeys();
        List<String> configuredOrder = new ArrayList<>(topAppStripApps.size());
        for (LauncherApp app : topAppStripApps) {
            configuredOrder.add(app.instanceKey());
        }
        
        List<String> baseOrder = orderTopAppKeysForStrip(configuredOrder);
        List<String> visibleOrder = new ArrayList<>();
        List<String> pinnedOrder = new ArrayList<>();
        List<String> restOrder = new ArrayList<>();
        for (String key : baseOrder) {
            if (visibleKeys.contains(key)) {
                visibleOrder.add(key);
            } else if (topAppPinnedInstanceKeys.contains(key)) {
                pinnedOrder.add(key);
            } else {
                restOrder.add(key);
            }
        }
        List<String> desiredOrder = new ArrayList<>(visibleOrder);
        desiredOrder.addAll(pinnedOrder);
        desiredOrder.addAll(restOrder);
        Map<String, View> viewsByKey = new HashMap<>();
        List<String> currentOrder = new ArrayList<>(row.getChildCount());
        for (int index = 0; index < row.getChildCount(); index++) {
            View child = row.getChildAt(index);
            if (!(child instanceof AppShortcutView)) {
                continue;
            }
            String key = ((AppShortcutView) child).getInstanceKeyValue();
            currentOrder.add(key);
            viewsByKey.put(key, child);
        }
        if (currentOrder.equals(desiredOrder)) {
            return;
        }

        Map<String, Float> visualLeftByKey = new HashMap<>();
        for (Map.Entry<String, View> entry : viewsByKey.entrySet()) {
            View child = entry.getValue();
            child.animate().cancel();
            visualLeftByKey.put(entry.getKey(), child.getLeft() + child.getTranslationX());
            child.setTranslationX(0f);
        }
        HorizontalScrollView scrollView = topAppStripScrollView;
        int preservedScrollX = scrollView == null ? 0 : scrollView.getScrollX();
        int preservedScrollY = scrollView == null ? 0 : scrollView.getScrollY();
        boolean animate = row.isLaidOut() && row.getWidth() > 0 && row.isShown();
        row.removeAllViews();
        for (String key : desiredOrder) {
            View child = viewsByKey.get(key);
            if (child != null) {
                row.addView(child);
            }
        }
        int animationGeneration = ++topAppStripOrderAnimationGeneration;
        if (!animate) {
            if (scrollView != null) {
                scrollView.scrollTo(preservedScrollX, preservedScrollY);
            }
            return;
        }

        ViewTreeObserver.OnPreDrawListener listener = new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                ViewTreeObserver observer = row.getViewTreeObserver();
                if (observer.isAlive()) {
                    observer.removeOnPreDrawListener(this);
                }
                if (animationGeneration != topAppStripOrderAnimationGeneration
                        || row != topAppStripRow) {
                    return true;
                }
                if (scrollView != null) {
                    scrollView.scrollTo(preservedScrollX, preservedScrollY);
                }
                for (int index = 0; index < row.getChildCount(); index++) {
                    View child = row.getChildAt(index);
                    if (!(child instanceof AppShortcutView)) {
                        continue;
                    }
                    String key = ((AppShortcutView) child).getInstanceKeyValue();
                    Float previousVisualLeft = visualLeftByKey.get(key);
                    if (previousVisualLeft == null) {
                        continue;
                    }
                    float startTranslation = previousVisualLeft - child.getLeft();
                    if (Math.abs(startTranslation) < 0.5f) {
                        child.setTranslationX(0f);
                        continue;
                    }
                    child.setTranslationX(startTranslation);
                    child.animate()
                            .translationX(0f)
                            .setDuration(TOP_APP_REORDER_ANIMATION_MS)
                            .setInterpolator(new AccelerateDecelerateInterpolator())
                            .start();
                }
                return true;
            }
        };
        row.getViewTreeObserver().addOnPreDrawListener(listener);
        row.requestLayout();
    }

    private HorizontalScrollView createImageDragShareTargetStrip() {
        HorizontalScrollView scrollView = new HorizontalScrollView(this);
        scrollView.setHorizontalScrollBarEnabled(false);
        scrollView.setOverScrollMode(View.OVER_SCROLL_NEVER);

        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(getTopAppStripSidePaddingDp()),
                dp(getTopAppStripVerticalPaddingDp()),
                dp(getTopAppStripSidePaddingDp()),
                dp(getTopAppStripVerticalPaddingDp()));
        row.setBackgroundColor(Color.TRANSPARENT);
        imageDragShareTargetRow = row;
        scrollView.addView(row, new HorizontalScrollView.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        int iconSizeDp = getTopAppIconSizeDp();
        int cellWidthDp = getTopAppStripCellWidthDp(iconSizeDp);
        
        hyperDragBuiltInViews.clear();
        for (int index = 0; index < HYPERDRAG_BUILTIN_COUNT; index++) {
            AppShortcutView shortcut = new AppShortcutView(
                    this, false, iconSizeDp, 0);
            shortcut.setStatusIndicatorEnabled(false);
            shortcut.setFocusable(false);
            shortcut.setClickable(false);
            shortcut.setVisibility(View.GONE);
            row.addView(shortcut, index, new LinearLayout.LayoutParams(
                    dp(cellWidthDp),
                    ViewGroup.LayoutParams.MATCH_PARENT));
            hyperDragBuiltInViews.add(shortcut);
        }
        imageDragShareEntries = buildImageDragShareEntries();
        imageDragShareTargetViews = new View[imageDragShareEntries.size()];
        imageDragShareTargetEnabled = new boolean[imageDragShareEntries.size()];
        for (int index = 0; index < imageDragShareEntries.size(); index++) {
            ImageDragShareEntry entry = imageDragShareEntries.get(index);
            ImageDragShareTarget target = entry.target;
            AppShortcutView shortcut = new AppShortcutView(
                    this, false, iconSizeDp, 0);
            shortcut.setStatusIndicatorEnabled(false);
            Drawable icon = getDrawable(imageDragShareTargetDrawable(target));
            if (entry.app != null && !entry.app.isCurrentUser()
                    && launcherAppRepository != null) {
                icon = launcherAppRepository.addCloneBadge(icon);
            }
            shortcut.bindIcon(icon,
                    imageDragShareTargetDescription(target));
            shortcut.setFocusable(false);
            shortcut.setClickable(false);
            row.addView(shortcut, new LinearLayout.LayoutParams(
                    dp(cellWidthDp),
                    ViewGroup.LayoutParams.MATCH_PARENT));
            imageDragShareTargetViews[index] = shortcut;
            imageDragShareTargetEnabled[index] = false;
        }
        
        imageDragNativeTargetViews.clear();
        for (int index = 0; index < NATIVE_SHARE_TARGET_POOL; index++) {
            AppShortcutView shortcut = new AppShortcutView(
                    this, false, iconSizeDp, 0);
            shortcut.setStatusIndicatorEnabled(false);
            shortcut.setFocusable(false);
            shortcut.setClickable(false);
            shortcut.setVisibility(View.GONE);
            row.addView(shortcut, new LinearLayout.LayoutParams(
                    dp(cellWidthDp),
                    ViewGroup.LayoutParams.MATCH_PARENT));
            imageDragNativeTargetViews.add(shortcut);
        }
        return scrollView;
    }

    private List<ImageDragShareEntry> buildImageDragShareEntries() {
        List<ImageDragShareEntry> entries = new ArrayList<>();
        for (ImageDragShareTarget target : ImageDragShareTarget.values()) {
            if (!target.usesAppInstance()) {
                if (isImageDragSharePackageInstalled(target.packageName())) {
                    entries.add(new ImageDragShareEntry(target, null));
                }
                continue;
            }
            List<LauncherApp> instances = imageDragShareInstances(target.packageName());
            for (LauncherApp app : instances) {
                entries.add(new ImageDragShareEntry(target, app));
            }
        }
        return applyShareTargetLayout(entries);
    }

    private static String shareTargetEntryKey(ImageDragShareEntry entry) {
        return entry.target.name() + ":"
                + (entry.app == null ? 0 : entry.app.userId());
    }

    private List<ImageDragShareEntry> applyShareTargetLayout(
            List<ImageDragShareEntry> entries) {
        List<String> savedOrder = settingsStore.loadShareTargetOrder();
        Set<String> pinned = settingsStore.loadShareTargetPinnedKeys();
        if (savedOrder.isEmpty() && pinned.isEmpty()) {
            return entries;
        }
        Map<String, ImageDragShareEntry> byKey = new LinkedHashMap<>();
        for (ImageDragShareEntry entry : entries) {
            byKey.putIfAbsent(shareTargetEntryKey(entry), entry);
        }
        Set<String> used = new HashSet<>();
        List<ImageDragShareEntry> pinnedEntries = new ArrayList<>();
        List<ImageDragShareEntry> unpinnedEntries = new ArrayList<>();
        for (String key : savedOrder) {
            ImageDragShareEntry entry = byKey.get(key);
            if (entry == null || !used.add(key)) {
                continue;
            }
            if (pinned.contains(key)) {
                pinnedEntries.add(entry);
            } else {
                unpinnedEntries.add(entry);
            }
        }
        List<ImageDragShareEntry> result = new ArrayList<>(entries.size());
        result.addAll(pinnedEntries);
        result.addAll(unpinnedEntries);
        for (ImageDragShareEntry entry : entries) {
            if (used.add(shareTargetEntryKey(entry))) {
                result.add(entry);
            }
        }
        return result;
    }

    private void saveShareTargetLayout(List<String> order, Set<String> pinnedKeys) {
        settingsStore.saveShareTargetOrder(order);
        settingsStore.saveShareTargetPinnedKeys(pinnedKeys);
        imageDragShareEntries = applyShareTargetLayout(buildImageDragShareEntries());
        rebuildImageDragShareTargetViews();
    }

    private void rebuildImageDragShareTargetViews() {
        LinearLayout row = imageDragShareTargetRow;
        HorizontalScrollView scrollView = imageDragShareTargetScrollView;
        if (row == null || scrollView == null) {
            return;
        }
        int iconSizeDp = getTopAppIconSizeDp();
        int cellWidthDp = getTopAppStripCellWidthDp(iconSizeDp);
        Set<View> keep = new HashSet<>(hyperDragBuiltInViews);
        List<View> nativeViews = new ArrayList<>(imageDragNativeTargetViews);
        keep.addAll(nativeViews);
        for (int index = row.getChildCount() - 1; index >= 0; index--) {
            View child = row.getChildAt(index);
            if (!keep.contains(child)) {
                row.removeView(child);
            }
        }
        int firstNativeIndex = row.indexOfChild(nativeViews.isEmpty()
                ? null : nativeViews.get(0));
        imageDragShareTargetViews = new View[imageDragShareEntries.size()];
        imageDragShareTargetEnabled = new boolean[imageDragShareEntries.size()];
        int insertIndex = firstNativeIndex < 0 ? row.getChildCount() : firstNativeIndex;
        for (int index = 0; index < imageDragShareEntries.size(); index++) {
            ImageDragShareEntry entry = imageDragShareEntries.get(index);
            ImageDragShareTarget target = entry.target;
            AppShortcutView shortcut = new AppShortcutView(
                    this, false, iconSizeDp, 0);
            shortcut.setStatusIndicatorEnabled(false);
            Drawable icon = getDrawable(imageDragShareTargetDrawable(target));
            if (entry.app != null && !entry.app.isCurrentUser()
                    && launcherAppRepository != null) {
                icon = launcherAppRepository.addCloneBadge(icon);
            }
            shortcut.bindIcon(icon, imageDragShareTargetDescription(target));
            shortcut.setFocusable(false);
            shortcut.setClickable(false);
            row.addView(shortcut, insertIndex + index, new LinearLayout.LayoutParams(
                    dp(cellWidthDp),
                    ViewGroup.LayoutParams.MATCH_PARENT));
            imageDragShareTargetViews[index] = shortcut;
            imageDragShareTargetEnabled[index] = false;
        }
    }

    private List<SettingsPanelController.ShareTargetEntry> loadShareTargetEntries() {
        List<SettingsPanelController.ShareTargetEntry> result = new ArrayList<>();
        Set<String> pinned = settingsStore.loadShareTargetPinnedKeys();
        for (ImageDragShareEntry entry : imageDragShareEntries) {
            String key = shareTargetEntryKey(entry);
            String label = imageDragShareTargetDescription(entry.target);
            if (entry.app != null && !entry.app.isCurrentUser()) {
                label = label + "（分身）";
            }
            Drawable icon = getDrawable(imageDragShareTargetDrawable(entry.target));
            if (entry.app != null && !entry.app.isCurrentUser()
                    && launcherAppRepository != null) {
                icon = launcherAppRepository.addCloneBadge(icon);
            }
            boolean available = resolveImageDragShareActivity(
                    entry.target, "image/*") != null;
            result.add(new SettingsPanelController.ShareTargetEntry(
                    key, label, icon, pinned.contains(key), available));
        }
        
        for (String mime : new String[]{"image/*", "text/plain"}) {
            for (NativeShareTarget target : queryNativeShareTargets(mime)) {
                String key = "native:" + target.packageName;
                boolean seen = false;
                for (SettingsPanelController.ShareTargetEntry added : result) {
                    if (added.key.equals(key)) {
                        seen = true;
                        break;
                    }
                }
                if (seen) {
                    continue;
                }
                result.add(new SettingsPanelController.ShareTargetEntry(
                        key,
                        target.label == null ? target.packageName : target.label.toString(),
                        target.icon,
                        pinned.contains(key),
                        true));
            }
        }
        return result;
    }

    private boolean isImageDragSharePackageInstalled(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        try {
            getPackageManager().getApplicationInfo(
                    packageName, PackageManager.MATCH_DISABLED_COMPONENTS);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (RuntimeException e) {
            return false;
        }
    }

    private List<LauncherApp> imageDragShareInstances(String packageName) {
        List<LauncherApp> candidates = new ArrayList<>();
        if (launcherAppRepository != null) {
            try {
                candidates.addAll(launcherAppRepository.loadLauncherAppsForPackage(packageName));
            } catch (RuntimeException e) {
                Log.w(TAG, "Cannot enumerate share target instances: " + packageName, e);
            }
        }
        if (candidates.isEmpty()) {
            LauncherApp current = createLauncherAppForPackage(packageName);
            if (current != null) {
                candidates.add(current);
            }
        }
        List<LauncherApp> result = new ArrayList<>();
        Set<String> seen = new HashSet<>();
        for (LauncherApp candidate : candidates) {
            if (candidate != null && seen.add(String.valueOf(candidate.userId()))) {
                result.add(candidate);
            }
        }
        result.sort((left, right) -> {
            if (left.isCurrentUser() != right.isCurrentUser()) {
                return left.isCurrentUser() ? -1 : 1;
            }
            return Integer.compare(left.userId(), right.userId());
        });
        return result;
    }

    private int imageDragShareTargetDrawable(ImageDragShareTarget target) {
        switch (target) {
            case WECHAT_TIMELINE:
                return R.drawable.drag_share_wechat_timeline;
            case WECHAT_FAVORITE:
                return R.drawable.drag_share_wechat_favorite;
            case QQ_FAVORITE:
                return R.drawable.drag_share_qq_favorite;
            case QQ_COMPUTER:
                return R.drawable.drag_share_qq_computer;
            case BLUETOOTH:
                return R.drawable.drag_share_bluetooth;
            case PRINT:
                return R.drawable.drag_share_print;
            case ALIPAY:
                return R.drawable.drag_share_alipay;
            case DOUYIN:
                return R.drawable.drag_share_douyin;
            case JD:
                return R.drawable.drag_share_jd;
            case EMAIL:
                return R.drawable.drag_share_email;
            case NOTES:
                return R.drawable.drag_share_notes;
            case SCANNER:
            default:
                return R.drawable.drag_share_scanner;
        }
    }

    private String imageDragShareTargetDescription(ImageDragShareTarget target) {
        switch (target) {
            case WECHAT_TIMELINE:
                return "分享到朋友圈";
            case WECHAT_FAVORITE:
                return "添加到微信收藏";
            case QQ_FAVORITE:
                return "保存到QQ收藏";
            case QQ_COMPUTER:
                return "发送到QQ我的电脑";
            case BLUETOOTH:
                return "蓝牙发送";
            case PRINT:
                return "打印";
            case ALIPAY:
                return "支付宝";
            case DOUYIN:
                return "抖音";
            case JD:
                return "京东";
            case EMAIL:
                return "电子邮件";
            case NOTES:
                return "笔记";
            case SCANNER:
            default:
                return "扫一扫";
        }
    }

    private void showImageDragShareTargets(String mimeType) {
        if (topAppStripRoot == null || topAppStripScrollView == null
                || imageDragShareTargetScrollView == null) {
            return;
        }
        String resolvedMime = TextUtils.isEmpty(mimeType) ? "image/*" : mimeType;
        Set<String> pinnedShareKeys = settingsStore.loadShareTargetPinnedKeys();
        for (int index = 0; index < imageDragShareEntries.size(); index++) {
            ImageDragShareEntry entry = imageDragShareEntries.get(index);
            boolean enabled = resolveImageDragShareActivity(
                    entry.target, resolvedMime) != null
                    && (!entry.target.usesAppInstance()
                    || entry.app != null);
            imageDragShareTargetEnabled[index] = enabled;
            View targetView = imageDragShareTargetViews[index];
            if (targetView != null) {
                targetView.setVisibility(enabled ? View.VISIBLE : View.GONE);
                if (targetView instanceof AppShortcutView) {
                    ((AppShortcutView) targetView).setPinned(
                            pinnedShareKeys.contains(shareTargetEntryKey(entry)));
                }
            }
        }
        setHoveredImageDragShareTarget(-1);

        int stripHeight = getTopAppStripHeight();
        ++imageDragShareAnimationGeneration;
        imageDragShareTargetsVisible = true;
        imageDragShareTargetScrollView.animate().cancel();
        topAppStripScrollView.animate().cancel();
        imageDragShareTargetScrollView.setVisibility(View.VISIBLE);
        imageDragShareTargetScrollView.setTranslationY(-stripHeight);
        topAppStripScrollView.setTranslationY(0f);
        imageDragShareTargetScrollView.animate()
                .translationY(0f)
                .setDuration(IMAGE_DRAG_SHARE_ANIMATION_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .start();
        topAppStripScrollView.animate()
                .translationY(stripHeight)
                .setDuration(IMAGE_DRAG_SHARE_ANIMATION_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .start();
    }

    private void hideImageDragShareTargets() {
        if (topAppStripScrollView == null || imageDragShareTargetScrollView == null) {
            return;
        }
        int stripHeight = getTopAppStripHeight();
        int generation = ++imageDragShareAnimationGeneration;
        boolean animate = imageDragShareTargetsVisible;
        imageDragShareTargetsVisible = false;
        setHoveredImageDragShareTarget(-1);
        imageDragShareTargetScrollView.animate().cancel();
        topAppStripScrollView.animate().cancel();
        if (!animate) {
            imageDragShareTargetScrollView.setTranslationY(-stripHeight);
            imageDragShareTargetScrollView.setVisibility(View.INVISIBLE);
            topAppStripScrollView.setTranslationY(0f);
            return;
        }
        imageDragShareTargetScrollView.animate()
                .translationY(-stripHeight)
                .setDuration(IMAGE_DRAG_SHARE_ANIMATION_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> {
                    if (generation == imageDragShareAnimationGeneration
                            && !imageDragShareTargetsVisible) {
                        imageDragShareTargetScrollView.setVisibility(View.INVISIBLE);
                    }
                })
                .start();
        topAppStripScrollView.animate()
                .translationY(0f)
                .setDuration(IMAGE_DRAG_SHARE_ANIMATION_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .start();
        mainHandler.postDelayed(() -> finishHidingImageDragShareTargets(generation),
                IMAGE_DRAG_SHARE_ANIMATION_MS + 32L);
    }

    private void finishHidingImageDragShareTargets(int generation) {
        if (generation != imageDragShareAnimationGeneration
                || imageDragShareTargetsVisible
                || imageDragShareTargetScrollView == null
                || topAppStripScrollView == null) {
            return;
        }
        imageDragShareTargetScrollView.setVisibility(View.INVISIBLE);
        imageDragShareTargetScrollView.setTranslationY(-getTopAppStripHeight());
        topAppStripScrollView.setTranslationY(0f);
    }

    

    private void registerHyperDragDropBridge() {
        if (hyperDragDropHost != null) {
            return;
        }
        hyperDragDropHost = new HyperDragDropBridge.Host() {
            @Override
            public boolean isWorkspacePoint(float x, float y) {
                return VirtualDisplayRegionRegistry.regionAt(x, y) != null;
            }

            @Override
            public void onHyperDragStarted(String mimeType, boolean image,
                    boolean textDirectToSlot) {
                startHyperDragDropSession(mimeType, image, textDirectToSlot);
            }

            @Override
            public void onHyperDragMoved(float x, float y) {
                updateHyperDragDropHover(x, y);
            }

            @Override
            public void onHyperDragEnded() {
                endHyperDragDropSession();
            }

            @Override
            public HyperDragDropBridge.Outcome onHyperDragDropped(float x, float y,
                    String text, Uri stagedImageUri, File stagedImageFile,
                    String imageMime, boolean textDirectToSlot) {
                return dispatchHyperDragDrop(x, y, text, stagedImageUri,
                        stagedImageFile, imageMime, textDirectToSlot);
            }
        };
        HyperDragDropBridge.register(hyperDragDropHost);
    }

    private void startHyperDragDropSession(String mimeType, boolean image,
            boolean textDirectToSlot) {
        if (activityDestroyed || imageDragShareTargetScrollView == null) {
            return;
        }
        hyperDragDropSessionActive = true;
        hyperDragDropImage = image;
        hyperDragTextDirectToSlot = textDirectToSlot;
        hyperDragDropMime = image
                ? (TextUtils.isEmpty(mimeType) ? "image/png" : mimeType)
                : "text/plain";
        applyHyperDragBuiltInTargets(image);
        showImageDragShareTargets(hyperDragDropMime);
        fillNativeShareTargetPool(hyperDragDropMime);
    }

    private void applyHyperDragBuiltInTargets(boolean image) {
        String[] labels = image
                ? new String[]{"保存到本地", "复制图片"}
                : new String[]{"文本分词", "复制文本"};
        int[] icons = image
                ? new int[]{R.drawable.ic_download, R.drawable.ic_copy}
                : new int[]{R.drawable.ic_text_segment, R.drawable.ic_copy};
        for (int index = 0; index < hyperDragBuiltInViews.size(); index++) {
            AppShortcutView view = hyperDragBuiltInViews.get(index);
            if (index >= labels.length) {
                view.setVisibility(View.GONE);
                continue;
            }
            hyperDragBuiltInLabels[index] = labels[index];
            view.bindIcon(getDrawable(icons[index]), labels[index]);
            view.setVisibility(View.VISIBLE);
            view.setAlpha(1f);
            view.setScaleX(1f);
            view.setScaleY(1f);
        }
        hoveredHyperDragBuiltInIndex = -1;
    }

    private void updateHyperDragDropHover(float rawX, float rawY) {
        if (!hyperDragDropSessionActive || activityDestroyed) {
            return;
        }
        int builtin = findHyperDragBuiltInTarget(rawX, rawY);
        if (builtin >= 0) {
            
            
            setHoveredImageDragShareTarget(-1);
            setHoveredNativeShareTarget(-1);
            setHyperDragDropHoveredSlot(-1);
            setHoveredHyperDragBuiltIn(builtin);
            return;
        }
        setHoveredHyperDragBuiltIn(-1);
        int special = findImageDragShareTarget(rawX, rawY);
        setHoveredImageDragShareTarget(special);
        int nativeIndex = special >= 0 ? -1 : findNativeShareTargetIndex(rawX, rawY);
        setHoveredNativeShareTarget(nativeIndex);
        
        
        int slot = special >= 0 || nativeIndex >= 0
                || (!hyperDragDropImage && !hyperDragTextDirectToSlot)
                ? -1 : findSlotForNativeContentDrop(rawX, rawY);
        setHyperDragDropHoveredSlot(slot);
    }

    private int findHyperDragBuiltInTarget(float rawX, float rawY) {
        for (int index = 0; index < hyperDragBuiltInViews.size(); index++) {
            AppShortcutView view = hyperDragBuiltInViews.get(index);
            if (view.getVisibility() != View.VISIBLE || !view.isShown()
                    || !view.getGlobalVisibleRect(hyperDragBuiltInHitRect)) {
                continue;
            }
            if (hyperDragBuiltInHitRect.contains(Math.round(rawX), Math.round(rawY))) {
                return index;
            }
        }
        return -1;
    }

    private void setHoveredHyperDragBuiltIn(int targetIndex) {
        int previous = hoveredHyperDragBuiltInIndex;
        if (targetIndex == previous) {
            return;
        }
        hoveredHyperDragBuiltInIndex = targetIndex;
        for (int index = 0; index < hyperDragBuiltInViews.size(); index++) {
            AppShortcutView view = hyperDragBuiltInViews.get(index);
            if (view == null) {
                continue;
            }
            boolean hovered = index == targetIndex;
            view.animate().cancel();
            view.animate()
                    .scaleX(hovered ? 1.1f : 1f)
                    .scaleY(hovered ? 1.1f : 1f)
                    .setDuration(100L)
                    .start();
        }
        if (targetIndex >= 0 && targetIndex < hyperDragBuiltInViews.size()) {
            performHoverHaptic(hyperDragBuiltInViews.get(targetIndex));
            showCapsuleNearAnchor(hyperDragBuiltInViews.get(targetIndex),
                    hyperDragBuiltInLabels[targetIndex], true);
        } else {
            hideImageDragShareCapsule();
        }
    }

    private void setHyperDragDropHoveredSlot(int slot) {
        if (slot >= 0 && isMainPaneSlot(slot)) {
            slot = -1;
        }
        if (slot == hoveredHyperDragDropSlot) {
            return;
        }
        OneStepWindowView previous = hoveredHyperDragDropSlot >= 0
                && hoveredHyperDragDropSlot < MAX_WINDOWS
                ? windowViews[hoveredHyperDragDropSlot] : null;
        if (previous != null) {
            previous.setDropHovered(false);
        }
        hoveredHyperDragDropSlot = slot;
        OneStepWindowView target = slot >= 0 && slot < MAX_WINDOWS
                ? windowViews[slot] : null;
        if (target != null) {
            target.setDropHovered(true);
            setHoveredNativeDropSlot(slot);
        } else {
            setHoveredNativeDropSlot(-1);
        }
    }

    private void endHyperDragDropSession() {
        hyperDragDropSessionActive = false;
        setHoveredHyperDragBuiltIn(-1);
        
        hideImageDragShareCapsule();
        setHyperDragDropHoveredSlot(-1);
        for (AppShortcutView view : hyperDragBuiltInViews) {
            if (view != null) {
                view.setVisibility(View.GONE);
            }
        }
        hideImageDragShareTargets();
    }

    private HyperDragDropBridge.Outcome dispatchHyperDragDrop(float rawX, float rawY,
            String text, Uri stagedImageUri, File stagedImageFile, String imageMime,
            boolean textDirectToSlot) {
        if (activityDestroyed) {
            return HyperDragDropBridge.Outcome.NONE;
        }
        int builtin = findHyperDragBuiltInTarget(rawX, rawY);
        if (builtin >= 0) {
            if (builtin == 0) {
                return hyperDragDropImage
                        ? HyperDragDropBridge.Outcome.BUILTIN_SAVE_LOCAL
                        : HyperDragDropBridge.Outcome.BUILTIN_TEXT_SEGMENTATION;
            }
            return HyperDragDropBridge.Outcome.BUILTIN_COPY;
        }
        if (hyperDragDropImage && stagedImageUri == null) {
            
            return HyperDragDropBridge.Outcome.NONE;
        }
        int special = findImageDragShareTarget(rawX, rawY);
        if (special >= 0) {
            if (hyperDragDropImage) {
                deliverDraggedImageToShareTarget(
                        special, stagedImageFile, imageMime, stagedImageUri);
            } else {
                deliverDraggedTextToShareTarget(special, text);
            }
            return HyperDragDropBridge.Outcome.CONSUMED;
        }
        int nativeIndex = findNativeShareTargetIndex(rawX, rawY);
        if (nativeIndex >= 0 && nativeIndex < imageDragNativeTargets.size()) {
            deliverToHyperDragNativeTarget(imageDragNativeTargets.get(nativeIndex),
                    text, stagedImageUri, stagedImageFile, imageMime);
            return HyperDragDropBridge.Outcome.CONSUMED;
        }
        int slot = findSlotForNativeContentDrop(rawX, rawY);
        if (slot >= 0 && hyperDragDropImage) {
            deliverDraggedImage(slot, stagedImageFile, imageMime, stagedImageUri);
            return HyperDragDropBridge.Outcome.CONSUMED;
        }
        if (slot >= 0 && textDirectToSlot) {
            
            deliverDraggedTextToSlot(slot, text);
            return HyperDragDropBridge.Outcome.CONSUMED;
        }
        
        
        return HyperDragDropBridge.Outcome.NONE;
    }

    private void deliverToHyperDragNativeTarget(NativeShareTarget target, String text,
            Uri stagedImageUri, File stagedImageFile, String imageMime) {
        if (target == null || target.component == null || activityDestroyed) {
            return;
        }
        try {
            Intent share = new Intent(Intent.ACTION_SEND)
                    .addCategory(Intent.CATEGORY_DEFAULT)
                    .setComponent(target.component)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            boolean image = hyperDragDropImage && stagedImageUri != null
                    && "content".equals(stagedImageUri.getScheme());
            if (image) {
                share.setType(TextUtils.isEmpty(imageMime) ? "image/png" : imageMime)
                        .putExtra(Intent.EXTRA_STREAM, stagedImageUri)
                        .addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                share.setClipData(ClipData.newUri(
                        getContentResolver(), "OneStep media", stagedImageUri));
                try {
                    grantUriPermission(target.packageName, stagedImageUri,
                            Intent.FLAG_GRANT_READ_URI_PERMISSION);
                } catch (RuntimeException ignored) {
                }
            } else if (!TextUtils.isEmpty(text)) {
                share.setType("text/plain").putExtra(Intent.EXTRA_TEXT, text);
            } else {
                return;
            }
            launchNativeShareInContainer(target, share);
        } catch (RuntimeException e) {
            Log.w(TAG, "HyperDrag native share failed for " + target.packageName, e);
        }
    }

    private int findImageDragShareTarget(float rawX, float rawY) {
        if (!imageDragShareTargetsVisible || imageDragShareTargetScrollView == null
                || imageDragShareTargetScrollView.getVisibility() != View.VISIBLE) {
            return -1;
        }
        autoScrollImageDragShareTargets(rawX, rawY);
        for (int index = 0; index < imageDragShareTargetViews.length; index++) {
            View target = imageDragShareTargetViews[index];
            if (!imageDragShareTargetEnabled[index] || target == null
                    || !target.getGlobalVisibleRect(imageDragShareHitRect)) {
                continue;
            }
            if (imageDragShareHitRect.contains(Math.round(rawX), Math.round(rawY))) {
                return index;
            }
        }
        return -1;
    }

    private void autoScrollImageDragShareTargets(float rawX, float rawY) {
        if (imageDragShareTargetScrollView == null
                || imageDragShareTargetScrollView.getChildCount() == 0
                || !imageDragShareTargetScrollView.getGlobalVisibleRect(
                imageDragShareHitRect)
                || rawY < imageDragShareHitRect.top
                || rawY > imageDragShareHitRect.bottom) {
            return;
        }
        int edgeSize = Math.min(dp(36), imageDragShareHitRect.width() / 4);
        int delta = 0;
        if (rawX < imageDragShareHitRect.left + edgeSize) {
            delta = -dp(8);
        } else if (rawX > imageDragShareHitRect.right - edgeSize) {
            delta = dp(8);
        }
        if (delta == 0) {
            return;
        }
        View content = imageDragShareTargetScrollView.getChildAt(0);
        int maxScroll = Math.max(
                0, content.getWidth() - imageDragShareTargetScrollView.getWidth());
        int targetScroll = Math.max(0, Math.min(maxScroll,
                imageDragShareTargetScrollView.getScrollX() + delta));
        imageDragShareTargetScrollView.scrollTo(targetScroll, 0);
    }

    private void setHoveredImageDragShareTarget(int targetIndex) {
        int previous = hoveredShareTargetIndex;
        hoveredShareTargetIndex = targetIndex;
        for (int index = 0; index < imageDragShareTargetViews.length; index++) {
            View target = imageDragShareTargetViews[index];
            if (target == null) {
                continue;
            }
            boolean enabled = imageDragShareTargetEnabled[index];
            boolean hovered = enabled && index == targetIndex;
            target.animate().cancel();
            target.setBackground(null);
            target.setAlpha(enabled ? 1f : 0.28f);
            target.animate()
                    .scaleX(hovered ? 1.1f : 1f)
                    .scaleY(hovered ? 1.1f : 1f)
                    .setDuration(100L)
                    .start();
        }
        if (targetIndex != previous) {
            if (targetIndex >= 0) {
                performHoverHaptic(imageDragShareTargetViews[targetIndex]);
                showImageDragShareCapsule(targetIndex);
            } else {
                hideImageDragShareCapsule();
            }
        }
    }

    private void performHoverHaptic(View target) {
        if (target == null) {
            return;
        }
        try {
            target.performHapticFeedback(HapticFeedbackConstants.CLOCK_TICK);
        } catch (RuntimeException ignored) {
        }
    }

    private void showImageDragShareCapsule(int targetIndex) {
        if (targetIndex < 0 || targetIndex >= imageDragShareEntries.size()
                || targetIndex >= imageDragShareTargetViews.length) {
            hideImageDragShareCapsule();
            return;
        }
        View anchor = imageDragShareTargetViews[targetIndex];
        if (anchor == null) {
            hideImageDragShareCapsule();
            return;
        }
        showCapsuleNearAnchor(anchor,
                imageDragShareTargetDescription(
                        imageDragShareEntries.get(targetIndex).target));
    }

    private void showContentDropCapsule(View anchor) {
        if (!(anchor.getTag() instanceof LauncherApp)) {
            hideImageDragShareCapsule();
            return;
        }
        showCapsuleNearAnchor(anchor, ((LauncherApp) anchor.getTag()).label);
    }

    private void showCapsuleNearAnchor(View anchor, String label) {
        showCapsuleNearAnchor(anchor, label, false);
    }

    private void showCapsuleNearAnchor(View anchor, String label, boolean belowAnchor) {
        if (rootContainer == null || TextUtils.isEmpty(label)) {
            hideImageDragShareCapsule();
            return;
        }
        if (!anchor.isShown() || !anchor.getGlobalVisibleRect(imageDragShareHitRect)) {
            hideImageDragShareCapsule();
            return;
        }
        TextView capsule = ensureImageDragShareCapsule();
        capsule.setText(label);
        int[] rootOrigin = new int[2];
        rootContainer.getLocationOnScreen(rootOrigin);
        capsule.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED);
        int capsuleWidth = capsule.getMeasuredWidth();
        int capsuleHeight = capsule.getMeasuredHeight();
        int x = Math.max(dp(12), Math.min(
                imageDragShareHitRect.centerX() - rootOrigin[0] - capsuleWidth / 2,
                rootContainer.getWidth() - capsuleWidth - dp(12)));
        int y;
        if (belowAnchor) {
            
            
            y = imageDragShareHitRect.bottom - rootOrigin[1] + dp(10);
            int maxY = rootContainer.getHeight() - capsuleHeight - dp(8);
            if (y > maxY) {
                y = maxY;
            }
        } else {
            y = imageDragShareHitRect.top - rootOrigin[1] - capsuleHeight - dp(10);
            if (y < dp(8)) {
                y = imageDragShareHitRect.bottom - rootOrigin[1] + dp(10);
            }
        }
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = x;
        lp.topMargin = y;
        if (capsule.getParent() == null) {
            rootContainer.addView(capsule, lp);
        } else {
            capsule.setLayoutParams(lp);
        }
        capsule.setVisibility(View.VISIBLE);
    }

    private TextView ensureImageDragShareCapsule() {
        if (imageDragShareCapsuleView != null) {
            return imageDragShareCapsuleView;
        }
        TextView capsule = new TextView(this);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0xF01E1E1E);
        bg.setCornerRadius(dp(18));
        bg.setStroke(dp(1), 0x33FFFFFF);
        capsule.setBackground(bg);
        capsule.setTextColor(0xFFFFFFFF);
        capsule.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 12);
        capsule.setSingleLine(true);
        capsule.setPadding(dp(14), dp(7), dp(14), dp(7));
        capsule.setElevation(dp(80));
        capsule.setVisibility(View.GONE);
        imageDragShareCapsuleView = capsule;
        return capsule;
    }

    private void hideImageDragShareCapsule() {
        if (imageDragShareCapsuleView != null) {
            imageDragShareCapsuleView.setVisibility(View.GONE);
        }
    }

    private void wireLegacyUiBridge() {
        SidebarController.setHost(new SidebarController.Host() {
            @Override public Context getHostContext() {
                return MainActivity.this;
            }

            @Override public void resumeTopView() {
            }

            @Override public void dismissContent(boolean animate) {
                hideLegacyPanel();
            }

            @Override public void showContent(ContentView.ContentType contentType) {
                showLegacyRegionContent(contentType);
            }

            @Override public ContentView.ContentType getCurrentContentType() {
                return legacyContentView == null
                        ? ContentView.ContentType.NONE : legacyContentView.getCurrentContent();
            }

            @Override public void setSidebarMode(int mode) {
                legacySidebarMode = mode;
            }

            @Override public int getSidebarMode() {
                return legacySidebarMode;
            }

            @Override public void toggleMainTaskRotation() {
            }

            @Override public void exitOneStepMode() {
                hideLegacyPanel();
            }

            @Override public SidebarController.DragHandle getSidebarRootView() {
                return () -> {
                };
            }
        });
        MultiTaskController.setLaunchHost(packageName -> {
            LauncherApp app = findLauncherAppByFlatComponent(packageName);
            if (app == null) {
                app = createLauncherAppForPackage(packageName);
            }
            if (app != null) {
                hideLegacyPanel();
                addOrFocusApp(app);
            }
        });
    }

    private void handleEmbeddedAppReleasedToForeground(
            int slot, int taskId, String packageName, String componentName) {
        LauncherApp app = windowApps[slot];
        RootVirtualDisplayHost host = embeddedHosts[slot] instanceof RootVirtualDisplayHost
                ? (RootVirtualDisplayHost) embeddedHosts[slot] : null;
        if (app == null || host == null) {
            return;
        }
        Log.i(TAG, "Release embedded app opened from system recents: slot=" + slot
                + ", app=" + packageName + ", task=" + taskId);
        releasedToForegroundApps[slot] = app;
        releasedToForegroundTaskIds[slot] = Math.max(taskId, 0);
        embeddedSyncGenerations[slot]++;
        windowApps[slot] = null;
        clearHostedAppRevealState(slot);
        host.invalidateTaskResolution();
        windowViews[slot].setLiveAppVisible(false);
        renderWindows();
        if (taskId > 0) {
            
            host.moveHostedTaskToDefaultDisplay(taskId, componentName);
        }
    }

    private void restoreReleasedEmbeddedApps() {
        boolean anyReleased = false;
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (releasedToForegroundApps[slot] != null) {
                anyReleased = true;
                break;
            }
        }
        if (!anyReleased) {
            return;
        }
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            LauncherApp app = releasedToForegroundApps[slot];
            if (app == null || windowApps[slot] != null) {
                if (app != null) {
                    Log.i(TAG, "Drop released-app memory; slot repurposed: slot=" + slot
                            + ", app=" + app.packageName);
                    releasedToForegroundApps[slot] = null;
                    releasedToForegroundTaskIds[slot] = 0;
                }
                continue;
            }
            int taskId = releasedToForegroundTaskIds[slot];
            releasedToForegroundApps[slot] = null;
            releasedToForegroundTaskIds[slot] = 0;
            RootVirtualDisplayHost host =
                    embeddedHosts[slot] instanceof RootVirtualDisplayHost
                            ? (RootVirtualDisplayHost) embeddedHosts[slot] : null;
            boolean restored = host != null && host.reattachReleasedTask(taskId, app);
            Log.i(TAG, restored
                    ? "Re-embedded released app on return: slot=" + slot
                    + ", app=" + app.packageName
                    : "Released app was killed or gone; leaving slot empty: slot=" + slot
                    + ", app=" + app.packageName);
            if (restored) {
                windowApps[slot] = app;
                windowViews[slot].setLiveAppVisible(true);
                renderWindows();
            }
        }
    }

    private void dropReleasedMemoryIfTaskRemoved(int taskId, String packageName) {
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            LauncherApp app = releasedToForegroundApps[slot];
            if (app == null) {
                continue;
            }
            boolean packageMatch = TextUtils.equals(app.packageName, packageName);
            boolean taskMatch = taskId > 0
                    && taskId == releasedToForegroundTaskIds[slot];
            if (packageMatch || taskMatch) {
                Log.i(TAG, "Released app removed from recents; dropping restore memory: slot="
                        + slot + ", app=" + app.packageName);
                releasedToForegroundApps[slot] = null;
                releasedToForegroundTaskIds[slot] = 0;
            }
        }
    }

    private int findSlotHostingPackage(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return -1;
        }
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            LauncherApp app = windowApps[slot];
            if (app != null && !app.isHomeEntry()
                    && TextUtils.equals(app.packageName, packageName)) {
                return slot;
            }
        }
        return -1;
    }

    private void handleLegacyPanelBlankTap(float rawX, float rawY) {
        if (activityDestroyed || !legacyPanelShown || legacyRegionDialog == null
                || !legacyRegionDialog.isShowing()) {
            return;
        }
        ContentView.ContentType tapped = topPanelController == null
                ? null : topPanelController.findTopRegionEntryAt((int) rawX, (int) rawY);
        if (tapped != null) {
            showLegacyRegionContent(tapped);
        } else {
            hideLegacyPanel();
        }
    }

    private void showLegacyRegionContent(ContentView.ContentType contentType) {
        if (contentType == null || contentType == ContentView.ContentType.NONE) {
            return;
        }
        if (activeRegionContentType == contentType) {
            hideLegacyPanel();
            return;
        }
        activeRegionContentType = contentType;
        if (topPanelController != null) {
            topPanelController.setActiveTopRegion(contentType);
        }
        showLegacyPanel();
        if (legacyContentView != null) {
            
            if (legacyContentView.getCurrentContent() != ContentView.ContentType.NONE
                    && legacyContentView.getCurrentContent() != contentType) {
                legacyContentView.dismiss(legacyContentView.getCurrentContent(), false);
            }
            legacyContentView.bringToFront();
            legacyContentView.show(contentType, true);
        }
    }

    private void addLegacyPanelHandle(FrameLayout root) {
        View handle = new View(this);
        GradientDrawable handleBg = new GradientDrawable();
        handleBg.setColor(0x3375aa72);
        handleBg.setCornerRadius(dp(3));
        handle.setBackground(handleBg);
        handle.setOnClickListener(v -> toggleLegacyPanel());
        FrameLayout.LayoutParams handleLp = new FrameLayout.LayoutParams(
                dp(10), dp(88), Gravity.START | Gravity.CENTER_VERTICAL);
        root.addView(handle, handleLp);
    }

    private void toggleLegacyPanel() {
        if (legacyPanelShown) {
            hideLegacyPanel();
        } else {
            showLegacyPanel();
        }
    }

    private void showLegacyPanel() {
        if (activityDestroyed || legacyPanelShown) {
            return;
        }
        if (legacyRegionDialog == null) {
            if (legacyPanel == null) {
                buildLegacyPanel();
            }
            
            
            legacyRegionDialog = new Dialog(this);
            legacyRegionDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
            legacyRegionDialog.setCancelable(true);
            
            
            legacyRegionDialog.setCanceledOnTouchOutside(false);
            legacyRegionDialog.setOnCancelListener(dialog -> resetRegionOverlayState());
            Window window = legacyRegionDialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                window.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
                
                
                window.addFlags(WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL);
                window.setGravity(Gravity.BOTTOM);
                WindowManager.LayoutParams attrs = window.getAttributes();
                attrs.width = ViewGroup.LayoutParams.MATCH_PARENT;
                attrs.height = ViewGroup.LayoutParams.MATCH_PARENT;
                window.setAttributes(attrs);
                window.getDecorView().setOnTouchListener((v, event) -> {
                    if (event.getActionMasked() == MotionEvent.ACTION_OUTSIDE) {
                        
                        
                        ContentView.ContentType tapped = topPanelController == null
                                ? null : topPanelController.findTopRegionEntryAt(
                                        (int) event.getRawX(), (int) event.getRawY());
                        if (tapped == null) {
                            Log.d(TAG, "legacy panel outside blank tap raw="
                                    + event.getRawX() + "," + event.getRawY());
                            hideLegacyPanel();
                        }
                    }
                    return false;
                });
            }
            legacyRegionDialog.setContentView(legacyPanel,
                    new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.MATCH_PARENT));
        }
        Window window = legacyRegionDialog.getWindow();
        int availableHeight = rootContainer != null && rootContainer.getHeight() > 0
                ? rootContainer.getHeight() - getTopChromeHeight()
                : 0;
        if (window != null) {
            
            window.setLayout(ViewGroup.LayoutParams.MATCH_PARENT,
                    Math.max(dp(300), availableHeight));
        }
        int cardWidth = rootContainer != null && rootContainer.getWidth() > 0
                ? Math.min(rootContainer.getWidth() - dp(56), dp(620)) : dp(500);
        int cardHeight = Math.max(dp(260),
                availableHeight > 0 ? availableHeight - dp(44) : dp(600));
        FrameLayout.LayoutParams cardLp = new FrameLayout.LayoutParams(cardWidth, cardHeight);
        cardLp.gravity = Gravity.CENTER_HORIZONTAL | Gravity.BOTTOM;
        cardLp.bottomMargin = dp(20);
        legacyRegionCard.setLayoutParams(cardLp);
        legacyPanelShown = true;
        legacyRegionDialog.show();
        legacyRegionCard.setAlpha(0f);
        legacyRegionCard.setTranslationY(dp(24));
        legacyRegionCard.animate()
                .alpha(1f)
                .translationY(0f)
                .setDuration(180L)
                .start();
    }

    private void hideLegacyPanel() {
        if (!legacyPanelShown || legacyRegionDialog == null || !legacyRegionDialog.isShowing()) {
            return;
        }
        legacyRegionDialog.cancel();
    }

    private void resetRegionOverlayState() {
        legacyPanelShown = false;
        activeRegionContentType = ContentView.ContentType.NONE;
        if (topPanelController != null) {
            topPanelController.setActiveTopRegion(null);
        }
        if (legacyContentView != null
                && legacyContentView.getCurrentContent() != ContentView.ContentType.NONE) {
            legacyContentView.dismiss(legacyContentView.getCurrentContent(), false);
        }
    }

    private void buildLegacyPanel() {
        legacyPanel = new FrameLayout(this);
        legacyPanel.setClickable(true);
        legacyPanel.setFocusable(true);

        legacyRegionCard = new FrameLayout(this);
        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(Color.TRANSPARENT);
        cardBg.setCornerRadius(dp(24));
        legacyRegionCard.setBackground(cardBg);
        legacyRegionCard.setClipToOutline(true);
        
        
        legacyContentView = (ContentView) LayoutInflater.from(this)
                .inflate(R.layout.content_view, legacyRegionCard, false);
        legacyContentView.setBackground(null);
        legacyRegionCard.addView(legacyContentView, matchFrame());
        legacyPanel.addView(legacyRegionCard);

        
        legacyPanel.setOnTouchListener((v, event) -> {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                legacyPanelDownRawX = event.getRawX();
                legacyPanelDownRawY = event.getRawY();
            }
            return false;
        });
        legacyPanel.setOnClickListener(v ->
                handleLegacyPanelBlankTap(legacyPanelDownRawX, legacyPanelDownRawY));
        
        
        legacyPanel.setOnDragListener((v, event) -> {
            if (event.getAction() == DragEvent.ACTION_DRAG_STARTED
                    && isNativeMediaDrag(event)) {
                legacyPanel.post(() -> {
                    if (!activityDestroyed) {
                        hideLegacyPanel();
                    }
                });
            }
            return false;
        });
    }

    private void handleLegacyAppDrop(int slot, String componentFlat) {
        if (componentFlat == null || componentFlat.isEmpty()
                || slot < 0 || slot >= MAX_WINDOWS || activityDestroyed) {
            return;
        }
        LauncherApp app = findLauncherAppByFlatComponent(componentFlat);
        if (app == null) {
            ComponentName cn = ComponentName.unflattenFromString(componentFlat);
            if (cn != null) {
                app = createLauncherAppForPackage(cn.getPackageName());
            }
        }
        Log.i("OneStepDrag", "handleLegacyAppDrop: slot=" + slot
                + ", flat=" + componentFlat + ", resolved=" + (app != null));
        hideLegacyPanel();
        if (app != null) {
            startAppInSlot(slot, app);
        }
    }

    private LauncherApp findLauncherAppByFlatComponent(String flat) {
        if (flat == null) {
            return null;
        }
        for (LauncherApp app : launcherApps) {
            if (app.componentName != null && flat.equals(app.componentName.flattenToString())) {
                return app;
            }
            if (flat.equals(app.packageName)) {
                return app;
            }
        }
        return null;
    }

    private static final long EXTENDED_APP_DRAG_PRESS_TIMEOUT_MS = 600L;

    private void installPressDragGesture(View view, LauncherApp app) {
        final float slop = Math.max(
                ViewConfiguration.get(this).getScaledTouchSlop(), dp(10));
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnTouchListener(new View.OnTouchListener() {
            private float downX;
            private float downY;
            private long downAt;
            private boolean decided;
            private final Runnable pressDrag = new Runnable() {
                @Override
                public void run() {
                    if (!decided) {
                        decided = true;
                        view.setPressed(false);
                        startAppDragFor(view, app);
                    }
                }
            };

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        downX = event.getRawX();
                        downY = event.getRawY();
                        downAt = event.getEventTime();
                        decided = false;
                        v.removeCallbacks(pressDrag);
                        v.postDelayed(pressDrag, EXTENDED_APP_DRAG_PRESS_TIMEOUT_MS);
                        ViewParent holder = v.getParent();
                        if (holder != null) {
                            holder.requestDisallowInterceptTouchEvent(true);
                        }
                        break;
                    case MotionEvent.ACTION_MOVE:
                        if (!decided) {
                            float dx = event.getRawX() - downX;
                            float dy = event.getRawY() - downY;
                            if (Math.abs(dx) >= slop || Math.abs(dy) >= slop) {
                                decided = true;
                                v.removeCallbacks(pressDrag);
                                float elapsed = Math.max(1, event.getEventTime() - downAt);
                                boolean horizontalFlick = Math.abs(dx) > Math.abs(dy)
                                        && Math.abs(dx) / elapsed > 1.0f;
                                if (horizontalFlick || elapsed
                                        < EXTENDED_APP_DRAG_PRESS_TIMEOUT_MS) {
                                    
                                    ViewParent parent = v.getParent();
                                    if (parent != null) {
                                        parent.requestDisallowInterceptTouchEvent(false);
                                    }
                                } else {
                                    startAppDragFor(v, app);
                                }
                            }
                        }
                        break;
                    default:
                        decided = true;
                        v.removeCallbacks(pressDrag);
                        break;
                }
                return false;
            }
        });
    }

    private boolean startAppDragFor(View view, LauncherApp app) {
        if (view == null || app == null || app.componentName == null) {
            Log.i("OneStepDrag", "startAppDragFor rejected: view=" + view + ", app=" + app);
            return false;
        }
        try {
            ClipData clipData = new ClipData("onestep-app",
                    new String[]{MultiTaskController.APP_DRAG_MIME},
                    new ClipData.Item(app.componentName.flattenToString()));
            boolean started = view.startDragAndDrop(clipData, new View.DragShadowBuilder(view),
                    MultiTaskController.APP_DRAG_LOCAL_STATE, View.DRAG_FLAG_GLOBAL);
            if (started) {
                
                view.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
            }
            Log.i("OneStepDrag", "startAppDragFor: " + app.componentKey()
                    + ", started=" + started);
            return started;
        } catch (Throwable t) {
            Log.w("OneStepDrag", "startAppDragFor failed: " + t);
            return false;
        }
    }

    private boolean handleNativeContentDrag(View view, DragEvent event) {
        switch (event.getAction()) {
            case DragEvent.ACTION_DRAG_STARTED:
                if (!isNativeMediaDrag(event)) {
                    return false;
                }
                nativeContentDragActive = true;
                hoveredContentDropIcon = null;
                showImageDragShareTargets(nativeDragMimeType(event));
                populateNativeShareTargets(event);
                return true;
            case DragEvent.ACTION_DRAG_LOCATION: {
                if (!nativeContentDragActive) {
                    return false;
                }
                float rawX = nativeDragScreenX(view, event);
                float rawY = nativeDragScreenY(view, event);
                int specialTarget = findImageDragShareTarget(rawX, rawY);
                setHoveredImageDragShareTarget(specialTarget);
                int nativeTarget = specialTarget >= 0
                        ? -1 : findNativeShareTargetIndex(rawX, rawY);
                setHoveredNativeShareTarget(nativeTarget);
                
                setContentDropHoverIcon(specialTarget >= 0 || nativeTarget >= 0
                        ? null : findContentDropIconUnder(rawX, rawY));
                
                setHoveredNativeDropSlot(specialTarget >= 0 || nativeTarget >= 0
                        ? -1 : findSlotForNativeContentDrop(rawX, rawY));
                return true;
            }
            case DragEvent.ACTION_DROP: {
                boolean handled;
                if (nativeContentDragActive && hoveredContentDropIcon != null
                        && hoveredContentDropIcon.getTag() instanceof LauncherApp) {
                    deliverDraggedContentToApp(
                            (LauncherApp) hoveredContentDropIcon.getTag(), event);
                    handled = true;
                } else if (nativeContentDragActive && hoveredNativeShareTargetIndex >= 0
                        && hoveredNativeShareTargetIndex < imageDragNativeTargets.size()) {
                    
                    NativeShareTarget hoveredTarget =
                            imageDragNativeTargets.get(hoveredNativeShareTargetIndex);
                    setHoveredNativeShareTarget(-1);
                    handled = deliverDraggedContentToNativeTarget(hoveredTarget, event);
                } else {
                    handled = nativeContentDragActive && deliverNativeContentDrop(view, event);
                }
                setHoveredNativeDropSlot(-1);
                setContentDropHoverIcon(null);
                nativeContentDragActive = false;
                hideImageDragShareTargets();
                return handled;
            }
            case DragEvent.ACTION_DRAG_ENDED:
                if (nativeContentDragActive) {
                    nativeContentDragActive = false;
                    hideImageDragShareTargets();
                }
                setHoveredNativeDropSlot(-1);
                setContentDropHoverIcon(null);
                setHoveredNativeShareTarget(-1);
                return false;
            default:
                return nativeContentDragActive;
        }
    }

    private void populateNativeShareTargets(DragEvent event) {
        String mimeType;
        try {
            mimeType = MimeUtils.getCommonMimeType(event);
        } catch (RuntimeException e) {
            Log.w(TAG, "Discover native share targets failed", e);
            mimeType = null;
        }
        fillNativeShareTargetPool(mimeType);
    }

    private void fillNativeShareTargetPool(String mimeType) {
        List<NativeShareTarget> discovered;
        try {
            discovered = TextUtils.isEmpty(mimeType)
                    ? Collections.<NativeShareTarget>emptyList()
                    : queryNativeShareTargets(mimeType);
        } catch (RuntimeException e) {
            Log.w(TAG, "Discover native share targets failed", e);
            discovered = Collections.emptyList();
        }
        
        List<String> savedOrder = settingsStore.loadShareTargetOrder();
        Set<String> pinnedKeys = settingsStore.loadShareTargetPinnedKeys();
        Map<String, NativeShareTarget> byKey = new LinkedHashMap<>();
        for (NativeShareTarget target : discovered) {
            byKey.putIfAbsent("native:" + target.packageName, target);
        }
        List<NativeShareTarget> pinnedList = new ArrayList<>();
        List<NativeShareTarget> orderedList = new ArrayList<>();
        for (String key : savedOrder) {
            NativeShareTarget target = byKey.get(key);
            if (target == null) {
                continue;
            }
            if (pinnedKeys.contains(key)) {
                pinnedList.add(target);
            } else {
                orderedList.add(target);
            }
        }
        Set<String> included = new HashSet<>();
        for (NativeShareTarget target : pinnedList) {
            included.add("native:" + target.packageName);
        }
        for (NativeShareTarget target : orderedList) {
            included.add("native:" + target.packageName);
        }
        for (NativeShareTarget target : discovered) {
            
            if (included.add("native:" + target.packageName)) {
                orderedList.add(target);
            }
        }
        List<NativeShareTarget> ordered = new ArrayList<>(pinnedList);
        ordered.addAll(orderedList);

        imageDragNativeTargets.clear();
        Set<String> pinnedShareKeys = settingsStore.loadShareTargetPinnedKeys();
        int viewIndex = 0;
        for (NativeShareTarget target : ordered) {
            if (viewIndex >= imageDragNativeTargetViews.size()) {
                break;
            }
            AppShortcutView targetView = imageDragNativeTargetViews.get(viewIndex);
            CharSequence label = target.label;
            targetView.bindIcon(target.icon, label == null ? "" : label.toString());
            targetView.setPinned(pinnedShareKeys.contains("native:" + target.packageName));
            targetView.setVisibility(View.VISIBLE);
            imageDragNativeTargets.add(target);
            viewIndex++;
        }
        for (; viewIndex < imageDragNativeTargetViews.size(); viewIndex++) {
            imageDragNativeTargetViews.get(viewIndex).setVisibility(View.GONE);
        }
    }

    private List<NativeShareTarget> queryNativeShareTargets(String mimeType) {
        try {
            
            
            Intent probe = new Intent(Intent.ACTION_SEND).setType(mimeType);
            List<ResolveInfo> infos = getPackageManager().queryIntentActivities(
                    probe, PackageManager.MATCH_ALL);
            List<NativeShareTarget> targets = new ArrayList<>();
            Set<String> seenPackages = new HashSet<>();
            for (ResolveInfo info : infos) {
                if (info == null || info.activityInfo == null) {
                    continue;
                }
                String pkg = info.activityInfo.packageName;
                if (TextUtils.equals(pkg, getPackageName()) || !seenPackages.add(pkg)) {
                    continue;
                }
                CharSequence label = info.loadLabel(getPackageManager());
                Drawable icon = info.loadIcon(getPackageManager());
                if (TextUtils.isEmpty(label) || icon == null) {
                    continue;
                }
                targets.add(new NativeShareTarget(label, icon, pkg,
                        new ComponentName(pkg, info.activityInfo.name)));
                if (targets.size() >= NATIVE_SHARE_TARGET_POOL) {
                    break;
                }
            }
            return targets;
        } catch (RuntimeException e) {
            Log.w(TAG, "Query native share targets failed for " + mimeType, e);
            return Collections.emptyList();
        }
    }

    private boolean deliverDraggedContentToNativeTarget(
            NativeShareTarget target, DragEvent event) {
        ClipData clip = event.getClipData();
        ClipData.Item item = clip != null && clip.getItemCount() > 0
                ? clip.getItemAt(0) : null;
        if (target == null || item == null) {
            return false;
        }
        try {
            Uri uri = item.getUri();
            Intent share = new Intent(Intent.ACTION_SEND)
                    .addCategory(Intent.CATEGORY_DEFAULT)
                    .setComponent(target.component)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            if (uri != null && "content".equals(uri.getScheme())) {
                share.setType(nativeDragMimeType(event))
                        .putExtra(Intent.EXTRA_STREAM, uri)
                        .addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                share.setClipData(ClipData.newUri(
                        getContentResolver(), "OneStep media", uri));
                try {
                    grantUriPermission(target.packageName, uri,
                            Intent.FLAG_GRANT_READ_URI_PERMISSION);
                } catch (RuntimeException ignored) {
                }
            } else if (!TextUtils.isEmpty(item.getText())) {
                share.setType("text/plain")
                        .putExtra(Intent.EXTRA_TEXT, item.getText().toString());
            } else {
                return false;
            }
            
            return launchNativeShareInContainer(target, share);
        } catch (RuntimeException e) {
            Log.w(TAG, "Native share failed for " + target.packageName, e);
            return false;
        }
    }

    private boolean launchNativeShareInContainer(NativeShareTarget target, Intent share) {
        if (share == null || share.getComponent() == null || activityDestroyed) {
            return false;
        }
        int hostedSlot = findSlotHostingPackage(target.packageName);
        if (hostedSlot >= 0
                && embeddedHosts[hostedSlot] instanceof RootVirtualDisplayHost) {
            LauncherApp hostedApp = windowApps[hostedSlot];
            if (hostedApp != null && !hostedApp.isHomeEntry()
                    && ((RootVirtualDisplayHost) embeddedHosts[hostedSlot])
                    .launchImageShareActivity(hostedApp, share)) {
                armImageSharePromotion(hostedSlot, hostedApp, share.getComponent());
                Log.i(TAG, "Native share routed into existing container: pkg="
                        + target.packageName + ", slot=" + hostedSlot);
                return true;
            }
        }
        if (hasRootAccessForAppLaunch()) {
            
            share.putExtra(EXTRA_IMAGE_SHARE_ROUTE, true)
                    .putExtra(EXTRA_IMAGE_SHARE_WAIT_FOR_APP_READY, true);
            routedLaunchIntents.put(target.packageName, share);
            addOrFocusLatestApp(target.packageName);
            Log.i(TAG, "Native share deferred until app ready in container: pkg="
                    + target.packageName);
            return true;
        }
        try {
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
            startActivity(share, options.toBundle());
            Log.i(TAG, "Native share launched on default display: " + target.component);
            return true;
        } catch (ActivityNotFoundException | SecurityException e) {
            Log.w(TAG, "Cannot start native share target: " + target.packageName, e);
            return false;
        }
    }

    private int findNativeShareTargetIndex(float rawX, float rawY) {
        if (imageDragNativeTargetViews.isEmpty() || !imageDragShareTargetsVisible
                || imageDragShareTargetScrollView == null
                || imageDragShareTargetScrollView.getVisibility() != View.VISIBLE) {
            return -1;
        }
        autoScrollImageDragShareTargets(rawX, rawY);
        for (int index = 0; index < imageDragNativeTargetViews.size(); index++) {
            AppShortcutView target = imageDragNativeTargetViews.get(index);
            if (target.getVisibility() != View.VISIBLE || !target.isShown()
                    || !target.getGlobalVisibleRect(imageDragShareHitRect)) {
                continue;
            }
            if (imageDragShareHitRect.contains(Math.round(rawX), Math.round(rawY))) {
                return index;
            }
        }
        return -1;
    }

    private void setHoveredNativeShareTarget(int targetIndex) {
        int previous = hoveredNativeShareTargetIndex;
        hoveredNativeShareTargetIndex = targetIndex;
        for (int index = 0; index < imageDragNativeTargetViews.size(); index++) {
            AppShortcutView target = imageDragNativeTargetViews.get(index);
            boolean hovered = index == targetIndex
                    && target.getVisibility() == View.VISIBLE;
            target.animate().cancel();
            target.animate()
                    .scaleX(hovered ? 1.15f : 1f)
                    .scaleY(hovered ? 1.15f : 1f)
                    .setDuration(100L)
                    .start();
        }
        if (targetIndex != previous) {
            if (targetIndex >= 0 && targetIndex < imageDragNativeTargets.size()) {
                performHoverHaptic(imageDragNativeTargetViews.get(targetIndex));
                CharSequence label =
                        imageDragNativeTargets.get(targetIndex).label;
                showCapsuleNearAnchor(imageDragNativeTargetViews.get(targetIndex),
                        label == null ? "" : label.toString());
            } else {
                hideImageDragShareCapsule();
            }
        }
    }

    private View findContentDropIconUnder(float rawX, float rawY) {
        for (AppShortcutView shortcut : shortcutViews) {
            if (shortcut.getVisibility() != View.VISIBLE || !shortcut.isShown()
                    || !shortcut.getGlobalVisibleRect(imageDragShareHitRect)) {
                continue;
            }
            if (imageDragShareHitRect.contains(Math.round(rawX), Math.round(rawY))) {
                return shortcut;
            }
        }
        return null;
    }

    private void setContentDropHoverIcon(View icon) {
        if (hoveredContentDropIcon == icon) {
            return;
        }
        if (hoveredContentDropIcon != null) {
            hoveredContentDropIcon.animate().cancel();
            hoveredContentDropIcon.animate()
                    .scaleX(1f)
                    .scaleY(1f)
                    .setDuration(100L)
                    .start();
        }
        hoveredContentDropIcon = icon;
        if (icon == null) {
            hideImageDragShareCapsule();
            return;
        }
        icon.animate().cancel();
        icon.animate()
                .scaleX(1.12f)
                .scaleY(1.12f)
                .setDuration(100L)
                .start();
        performHoverHaptic(icon);
        showContentDropCapsule(icon);
    }

    private void deliverDraggedContentToApp(LauncherApp app, DragEvent event) {
        ClipData clip = event.getClipData();
        ClipData.Item item = clip != null && clip.getItemCount() > 0
                ? clip.getItemAt(0) : null;
        if (app == null || app.componentName == null || item == null) {
            return;
        }
        Uri uri = item.getUri();
        CharSequence text = item.getText();
        try {
            Intent share;
            if (uri != null && "content".equals(uri.getScheme())) {
                share = new Intent(Intent.ACTION_SEND)
                        .setType(nativeDragMimeType(event))
                        .putExtra(Intent.EXTRA_STREAM, uri)
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                                | Intent.FLAG_GRANT_READ_URI_PERMISSION)
                        .setPackage(app.packageName);
                share.setClipData(ClipData.newUri(
                        getContentResolver(), "OneStep media", uri));
            } else if (!TextUtils.isEmpty(text)) {
                share = new Intent(Intent.ACTION_SEND)
                        .setType("text/plain")
                        .putExtra(Intent.EXTRA_TEXT, text.toString())
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        .setPackage(app.packageName);
            } else {
                return;
            }
            startActivity(share);
            Log.i(TAG, "Native content share to " + app.packageName
                    + (uri != null ? " (stream)" : " (text)"));
        } catch (RuntimeException e) {
            Log.w(TAG, "Native content share failed for " + app.packageName, e);
            
            addOrFocusApp(app);
        }
    }

    private static boolean isNativeMediaDrag(DragEvent event) {
        ClipDescription description = event.getClipDescription();
        if (description == null || description.getMimeTypeCount() == 0) {
            return false;
        }
        for (int index = 0; index < description.getMimeTypeCount(); index++) {
            String mime = description.getMimeType(index);
            if (mime == null || MultiTaskController.APP_DRAG_MIME.equals(mime)) {
                continue;
            }
            if (mime.startsWith("image/") || mime.startsWith("video/")
                    || mime.startsWith("text/") || mime.startsWith("application/")
                    || mime.equals("*/*")) {
                return true;
            }
        }
        return false;
    }

    private static String nativeDragMimeType(DragEvent event) {
        ClipDescription description = event.getClipDescription();
        if (description != null) {
            for (int index = 0; index < description.getMimeTypeCount(); index++) {
                String mime = description.getMimeType(index);
                if (mime != null && (mime.startsWith("image/") || mime.startsWith("video/"))) {
                    return mime;
                }
            }
            for (int index = 0; index < description.getMimeTypeCount(); index++) {
                String mime = description.getMimeType(index);
                if (mime != null && !MultiTaskController.APP_DRAG_MIME.equals(mime)) {
                    return mime;
                }
            }
        }
        return "*/*";
    }

    private float nativeDragScreenX(View host, DragEvent event) {
        int[] location = new int[2];
        host.getLocationOnScreen(location);
        return event.getX() + location[0];
    }

    private float nativeDragScreenY(View host, DragEvent event) {
        int[] location = new int[2];
        host.getLocationOnScreen(location);
        return event.getY() + location[1];
    }

    private boolean deliverNativeContentDrop(View host, DragEvent event) {
        float rawX = nativeDragScreenX(host, event);
        float rawY = nativeDragScreenY(host, event);
        int shareTarget = findImageDragShareTarget(rawX, rawY);
        int slot = findSlotForNativeContentDrop(rawX, rawY);
        if (shareTarget < 0 && slot < 0) {
            
            Log.i(TAG, "Native drag dropped on no target raw=" + rawX + "," + rawY);
            Toast.makeText(this, "松手位置不在槽位上，拖到槽位或应用图标再松手",
                    Toast.LENGTH_SHORT).show();
            return false;
        }
        ClipData clip = event.getClipData();
        ClipData.Item clipItem = clip != null && clip.getItemCount() > 0
                ? clip.getItemAt(0) : null;
        Uri sourceUri = clipItem == null ? null : clipItem.getUri();
        CharSequence dragTextContent = clipItem == null ? null : clipItem.getText();
        boolean textDrag = (sourceUri == null || !"content".equals(sourceUri.getScheme()))
                && !TextUtils.isEmpty(dragTextContent);
        if (!textDrag && (sourceUri == null || !"content".equals(sourceUri.getScheme()))) {
            Log.w(TAG, "Native drag drop has no content URI or text; ignored");
            return false;
        }
        if (textDrag) {
            if (shareTarget >= 0) {
                deliverDraggedTextToShareTarget(shareTarget, dragTextContent.toString());
                return true;
            }
            if (slot >= 0) {
                deliverDraggedTextToSlot(slot, dragTextContent.toString());
                return true;
            }
            return false;
        }
        String mimeType = nativeDragMimeType(event);
        imageDragIoExecutor.execute(() -> {
            File cached = copyNativeDragToCache(sourceUri, mimeType);
            Uri shareableUri = cached == null ? null : localDraggedImageUri(cached);
            mainHandler.post(() -> {
                if (activityDestroyed) {
                    deleteImageDragFile(cached);
                    return;
                }
                if (cached == null || shareableUri == null) {
                    deleteImageDragFile(cached);
                    Toast.makeText(this, "无法读取拖拽内容", Toast.LENGTH_SHORT).show();
                    return;
                }
                if (shareTarget >= 0) {
                    deliverDraggedImageToShareTarget(
                            shareTarget, cached, mimeType, shareableUri);
                } else {
                    deliverDraggedImage(slot, cached, mimeType, shareableUri);
                }
            });
        });
        return true;
    }

    private File copyNativeDragToCache(Uri sourceUri, String mimeType) {
        File directory = imageDragDirectory();
        if (!directory.isDirectory() && !directory.mkdirs()) {
            return null;
        }
        String extension = mimeType.startsWith("video/") ? ".mp4" : ".png";
        File output = new File(directory,
                "native_" + System.currentTimeMillis() + extension);
        try (InputStream in = getContentResolver().openInputStream(sourceUri);
             OutputStream out = new FileOutputStream(output)) {
            byte[] buffer = new byte[8192];
            int read;
            while ((read = in.read(buffer)) >= 0) {
                out.write(buffer, 0, read);
            }
            return output;
        } catch (IOException | RuntimeException e) {
            Log.w(TAG, "Cannot cache native drag content: " + e);
            output.delete();
            return null;
        }
    }

    private void deliverDraggedTextToSlot(int slot, String text) {
        LauncherApp app = windowApps[slot];
        EmbeddedAppHost host = slot >= 0 && slot < MAX_WINDOWS
                ? embeddedHosts[slot] : null;
        if (app == null || TextUtils.isEmpty(text)) {
            return;
        }
        try {
            ClipboardManager clipboard = getSystemService(ClipboardManager.class);
            if (clipboard != null) {
                clipboard.setPrimaryClip(ClipData.newPlainText("onestep-paste", text));
            }
        } catch (RuntimeException e) {
            Log.w(TAG, "Set clipboard for paste injection failed", e);
        }
        final int displayId = host instanceof RootVirtualDisplayHost
                ? ((RootVirtualDisplayHost) host).getDisplayId()
                : -1;
        final boolean accessibilityReady =
                DragShareAccessibilityService.isReady();
        Log.i(TAG, "Clipboard text delivered to slot=" + slot
                + ", package=" + app.packageName
                + ", display=" + displayId
                + ", accessibilityReady=" + accessibilityReady);
        
        new Thread(() -> {
            boolean[] attempt = accessibilityReady && displayId >= 0
                    ? DragShareAccessibilityService.pasteIntoDisplay(displayId, text)
                    : new boolean[]{false, false};
            boolean bridgedFallback = false;
            if (!attempt[1] && host instanceof RootVirtualDisplayHost) {
                
                
                attempt = ((RootVirtualDisplayHost) host).smartPasteIntoHost();
                bridgedFallback = true;
            }
            final boolean[] pasteResult = attempt;
            if (pasteResult[0] || pasteResult[1]) {
                runOnUiThread(() -> resetSlotImeFocusChain(
                        (RootVirtualDisplayHost) host));
            }
            runOnUiThread(() ->
                    showDraggedTextPasteToast(app, accessibilityReady, pasteResult));
        }, "onestep-a11y-paste").start();
    }

    private void resetSlotImeFocusChain(RootVirtualDisplayHost origin) {
        if (activityDestroyed || origin == null) {
            return;
        }
        RootVirtualDisplayHost sibling = null;
        for (int i = 0; i < embeddedHosts.length && sibling == null; i++) {
            if (i != activeMainSlot && embeddedHosts[i] instanceof RootVirtualDisplayHost
                    && ((RootVirtualDisplayHost) embeddedHosts[i]).getDisplayId() > 0) {
                sibling = (RootVirtualDisplayHost) embeddedHosts[i];
            }
        }
        if (sibling == null) {
            origin.imeFocusCycleAsync();
            return;
        }
        sibling.focusHostedDisplayAsync("ime focus cycle away",
                () -> origin.focusHostedDisplayAsync("ime focus cycle back", null));
    }

    private void showDraggedTextPasteToast(LauncherApp app,
            boolean accessibilityReady, boolean[] pasteResult) {
        if (activityDestroyed) {
            return;
        }
        boolean editorLocated = pasteResult[0];
        boolean delivered = pasteResult[1];
        String message;
        if (!accessibilityReady) {
            message = "已复制到剪贴板：系统设置→无障碍→开启「VanStep 智能粘贴」后可自动填入";
        } else if (editorLocated && delivered) {
            message = "已定位输入框并粘贴到「" + app.label + "」";
        } else if (editorLocated) {
            message = "已找到输入框，但「" + app.label + "」未接受粘贴";
        } else if (delivered) {
            message = "已通过输入法通道投递到「" + app.label + "」，若未出现请先点一下输入框再试";
        } else {
            message = "已复制到剪贴板：槽位内没有可接收的输入框，点一下输入框后再拖入即可";
        }
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    private void setHoveredNativeDropSlot(int slot) {
        if (slot >= 0 && isMainPaneSlot(slot)) {
            
            slot = -1;
        }
        if (slot == hoveredNativeDropSlot) {
            return;
        }
        hoveredNativeDropSlot = slot;
        if (workspace == null) {
            return;
        }
        Rect frame = null;
        if (slot >= 0 && slot < MAX_WINDOWS) {
            Rect[] frames = calculateWindowRects();
            frame = slot < frames.length ? frames[slot] : null;
        }
        if (frame == null || frame.isEmpty()) {
            hideNativeDropSlotHighlight();
            return;
        }
        View highlight = ensureNativeDropSlotHighlight();
        FrameLayout.LayoutParams params =
                (FrameLayout.LayoutParams) highlight.getLayoutParams();
        params.leftMargin = frame.left;
        params.topMargin = frame.top;
        params.width = Math.max(0, frame.width());
        params.height = Math.max(0, frame.height());
        highlight.setLayoutParams(params);
        if (highlight.getVisibility() != View.VISIBLE) {
            highlight.setVisibility(View.VISIBLE);
            highlight.setAlpha(0f);
            highlight.animate().alpha(1f).setDuration(120L).start();
        }
        performHoverHaptic(highlight);
    }

    private View ensureNativeDropSlotHighlight() {
        if (nativeDropSlotHighlight != null) {
            return nativeDropSlotHighlight;
        }
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(0x1475AA72);
        drawable.setStroke(dp(2), 0xFF75AA72);
        drawable.setCornerRadius(0f);
        View highlight = new View(this);
        highlight.setBackground(drawable);
        highlight.setClickable(false);
        highlight.setFocusable(false);
        workspace.addView(highlight, new FrameLayout.LayoutParams(0, 0));
        highlight.setVisibility(View.GONE);
        nativeDropSlotHighlight = highlight;
        return highlight;
    }

    private void hideNativeDropSlotHighlight() {
        if (nativeDropSlotHighlight != null
                && nativeDropSlotHighlight.getVisibility() != View.GONE) {
            nativeDropSlotHighlight.setVisibility(View.GONE);
        }
    }

    private int findSlotForNativeContentDrop(float rawX, float rawY) {
        if (workspace == null) {
            return -1;
        }
        int[] location = new int[2];
        workspace.getLocationOnScreen(location);
        float localX = rawX - location[0];
        float localY = rawY - location[1];
        Rect[] frames = calculateWindowRects();
        for (int slot = 0; slot < MAX_WINDOWS && slot < frames.length; slot++) {
            Rect frame = frames[slot];
            if (frame == null || !frame.contains(Math.round(localX), Math.round(localY))) {
                continue;
            }
            if (windowApps[slot] != null && isWindowSlotEnabled(slot)
                    && !embeddedSlotClosing[slot]) {
                return slot;
            }
            return -1;
        }
        return -1;
    }

    private View createDesktopHome() {
        FixedViewportFrameLayout page = new FixedViewportFrameLayout(this);
        page.setCropToFill(true);
        FrameLayout homeRoot = page.getViewport();
        ImageView background = new ImageView(this);
        applyCurrentListBackground(background);
        homeRoot.addView(background, matchFrame());

        LinearLayout home = new LinearLayout(this);
        home.setOrientation(LinearLayout.VERTICAL);
        home.setPadding(0, dp(10), 0, 0);
        home.setBackgroundColor(0x00000000);
        homeRoot.addView(home, matchFrame());

        home.addView(createPagedDesktopAppGrid(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        View dockLine = new View(this);
        dockLine.setBackgroundColor(0x1a315c3e);
        home.addView(dockLine, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(1)));

        FrameLayout dock = new FrameLayout(this);
        dock.setPadding(0, dp(4), 0, dp(26));
        dock.setBackgroundColor(0x1275aa72);
        int dockCount = getDockAppCount();
        int dockStart = Math.max(0, launcherApps.size() - dockCount);
        dock.addView(createAppRows(dockStart, dockCount, desktopGridColumns,
                94, getDesktopGridIconSizeDp(), getDesktopGridTextSizeDp(), true),
                matchFrame());
        home.addView(dock, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(128)));
        return page;
    }

    private View createPagedDesktopAppGrid() {
        FrameLayout panel = new FrameLayout(this);
        panel.setPadding(0, 0, 0, 0);
        panel.setBackgroundColor(Color.TRANSPARENT);

        PagingHorizontalScrollView pager = new PagingHorizontalScrollView(this);
        pager.setFillViewport(true);
        pager.setHorizontalScrollBarEnabled(false);
        pager.setVerticalScrollBarEnabled(false);
        pager.setOverScrollMode(View.OVER_SCROLL_NEVER);
        panel.addView(pager, matchFrame());

        LinearLayout pages = new LinearLayout(this);
        pages.setOrientation(LinearLayout.HORIZONTAL);
        pages.setGravity(Gravity.CENTER_VERTICAL);
        pager.addView(pages, new HorizontalScrollView.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        int appCount = Math.max(0, launcherApps.size() - getDockAppCount());
        int pageSize = desktopGridRows * desktopGridColumns;
        int pageCount = Math.max(1, (appCount + pageSize - 1) / pageSize);
        for (int pageIndex = 0; pageIndex < pageCount; pageIndex++) {
            LinearLayout page = createFixedAppGridPage(pageIndex * pageSize,
                    Math.min(pageSize, Math.max(0, appCount - pageIndex * pageSize)));
            pages.addView(page, new LinearLayout.LayoutParams(dp(320),
                    ViewGroup.LayoutParams.MATCH_PARENT));
        }

        pager.addOnLayoutChangeListener((view, left, top, right, bottom,
                                         oldLeft, oldTop, oldRight, oldBottom) ->
                updatePagedGridPageWidths(pager, pages));
        pager.post(() -> updatePagedGridPageWidths(pager, pages));
        return panel;
    }

    private int getDockAppCount() {
        return Math.min(desktopGridColumns, Math.max(0, launcherApps.size()));
    }

    private void updatePagedGridPageWidths(HorizontalScrollView pager, LinearLayout pages) {
        int pageWidth = Math.max(1, pager.getWidth());
        for (int i = 0; i < pages.getChildCount(); i++) {
            View child = pages.getChildAt(i);
            ViewGroup.LayoutParams lp = child.getLayoutParams();
            if (lp.width != pageWidth) {
                lp.width = pageWidth;
                child.setLayoutParams(lp);
            }
        }
        if (pager instanceof PagingHorizontalScrollView) {
            ((PagingHorizontalScrollView) pager).snapToNearestPage();
        }
    }

    private LinearLayout createFixedAppGridPage(int startIndex, int count) {
        LinearLayout page = new LinearLayout(this);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(0, 0, 0, 0);

        for (int rowIndex = 0; rowIndex < desktopGridRows; rowIndex++) {
            LinearLayout row = new LinearLayout(this);
            row.setGravity(Gravity.CENTER);
            page.addView(row, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

            for (int column = 0; column < desktopGridColumns; column++) {
                int localIndex = rowIndex * desktopGridColumns + column;
                int appIndex = startIndex + localIndex;
                FrameLayout cell = new FrameLayout(this);
                row.addView(cell, new LinearLayout.LayoutParams(0,
                        ViewGroup.LayoutParams.MATCH_PARENT, 1f));

                if (localIndex >= count || appIndex >= launcherApps.size()) {
                    continue;
                }

                LauncherApp app = launcherApps.get(appIndex);
                AppShortcutView shortcut = new AppShortcutView(this, true,
                        getDesktopGridIconSizeDp(), getDesktopGridTextSizeDp());
                shortcut.bind(app);
                shortcut.setTag(app);
                shortcut.setOnClickListener(v -> addOrFocusApp(app));
                    installPressDragGesture(shortcut, app);
                cell.addView(shortcut, matchFrame());
                shortcutViews.add(shortcut);
            }
        }
        return page;
    }

    private int getDesktopGridIconSizeDp() {
        if (desktopGridRows >= 6 || desktopGridColumns >= 5) {
            return 38;
        }
        if (desktopGridRows >= 5 || desktopGridColumns >= 4) {
            return 44;
        }
        return 52;
    }

    private float getDesktopGridTextSizeDp() {
        if (desktopGridRows >= 6 || desktopGridColumns >= 5) {
            return 9f;
        }
        if (desktopGridRows >= 5 || desktopGridColumns >= 4) {
            return 10f;
        }
        return 11f;
    }

    private void loadOneStepSettings() {
        settingsStore = new OneStepSettingsStore(this);
        OneStepSettings settings = settingsStore.load();
        desktopGridRows = settings.desktopGridRows;
        desktopGridColumns = settings.desktopGridColumns;
        topAppIconScalePct = settings.topAppIconScalePct;
        topAppStripSpacingScalePct = settings.topAppStripSpacingScalePct;
        topAppStripVerticalPaddingScalePct = settings.topAppStripVerticalPaddingScalePct;
        topComponentsVisible = settings.topComponentsVisible;
        statusBarSpacingEnabled = settings.statusBarSpacingEnabled;
        verticalWindowLayout = settings.verticalWindowLayout;
        sideWindowCount = settings.sideWindowCount;
        topNavVerticalMarginScalePct = settings.topNavVerticalMarginScalePct;
        oneStepTriggerAreaScalePct = settings.oneStepTriggerAreaScalePct;
        cornerTriggerSensitivityPct = settings.cornerTriggerSensitivityPct;
        logRecordingEnabled = settings.logRecordingEnabled;
    }

    private void reconcileTopAppListConfiguration() {
        OneStepSettingsStore.TopAppListConfig config = settingsStore.loadTopAppListConfig();
        List<String> availableKeys = new ArrayList<>(launcherApps.size());
        Map<String, LauncherApp> appsByKey = new HashMap<>();
        for (LauncherApp app : launcherApps) {
            String key = app.instanceKey();
            availableKeys.add(key);
            appsByKey.put(key, app);
        }
        TopAppListPolicy.State state = TopAppListPolicy.reconcile(
                availableKeys, config.configured, config.orderedKeys, config.selectedKeys);
        List<LauncherApp> orderedCandidates = new ArrayList<>(state.orderedKeys.size());
        List<LauncherApp> selectedApps = new ArrayList<>(state.selectedKeys.size());
        for (String key : state.orderedKeys) {
            LauncherApp app = appsByKey.get(key);
            if (app == null) {
                continue;
            }
            orderedCandidates.add(app);
            if (state.selectedKeys.contains(key)) {
                selectedApps.add(app);
            }
        }
        orderedTopAppCandidates = orderedCandidates;
        topAppStripApps = selectedApps;
        selectedTopAppInstanceKeys = new LinkedHashSet<>(state.selectedKeys);
        Set<String> pinnedSaved = settingsStore.loadTopAppPinnedKeys();
        Set<String> pinned = new LinkedHashSet<>();
        for (String key : state.orderedKeys) {
            if (pinnedSaved.contains(key)) {
                pinned.add(key);
            }
        }
        topAppPinnedInstanceKeys = pinned;
    }

    private void saveTopAppPinnedKeys(Set<String> keys) {
        topAppPinnedInstanceKeys = keys == null
                ? Collections.emptySet() : new LinkedHashSet<>(keys);
        settingsStore.saveTopAppPinnedKeys(topAppPinnedInstanceKeys);
        updateSettingsPageViews();
        rebuildTopChromeContent();
    }

    private List<String> orderTopAppKeysForStrip(List<String> savedOrder) {
        List<String> pinned = new ArrayList<>();
        List<String> rest = new ArrayList<>();
        for (String key : savedOrder) {
            if (topAppPinnedInstanceKeys.contains(key)) {
                pinned.add(key);
            } else {
                rest.add(key);
            }
        }
        int mode = settingsStore.loadTopAppSortMode();
        if (mode == 1) {
            Map<String, Long> lastUsed = topAppLastUsedCache;
            Map<String, Integer> launchCounts = topAppLaunchCountCache;
            Map<String, String> pkgByKey = topAppPackageByKey();
            rest.sort((left, right) -> {
                String leftPkg = pkgByKey.getOrDefault(left, "");
                String rightPkg = pkgByKey.getOrDefault(right, "");
                int leftCount = launchCounts.getOrDefault(leftPkg, 0);
                int rightCount = launchCounts.getOrDefault(rightPkg, 0);
                if (leftCount != rightCount) {
                    return leftCount < rightCount ? 1 : -1;
                }
                long leftTime = lastUsed.getOrDefault(leftPkg, 0L);
                long rightTime = lastUsed.getOrDefault(rightPkg, 0L);
                if (leftTime != rightTime) {
                    return leftTime < rightTime ? 1 : -1;
                }
                return left.compareToIgnoreCase(right);
            });
        } else if (mode == 2) {
            Map<String, String> labels = topAppLabelByKey();
            rest.sort((left, right) -> {
                int byLabel = labels.getOrDefault(left, left)
                        .compareToIgnoreCase(labels.getOrDefault(right, right));
                return byLabel != 0 ? byLabel : left.compareToIgnoreCase(right);
            });
        }
        List<String> result = new ArrayList<>(pinned);
        result.addAll(rest);
        return result;
    }

    private Map<String, String> topAppPackageByKey() {
        Map<String, String> pkgByKey = new HashMap<>();
        for (LauncherApp app : orderedTopAppCandidates) {
            pkgByKey.putIfAbsent(app.instanceKey(), app.packageName);
        }
        for (LauncherApp app : launcherApps) {
            pkgByKey.putIfAbsent(app.instanceKey(), app.packageName);
        }
        return pkgByKey;
    }

    private static final class TopAppUsageStats {
        final Map<String, Long> lastUsed = new HashMap<>();
        final Map<String, Integer> launchCounts = new HashMap<>();
    }

    private TopAppUsageStats queryTopAppUsageStatsSystem() {
        TopAppUsageStats result = new TopAppUsageStats();
        try {
            UsageStatsManager manager = (UsageStatsManager)
                    getSystemService(Context.USAGE_STATS_SERVICE);
            if (manager == null) {
                return result;
            }
            long now = System.currentTimeMillis();
            UsageEvents events = manager.queryEvents(
                    now - 14L * 24L * 60L * 60L * 1000L, now);
            UsageEvents.Event event = new UsageEvents.Event();
            String lastBackgroundedPackage = null;
            String lastResumedPackage = null;
            long lastResumedTime = 0L;
            while (events != null && events.hasNextEvent()) {
                events.getNextEvent(event);
                int eventType = event.getEventType();
                String pkg = event.getPackageName();
                if (pkg == null) {
                    continue;
                }
                boolean countsAsLaunch = false;
                if (eventType == UsageEvents.Event.MOVE_TO_FOREGROUND) {
                    boolean repeatResume = pkg.equals(lastResumedPackage)
                            && event.getTimeStamp() - lastResumedTime < 2000L;
                    if (!pkg.equals(lastBackgroundedPackage) && !repeatResume) {
                        countsAsLaunch = true;
                    }
                    lastResumedPackage = pkg;
                    lastResumedTime = event.getTimeStamp();
                } else if (eventType == UsageEvents.Event.ACTIVITY_PAUSED) {
                    lastBackgroundedPackage = pkg;
                }
                if (!countsAsLaunch) {
                    continue;
                }
                result.launchCounts.merge(pkg, 1, Integer::sum);
                Long prev = result.lastUsed.get(pkg);
                if (prev == null || event.getTimeStamp() > prev) {
                    result.lastUsed.put(pkg, event.getTimeStamp());
                }
            }
        } catch (RuntimeException e) {
            Log.w(TAG, "Query usage events failed", e);
        }
        return result;
    }

    private boolean ensureUsageStatsAccess() {
        try {
            
            
            ShellCommandResult result = runMainPrivilegedCommand(
                    "appops set --user 0 com.hyper.onestep GET_USAGE_STATS allow",
                    "grant usage stats access for app frequency sort", true);
            boolean granted = result != null && result.isSuccess();
            if (granted) {
                Log.i(TAG, "Usage stats access granted via appops");
            }
            return granted;
        } catch (RuntimeException e) {
            Log.w(TAG, "Ensure usage stats access failed", e);
            return false;
        }
    }

    private void refreshTopAppUsageAsync() {
        if (topAppUsageQueryPending) {
            return;
        }
        topAppUsageQueryPending = true;
        mediaRootExecutor.execute(() -> {
            TopAppUsageStats data = queryTopAppUsageStatsSystem();
            if (data.lastUsed.isEmpty() && !usageStatsAccessEnsured) {
                usageStatsAccessEnsured = ensureUsageStatsAccess();
                if (usageStatsAccessEnsured) {
                    data = queryTopAppUsageStatsSystem();
                }
            }
            TopAppUsageStats resolved = data;
            mainHandler.post(() -> {
                topAppUsageQueryPending = false;
                topAppLastUsedCache = resolved.lastUsed;
                topAppLaunchCountCache = resolved.launchCounts;
                Log.i(TAG, "FREQDBG usage refreshed: packages=" + resolved.lastUsed.size()
                        + " sortMode=" + settingsStore.loadTopAppSortMode());
                updateShortcutAppStatuses();
                
                
                updateSettingsPageViews();
            });
        });
    }

    private Map<String, Long> queryTopAppLastUsedWithAccess() {
        TopAppUsageStats data = queryTopAppUsageStatsSystem();
        if (data.lastUsed.isEmpty() && !usageStatsAccessEnsured) {
            usageStatsAccessEnsured = ensureUsageStatsAccess();
            if (usageStatsAccessEnsured) {
                data = queryTopAppUsageStatsSystem();
            }
        }
        topAppLastUsedCache = data.lastUsed;
        topAppLaunchCountCache = data.launchCounts;
        return data.lastUsed;
    }

    private Map<String, String> topAppLabelByKey() {
        Map<String, String> labels = new HashMap<>();
        for (LauncherApp app : orderedTopAppCandidates) {
            labels.putIfAbsent(app.instanceKey(),
                    app.label == null ? "" : app.label);
        }
        for (LauncherApp app : launcherApps) {
            labels.putIfAbsent(app.instanceKey(),
                    app.label == null ? "" : app.label);
        }
        return labels;
    }

    private void saveTopAppListConfiguration(
            List<String> orderedKeys, Set<String> selectedKeys) {
        settingsStore.saveTopAppListConfig(orderedKeys, selectedKeys);
        reconcileTopAppListConfiguration();
        updateSettingsPageViews();
        rebuildTopChromeContent();
    }

    private void applyTopAppListSortMode(int mode) {
        settingsStore.saveTopAppSortMode(mode);
        OneStepSettingsStore.TopAppListConfig config = settingsStore.loadTopAppListConfig();
        if (!config.configured || config.orderedKeys.size() < 2) {
            updateSettingsPageViews();
            return;
        }
        List<String> ordered = new ArrayList<>(config.orderedKeys);
        if (mode == 1) {
            
            applyFrequencyTopAppListSortAsync(ordered, config.selectedKeys);
            return;
        } else if (mode == 2) {
            
            Map<String, String> labels = topAppLabelByKey();
            Collections.sort(ordered, (left, right) -> {
                int byLabel = labels.getOrDefault(left, left)
                        .compareToIgnoreCase(labels.getOrDefault(right, right));
                return byLabel != 0 ? byLabel : left.compareToIgnoreCase(right);
            });
        }
        settingsStore.saveTopAppListConfig(ordered, config.selectedKeys);
        reconcileTopAppListConfiguration();
        updateSettingsPageViews();
        rebuildTopChromeContent();
        
        updateShortcutAppStatuses();
    }

    private void applyFrequencyTopAppListSortAsync(final List<String> ordered,
            final Set<String> selectedKeys) {
        if (topAppUsageQueryPending) {
            return;
        }
        topAppUsageQueryPending = true;
        mediaRootExecutor.execute(() -> {
            TopAppUsageStats data = queryTopAppUsageStatsSystem();
            if (data.lastUsed.isEmpty() && !usageStatsAccessEnsured) {
                usageStatsAccessEnsured = ensureUsageStatsAccess();
                if (usageStatsAccessEnsured) {
                    data = queryTopAppUsageStatsSystem();
                }
            }
            final TopAppUsageStats resolved = data;
            mainHandler.post(() -> {
                topAppUsageQueryPending = false;
                topAppLastUsedCache = resolved.lastUsed;
                topAppLaunchCountCache = resolved.launchCounts;
                Map<String, String> pkgByKey = topAppPackageByKey();
                Collections.sort(ordered, (left, right) -> {
                    long leftTime = resolved.lastUsed.getOrDefault(
                            pkgByKey.getOrDefault(left, ""), 0L);
                    long rightTime = resolved.lastUsed.getOrDefault(
                            pkgByKey.getOrDefault(right, ""), 0L);
                    if (leftTime != rightTime) {
                        return leftTime < rightTime ? 1 : -1;
                    }
                    return left.compareToIgnoreCase(right);
                });
                settingsStore.saveTopAppListConfig(ordered, selectedKeys);
                reconcileTopAppListConfiguration();
                updateSettingsPageViews();
                rebuildTopChromeContent();
                updateShortcutAppStatuses();
            });
        });
    }

    private String resolveDefaultHomeComponentKey() {
        try {
            
            
            Intent homeIntent = new Intent(Intent.ACTION_MAIN)
                    .addCategory(Intent.CATEGORY_HOME);
            ResolveInfo resolved = getPackageManager()
                    .resolveActivity(homeIntent, PackageManager.MATCH_DEFAULT_ONLY);
            if (resolved != null && resolved.activityInfo != null
                    && resolved.activityInfo.packageName != null
                    && !resolved.activityInfo.packageName.equals("android")) {
                return new ComponentName(
                        resolved.activityInfo.packageName,
                        resolved.activityInfo.name).flattenToString();
            }
        } catch (RuntimeException e) {
            Log.w(TAG, "Resolve default home failed", e);
        }
        return null;
    }

    private void loadBuiltInDesktopApps() {
        try {
            builtInDesktopApps = launcherAppRepository.loadHomeApps();
        } catch (RuntimeException e) {
            builtInDesktopApps = Collections.emptyList();
            Log.w(TAG, "Loading system desktop applications failed", e);
        }
        ComponentName selectedComponent = settingsStore.getBuiltInDesktopComponent();
        boolean desktopPreferenceExplicitlySet =
                settingsStore.isDesktopPreferenceExplicitlySet();
        oneStepDesktopSelected = settingsStore.isOneStepDesktopSelected();
        builtInDesktopApp = oneStepDesktopSelected
                ? null : findAppByComponent(builtInDesktopApps, selectedComponent);
        if (!desktopPreferenceExplicitlySet) {
            applyPreferredEmbeddedDesktopDefault();
        } else if (!oneStepDesktopSelected && builtInDesktopApp == null) {
            oneStepDesktopSelected = true;
            settingsStore.saveOneStepDesktop();
        }
        builtInDesktopResolutionFresh = true;
    }

    private void applyPreferredEmbeddedDesktopDefault() {
        LauncherApp preferred = findAppByPackageName(
                builtInDesktopApps, PREFERRED_EMBEDDED_DESKTOP_PACKAGE);
        if (preferred != null) {
            oneStepDesktopSelected = false;
            builtInDesktopApp = preferred;
            settingsStore.saveBuiltInDesktopComponent(preferred.componentName);
            Log.i(TAG, "Auto-embedded preferred Smartisan desktop: "
                    + preferred.componentKey());
        } else {
            oneStepDesktopSelected = true;
            builtInDesktopApp = null;
            settingsStore.saveOneStepDesktop();
        }
    }

    private LauncherApp findAppByPackageName(List<LauncherApp> apps, String packageName) {
        if (packageName == null || apps == null) {
            return null;
        }
        for (LauncherApp app : apps) {
            if (packageName.equals(app.packageName)) {
                return app;
            }
        }
        return null;
    }

    private void loadBuiltInDesktopAppsForStartup() {
        ComponentName selectedComponent = settingsStore.getBuiltInDesktopComponent();
        oneStepDesktopSelected = settingsStore.isOneStepDesktopSelected();
        if (!oneStepDesktopSelected && selectedComponent != null
                && directBootPrewarmDesktopApp != null
                && selectedComponent.equals(directBootPrewarmDesktopApp.componentName)) {
            builtInDesktopApp = directBootPrewarmDesktopApp;
            builtInDesktopApps = Collections.singletonList(directBootPrewarmDesktopApp);
            builtInDesktopResolutionFresh = true;
            return;
        }
        loadBuiltInDesktopApps();
    }

    private LauncherApp findAppByComponent(
            List<LauncherApp> apps, ComponentName componentName) {
        if (componentName == null || apps == null) {
            return null;
        }
        for (LauncherApp app : apps) {
            if (componentName.equals(app.componentName)) {
                return app;
            }
        }
        return null;
    }

    private void saveBuiltInDesktop(LauncherApp app) {
        if (app == null || launcherAppRepository == null) {
            return;
        }
        LauncherApp previousDesktop = oneStepDesktopSelected ? null : builtInDesktopApp;
        LauncherApp resolved;
        try {
            resolved = launcherAppRepository.loadHomeApp(app.componentName);
        } catch (RuntimeException e) {
            resolved = null;
        }
        if (resolved == null) {
            Toast.makeText(this, "该桌面当前不可用", Toast.LENGTH_SHORT).show();
            loadBuiltInDesktopApps();
            updateSettingsPageViews();
            return;
        }
        boolean desktopChanged = previousDesktop == null
                || !previousDesktop.isSameInstance(resolved);
        builtInDesktopApp = resolved;
        oneStepDesktopSelected = false;
        settingsStore.saveBuiltInDesktopComponent(resolved.componentName);
        boolean replaced = false;
        List<LauncherApp> updatedApps = new ArrayList<>(builtInDesktopApps);
        for (int index = 0; index < updatedApps.size(); index++) {
            if (resolved.componentName.equals(updatedApps.get(index).componentName)) {
                updatedApps.set(index, resolved);
                replaced = true;
                break;
            }
        }
        if (!replaced) {
            updatedApps.add(resolved);
        }
        builtInDesktopApps = updatedApps;
        updateSettingsPageViews();
        Toast.makeText(this, "已将“" + resolved.label + "”设为内置桌面",
                Toast.LENGTH_SHORT).show();
        if (desktopChanged) {
            LauncherApp selectedDesktop = resolved;
            stopPreviousBuiltInDesktop(previousDesktop,
                    () -> forceStopBuiltInDesktopBeforeRestart(
                            selectedDesktop, this::restartOneStepTask));
        }
    }

    private void stopPreviousBuiltInDesktop(LauncherApp previousDesktop, Runnable completion) {
        if (previousDesktop == null
                || TextUtils.equals(previousDesktop.packageName, getPackageName())) {
            mainHandler.post(completion);
            return;
        }
        int displayedSlot = findSlot(previousDesktop);
        if (displayedSlot >= 0 && isWindowSlotEnabled(displayedSlot)
                && windowViews[displayedSlot] != null) {
            dismissDisplayedBuiltInDesktop(displayedSlot, previousDesktop, completion);
            return;
        }
        String packageName = previousDesktop.packageName;
        int userId = previousDesktop.userId();
        boolean currentUser = previousDesktop.isCurrentUser();
        try {
            mediaRootExecutor.execute(() -> {
                ShellCommandResult result = runMainPrivilegedCommand(
                        "am force-stop --user " + userId + " " + mainShellQuote(packageName),
                        "force-stop previous built-in desktop " + packageName, true);
                if (!result.isSuccess() && currentUser) {
                    result = runMainPrivilegedCommand(
                            "am force-stop " + mainShellQuote(packageName),
                            "fallback force-stop previous built-in desktop "
                                    + packageName, true);
                }
                if (!result.isSuccess()) {
                    Log.e(TAG, "Force-stop previous built-in desktop failed: "
                            + packageName + " exit=" + result.exitCode);
                }
                mainHandler.post(completion);
            });
        } catch (RuntimeException e) {
            Log.w(TAG, "Queue previous built-in desktop stop failed: "
                    + e.getClass().getSimpleName());
            mainHandler.post(completion);
        }
    }

    private void forceStopBuiltInDesktopBeforeRestart(
            LauncherApp desktopApp, Runnable completion) {
        if (desktopApp == null
                || TextUtils.equals(desktopApp.packageName, getPackageName())) {
            mainHandler.post(completion);
            return;
        }
        String packageName = desktopApp.packageName;
        int userId = desktopApp.userId();
        boolean currentUser = desktopApp.isCurrentUser();
        try {
            mediaRootExecutor.execute(() -> {
                ShellCommandResult result = runMainPrivilegedCommand(
                        "am force-stop --user " + userId + " " + mainShellQuote(packageName),
                        "reset selected built-in desktop before OneStep restart "
                                + packageName, true);
                if (!result.isSuccess() && currentUser) {
                    result = runMainPrivilegedCommand(
                            "am force-stop " + mainShellQuote(packageName),
                            "fallback reset selected built-in desktop before OneStep restart "
                                    + packageName, true);
                }
                if (!result.isSuccess()) {
                    Log.e(TAG, "Reset selected built-in desktop failed: "
                            + packageName + " exit=" + result.exitCode);
                }
                mainHandler.post(completion);
            });
        } catch (RuntimeException e) {
            Log.w(TAG, "Queue selected built-in desktop reset failed: "
                    + e.getClass().getSimpleName());
            mainHandler.post(completion);
        }
    }

    private void restartOneStepTask() {
        if (activityDestroyed) {
            return;
        }
        prepareEmbeddedResourcesForDesktopRestart();
        Intent restartIntent = new Intent(this, MainActivity.class)
                .setAction(Intent.ACTION_MAIN)
                .addCategory(Intent.CATEGORY_HOME)
                .putExtra(EXTRA_SHOW_DESKTOP_HOME, true)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_ACTIVITY_CLEAR_TASK
                        | Intent.FLAG_ACTIVITY_NO_ANIMATION);
        try {
            startActivity(restartIntent);
            overridePendingTransition(0, 0);
        } catch (ActivityNotFoundException | SecurityException e) {
            Log.e(TAG, "Unable to restart OneStep after built-in desktop change", e);
            recreate();
        }
    }

    private void prepareEmbeddedResourcesForDesktopRestart() {
        if (!suppressEmbeddedStarts) {
            suppressEmbeddedStarts = true;
            embeddedStartEpoch++;
            embeddedStartEpochStore.persist(embeddedStartEpoch);
        }
        mainSlotSwitchGeneration++;
        clearPendingMainSlotSwitch();
        releaseEmbeddedResources(true);
    }

    private void saveOneStepDesktop() {
        LauncherApp previousDesktop = oneStepDesktopSelected ? null : builtInDesktopApp;
        builtInDesktopApp = null;
        oneStepDesktopSelected = true;
        settingsStore.saveOneStepDesktop();
        updateSettingsPageViews();
        Toast.makeText(this, "已将“OneStep桌面”设为内置桌面",
                Toast.LENGTH_SHORT).show();
        stopPreviousBuiltInDesktop(previousDesktop, () -> {
            if (activityDestroyed) {
                return;
            }
            rebuildDesktopHomeViews();
            requestDesktopHomeInMain();
        });
    }

    private List<LauncherApp> loadDefaultHomeCandidates() {
        if (launcherAppRepository == null) {
            return Collections.emptyList();
        }
        try {
            return launcherAppRepository.loadDefaultHomeApps();
        } catch (RuntimeException e) {
            Log.w(TAG, "Loading default HOME candidates failed", e);
            return Collections.emptyList();
        }
    }

    private void setDefaultHomeWithRoot(
            LauncherApp app, SettingsPanelController.DefaultHomeResultCallback callback) {
        if (app == null || callback == null) {
            return;
        }
        hookSettingsExecutor.execute(() -> {
            String targetPackage = mainShellQuote(app.packageName);
            String targetComponent = mainShellQuote(app.componentKey());
            int userId = app.userId();
            String command = "target_package=" + targetPackage + "\n"
                    + "target_component=" + targetComponent + "\n"
                    + "user_id=" + userId + "\n"
                    + "set_output=\"$(cmd package set-home-activity --user \"$user_id\" "
                    + "\"$target_component\" 2>&1)\"\n"
                    + "set_status=$?\n"
                    + "if [ \"$set_status\" -ne 0 ]; then\n"
                    + "  cmd role add-role-holder --user \"$user_id\" "
                    + "android.app.role.HOME \"$target_package\" 0 >/dev/null 2>&1\n"
                    + "fi\n"
                    + "attempt=0\n"
                    + "while [ \"$attempt\" -lt 10 ]; do\n"
                    + "  resolved=\"$(cmd package resolve-activity --brief --user "
                    + "\"$user_id\" -a android.intent.action.MAIN "
                    + "-c android.intent.category.HOME 2>&1)\"\n"
                    + "  case \"$resolved\" in\n"
                    + "    *\"$target_package/\"*) printf '%s\\n' \"$resolved\"; exit 0 ;;\n"
                    + "  esac\n"
                    + "  attempt=$((attempt + 1))\n"
                    + "  sleep 0.1\n"
                    + "done\n"
                    + "printf '%s\\n%s\\n' \"$set_output\" \"$resolved\"\n"
                    + "exit 1";
            ShellCommandResult result = runMainPrivilegedCommand(
                    command, "set default HOME to " + app.componentKey(), true);
            String message = result.isSuccess()
                    ? "已将“" + app.label + "”设为默认桌面"
                    : "设置“" + app.label + "”为默认桌面失败";
            mainHandler.post(() -> {
                if (!activityDestroyed) {
                    callback.onResult(result.isSuccess(), message);
                }
            });
        });
    }

    private void enableHyperOsGestureNavigation(
            SettingsPanelController.DefaultHomeResultCallback callback) {
        if (callback == null) {
            return;
        }
        hookSettingsExecutor.execute(() -> {
            String command = "marker_written=0\n"
                    + "state_helper=\n"
                    + "for module_dir in /data/adb/modules/vanstep_ksu_privapp /data/adb/modules/vanstep_magisk_privapp; do\n"
                    + "  if [ -d \"$module_dir\" ] && [ ! -e \"$module_dir/disable\" ] "
                    + "&& [ ! -e \"$module_dir/remove\" ]; then\n"
                    + "    mkdir -p \"$module_dir/hook-config\"\n"
                    + "    : > \"$module_dir/hook-config/enable-hyperos-third-party-gesture\"\n"
                    + "    chmod 0600 \"$module_dir/hook-config/enable-hyperos-third-party-gesture\"\n"
                    + "    if [ -x \"$module_dir/module-state.sh\" ]; then\n"
                    + "      state_helper=\"$module_dir/module-state.sh\"\n"
                    + "    fi\n"
                    + "    marker_written=1\n"
                    + "    break\n"
                    + "  fi\n"
                    + "done\n"
                    + "if [ -n \"$state_helper\" ]; then\n"
                    + "  \"$state_helper\" snapshot-navigation >/dev/null 2>&1\n"
                    + "fi\n"
                    + "settings put global force_fsg_nav_bar 1\n"
                    + "fsg_mode=\"$(settings get global force_fsg_nav_bar 2>/dev/null)\"\n"
                    + "if [ \"$fsg_mode\" = \"1\" ]; then\n"
                    + "  printf 'force_fsg_nav_bar=%s\\nmarker=%s\\n' "
                    + "\"$fsg_mode\" \"$marker_written\"\n"
                    + "  exit 0\n"
                    + "fi\n"
                    + "printf 'force_fsg_nav_bar=%s\\nmarker=%s\\n' "
                    + "\"$fsg_mode\" \"$marker_written\"\n"
                    + "exit 1";
            ShellCommandResult result = runMainPrivilegedCommand(
                    command, "enable HyperOS gesture navigation", true);
            String message = result.isSuccess()
                    ? "已启用 HyperOS 全面屏手势"
                    : "HyperOS 全面屏手势开关写入失败";
            mainHandler.post(() -> {
                if (!activityDestroyed) {
                    callback.onResult(result.isSuccess(), message);
                }
            });
        });
    }

    private OneStepSettingsPage createSettingsPanelController() {
        return new OneStepSettingsPage(this, new SettingsPanelController.Callbacks() {
            @Override public OneStepWindowView activeMainWindowView() {
                return activeMainSlot >= 0 && activeMainSlot < windowViews.length
                        ? windowViews[activeMainSlot] : null;
            }
            @Override public GradientDrawable panelBackground(
                    int fillColor, int strokeColor, float radius) {
                return makePanelBackground(fillColor, strokeColor, radius);
            }
            @Override public ImageView navigationIcon(int drawableResId, String description) {
                return createTopNavImageControl(drawableResId, description);
            }
            @Override public void applyBackground(ImageView target) {
                applyCurrentListBackground(target);
            }
            @Override public void pickBackground() { pickBackgroundFromGallery(); }
            @Override public void previewCornerTrigger() { showCornerTriggerPreview(); }
            @Override public int oneStepTriggerAreaScalePct() {
                return oneStepTriggerAreaScalePct;
            }
            @Override public int cornerTriggerSensitivityPct() {
                return cornerTriggerSensitivityPct;
            }
            @Override public int topNavVerticalMarginScalePct() {
                return topNavVerticalMarginScalePct;
            }
            @Override public int topAppIconScalePct() { return topAppIconScalePct; }
            @Override public int topAppStripSpacingScalePct() {
                return topAppStripSpacingScalePct;
            }
            @Override public int topAppStripVerticalPaddingScalePct() {
                return topAppStripVerticalPaddingScalePct;
            }
            @Override public boolean topComponentsVisible() { return topComponentsVisible; }
            @Override public boolean statusBarSpacingEnabled() {
                return statusBarSpacingEnabled;
            }
            @Override public boolean verticalWindowLayout() { return verticalWindowLayout; }
            @Override public boolean logRecordingEnabled() { return logRecordingEnabled; }
            @Override public int sideWindowCount() { return sideWindowCount; }
            @Override public List<LauncherApp> topAppCandidates() {
                return new ArrayList<>(orderedTopAppCandidates);
            }
            @Override public Set<String> selectedTopAppInstanceKeys() {
                return new LinkedHashSet<>(selectedTopAppInstanceKeys);
            }
            @Override public void saveTopAppList(
                    List<String> orderedKeys, Set<String> selectedKeys) {
                MainActivity.this.saveTopAppListConfiguration(orderedKeys, selectedKeys);
            }
            @Override public int topAppListSortMode() {
                return settingsStore.loadTopAppSortMode();
            }
            @Override public void applyTopAppListSortMode(int mode) {
                MainActivity.this.applyTopAppListSortMode(mode);
            }
            @Override public String defaultHomeComponentKey() {
                return MainActivity.this.resolveDefaultHomeComponentKey();
            }
            @Override public Set<String> topAppPinnedKeys() {
                return new LinkedHashSet<>(topAppPinnedInstanceKeys);
            }
            @Override public void saveTopAppPinnedKeys(Set<String> keys) {
                MainActivity.this.saveTopAppPinnedKeys(keys);
            }
            @Override public List<SettingsPanelController.ShareTargetEntry> shareTargetEntries() {
                return MainActivity.this.loadShareTargetEntries();
            }
            @Override public void saveShareTargetLayout(
                    List<String> order, Set<String> pinned) {
                MainActivity.this.saveShareTargetLayout(order, pinned);
            }
            @Override public Map<String, Long> topAppLastUsedCached() {
                return topAppLastUsedCache;
            }
            @Override public Map<String, Integer> topAppLaunchCountsCached() {
                return topAppLaunchCountCache;
            }
            @Override public Map<String, Long> queryTopAppLastUsedSync() {
                return queryTopAppLastUsedWithAccess();
            }
            @Override public Map<String, Integer> queryTopAppLaunchCountsSync() {
                queryTopAppLastUsedWithAccess();
                return topAppLaunchCountCache;
            }
            @Override public List<LauncherApp> builtInDesktopApps() {
                return new ArrayList<>(builtInDesktopApps);
            }
            @Override public String builtInDesktopComponentKey() {
                return builtInDesktopApp == null ? "" : builtInDesktopApp.componentKey();
            }
            @Override public boolean oneStepDesktopSelected() {
                return oneStepDesktopSelected;
            }
            @Override public void refreshBuiltInDesktopApps() {
                MainActivity.this.loadBuiltInDesktopApps();
            }
            @Override public void saveOneStepDesktop() {
                MainActivity.this.saveOneStepDesktop();
            }
            @Override public void saveBuiltInDesktop(LauncherApp app) {
                MainActivity.this.saveBuiltInDesktop(app);
            }
            @Override public List<LauncherApp> defaultHomeCandidates() {
                return MainActivity.this.loadDefaultHomeCandidates();
            }
            @Override public void setDefaultHome(
                    LauncherApp app,
                    SettingsPanelController.DefaultHomeResultCallback callback) {
                MainActivity.this.setDefaultHomeWithRoot(app, callback);
            }
            @Override public void enableHyperOsGestureNavigation(
                    SettingsPanelController.DefaultHomeResultCallback callback) {
                MainActivity.this.enableHyperOsGestureNavigation(callback);
            }
            @Override public void saveOneStepTriggerAreaScale(int value) {
                MainActivity.this.saveOneStepTriggerAreaScale(value);
            }
            @Override public void saveCornerTriggerSensitivity(int value) {
                MainActivity.this.saveCornerTriggerSensitivity(value);
            }
            @Override public void saveTopNavVerticalMarginScale(int value) {
                MainActivity.this.saveTopNavVerticalMarginScale(value);
            }
            @Override public void saveTopAppIconScale(int value) {
                MainActivity.this.saveTopAppIconScale(value);
            }
            @Override public void saveTopAppStripSpacingScale(int value) {
                MainActivity.this.saveTopAppStripSpacingScale(value);
            }
            @Override public void saveTopAppStripVerticalPaddingScale(int value) {
                MainActivity.this.saveTopAppStripVerticalPaddingScale(value);
            }
            @Override public void saveTopComponentsVisible(boolean visible) {
                MainActivity.this.saveTopComponentsVisible(visible);
            }
            @Override public void saveStatusBarSpacingEnabled(boolean enabled) {
                MainActivity.this.saveStatusBarSpacingEnabled(enabled);
            }
            @Override public void saveVerticalWindowLayout(boolean enabled) {
                MainActivity.this.saveVerticalWindowLayout(enabled);
            }
            @Override public void saveLogRecordingEnabled(boolean enabled) {
                MainActivity.this.saveLogRecordingEnabled(enabled);
            }
            @Override public void saveSideWindowCount(int count) {
                MainActivity.this.saveSideWindowCount(count);
            }
            @Override public void exportSessionLog() {
                MainActivity.this.exportSessionLog();
            }
            @Override public boolean rootAuthorizationGranted() {
                return persistentRootShell.hasConfirmedRootAccess();
            }
            @Override public void requestRootAuthorization(
                    SettingsPanelController.RootAuthorizationResultCallback callback) {
                MainActivity.this.requestRootAuthorization(callback);
            }
            @Override public boolean openKernelSuManager() {
                return MainActivity.this.openKernelSuManager();
            }
            @Override public void loadZygiskHookSettings(
                    SettingsPanelController.HookSettingsResultCallback callback) {
                MainActivity.this.loadZygiskHookSettings(callback);
            }
            @Override public void saveZygiskHookSettings(
                    boolean secureWindowEnabled,
                    boolean statusBarOverlayEnabled,
                    boolean primaryHomeEnhancementEnabled,
                    boolean imageDragSharingEnabled,
                    SettingsPanelController.HookSettingsResultCallback callback) {
                MainActivity.this.saveZygiskHookSettings(
                        secureWindowEnabled, statusBarOverlayEnabled,
                        primaryHomeEnhancementEnabled, imageDragSharingEnabled,
                        callback);
            }
            @Override public void rebootDevice() {
                MainActivity.this.rebootDeviceForHookSettings();
            }
        });
    }

    private TopPanelController createTopPanelController() {
        return new TopPanelController(this, mediaRootExecutor,
                new TopPanelController.Callbacks() {
            @Override public boolean deferWindowSwitchUiWork(int flags) {
                return MainActivity.this.deferWindowSwitchUiWork(flags);
            }
            @Override public boolean pipActive() { return pipActive; }
            @Override public Rect pipRestoreBounds() { return new Rect(pipRestoreBounds); }
            @Override public boolean topComponentsVisible() { return topComponentsVisible; }
            @Override public boolean activityDestroyed() { return activityDestroyed; }
            @Override public void rebuildTopChromeContent() {
                MainActivity.this.rebuildTopChromeContent();
            }
            @Override public void setTopChromeVisible(boolean visible, boolean animate) {
                MainActivity.this.setTopChromeVisible(visible, animate);
            }
            @Override public void schedulePipDockBoundsUpdate() {
                MainActivity.this.schedulePipDockBoundsUpdate();
            }
            @Override public ShellCommandResult runPrivilegedCommand(
                    String command, String description, boolean logOutput) {
                return runMainPrivilegedCommand(command, description, logOutput);
            }
            @Override public String shellQuote(String value) {
                return mainShellQuote(value);
            }
            @Override public GradientDrawable panelBackground(
                    int fillColor, int strokeColor, float radius) {
                return makePanelBackground(fillColor, strokeColor, radius);
            }
            @Override public int topMediaPlayerTopMargin() {
                return getTopMediaPlayerTopMargin();
            }
            @Override public int topMediaAreaHeight() { return getTopMediaAreaHeight(); }
            @Override public int pipDockTopInset() { return getPipDockTopInset(); }
            @Override public FrameLayout rootContainer() { return rootContainer; }
            @Override public LauncherApp createLauncherApp(String packageName) {
                return createLauncherAppForPackage(packageName);
            }
            @Override public void addOrFocusApp(LauncherApp app) {
                MainActivity.this.addOrFocusApp(app);
            }
            @Override public void showTopRegionContent(
                    ContentView.ContentType contentType) {
                showLegacyRegionContent(contentType);
            }
            @Override public int dp(float value) { return MainActivity.this.dp(value); }
        });
    }

    private WindowAnimationController createWindowAnimationController() {
        return new WindowAnimationController(new WindowAnimationController.Callbacks() {
            @Override public OneStepWindowView[] windowViews() { return windowViews; }
            @Override public EmbeddedAppHost[] embeddedHosts() { return embeddedHosts; }
            @Override public LauncherApp[] windowApps() { return windowApps; }
            @Override public ViewGroup workspace() { return workspace; }
            @Override public Handler mainHandler() { return mainHandler; }
            @Override public int activeMainSlot() { return activeMainSlot; }
            @Override public void beginCriticalSection() {
                beginWindowSwitchAnimationCriticalSection();
            }
            @Override public void applyWindowZOrder() {
                MainActivity.this.applyWindowZOrder();
            }
            @Override public void refreshAllEmbeddedSlotLayouts() {
                MainActivity.this.refreshAllEmbeddedSlotLayouts();
            }
            @Override public void scheduleDeferredWorkFlush() {
                scheduleDeferredWindowSwitchWorkFlush();
            }
        });
    }

    private int getCornerTriggerSizePx() {
        return dp(oneStepTriggerAreaSizeDp(oneStepTriggerAreaScalePct));
    }

    private int getCornerTriggerDistancePx() {
        return Math.max(1, Math.round(dp(CORNER_TRIGGER_DISTANCE_DEFAULT_DP)
                * 100f / Math.max(1, cornerTriggerSensitivityPct)));
    }

    private Uri getSelectedBackgroundUri() {
        return settingsStore == null ? null : settingsStore.getBackgroundUri();
    }

    @SuppressLint("MissingPermission")
    private Drawable loadCurrentListBackgroundDrawable() {
        Uri selectedUri = getSelectedBackgroundUri();
        if (selectedUri != null) {
            try (InputStream inputStream = getContentResolver().openInputStream(selectedUri)) {
                Drawable drawable = Drawable.createFromStream(inputStream, selectedUri.toString());
                if (drawable != null) {
                    return drawable;
                }
            } catch (IOException | RuntimeException ignored) {
            }
        }
        try {
            return WallpaperManager.getInstance(this).getDrawable();
        } catch (RuntimeException e) {
            return makeWallpaperFallback();
        }
    }

    private void applyCurrentListBackground(ImageView target) {
        target.setScaleType(ImageView.ScaleType.CENTER_CROP);
        target.setImageDrawable(loadCurrentListBackgroundDrawable());
    }

    private void refreshTopChromeBackground() {
        if (oneStepBackgroundView != null) {
            oneStepBackgroundView.refreshBackground();
        }
    }

    private void invalidateWindowPlaceholderBackgrounds() {
        for (OneStepWindowView windowView : windowViews) {
            if (windowView != null) {
                windowView.invalidatePlaceholderBackground();
            }
        }
    }

    private void showDesktopHomeInMain() {
        if (!desktopHomeRequestPending) {
            return;
        }
        if (activityDestroyed || activeMainSlot < 0 || activeMainSlot >= MAX_WINDOWS) {
            desktopHomeRequestPending = false;
            return;
        }
        if (isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0 || pendingMainAppStartSlot >= 0
                || pendingInternalSettingsSlot >= 0 || pendingDesktopHomeSlot >= 0) {
            mainHandler.removeCallbacks(showDesktopHomeRunnable);
            mainHandler.postDelayed(showDesktopHomeRunnable, 80L);
            return;
        }
        LauncherApp selectedDesktop = resolveBuiltInDesktopApp();
        if (selectedDesktop != null) {
            desktopHomeRequestPending = false;
            showBuiltInDesktopInMain(selectedDesktop);
            return;
        }
        int desktopSlot = findDesktopHomeSlot();
        if (desktopSlot == activeMainSlot) {
            desktopHomeRequestPending = false;
            return;
        }
        desktopHomeRequestPending = false;
        if (desktopSlot >= 0) {
            if (!embeddedSlotClosing[desktopSlot]) {
                switchMainSlot(desktopSlot, true);
            }
            return;
        }

        int emptySideSlot = findEmptySideSlot();
        boolean mainOccupied = windowApps[activeMainSlot] != null
                || isInternalSettingsSlot(activeMainSlot);
        AppLaunchPlacement placement = AppLaunchPlacement.decide(
                activeMainSlot, mainOccupied, emptySideSlot);
        switch (placement.action) {
            case START_IN_MAIN:
                windowViews[activeMainSlot].showDesktopHome();
                renderWindows();
                break;
            case START_IN_SIDE_AND_PROMOTE:
                stageDesktopHomeForMainPromotion(placement.targetSlot);
                break;
            case REPLACE_MAIN:
                replaceMainWithDesktopHome();
                break;
        }
    }

    private LauncherApp resolveBuiltInDesktopApp() {
        if (oneStepDesktopSelected) {
            return null;
        }
        if (launcherAppRepository == null) {
            return null;
        }
        if (builtInDesktopApp == null) {
            loadBuiltInDesktopApps();
            updateSettingsPageViews();
            return builtInDesktopApp;
        }
        if (builtInDesktopResolutionFresh) {
            builtInDesktopResolutionFresh = false;
            return builtInDesktopApp;
        }
        try {
            LauncherApp resolved = launcherAppRepository.loadHomeApp(
                    builtInDesktopApp.componentName);
            if (resolved != null) {
                builtInDesktopApp = resolved;
                return resolved;
            }
        } catch (RuntimeException e) {
            Log.w(TAG, "Resolving selected built-in desktop failed", e);
        }
        loadBuiltInDesktopApps();
        updateSettingsPageViews();
        return builtInDesktopApp;
    }

    private void showBuiltInDesktopInMain(LauncherApp desktopApp) {
        suppressEmbeddedStarts = false;
        int desktopSlot = findSlotByComponent(desktopApp.componentName);
        if (desktopSlot < 0) {
            addOrFocusApp(desktopApp);
            return;
        }

        windowApps[desktopSlot] = desktopApp;
        windowViews[desktopSlot].hideDesktopHome();
        boolean moveExistingDesktop = desktopSlot != activeMainSlot
                && !embeddedSlotClosing[desktopSlot];
        if (moveExistingDesktop) {
            renderWindows();
            switchMainSlot(desktopSlot, true);
            return;
        }

        EmbeddedAppHost host = embeddedHosts[desktopSlot];
        
        
        boolean live = host != null && host.start(desktopApp);
        boolean revealPending = host instanceof RootVirtualDisplayHost
                && ((RootVirtualDisplayHost) host).isHostedSurfaceRevealPending(desktopApp);
        windowViews[desktopSlot].setLiveAppVisible(live && !revealPending);
        renderWindows();
        if (!live && host != null) {
            showEmbeddingHintIfNeeded(host.getUnavailableReason());
        }
    }

    private void requestDesktopHomeInMain() {
        desktopHomeRequestPending = true;
        showDesktopHomeInMain();
    }

    private void stageDesktopHomeForMainPromotion(int slot) {
        if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS || slot == activeMainSlot
                || windowApps[slot] != null || isInternalSettingsSlot(slot)
                || isDesktopHomeSlot(slot) || embeddedSlotClosing[slot]
                || !sideSlotOrder.contains(slot) || isWindowAnimationRunning()
                || mainSlotSwitchPendingSlot >= 0 || mainContentReplacementPendingSlot >= 0
                || pendingMainAppStartSlot >= 0 || pendingInternalSettingsSlot >= 0
                || pendingDesktopHomeSlot >= 0) {
            return;
        }
        pendingDesktopHomeSlot = slot;
        embeddedSyncGenerations[slot]++;
        windowViews[slot].setLiveAppVisible(false);
        scheduleStagedPromotionWatchdog(slot);
        switchMainSlot(slot, true);
    }

    private boolean isPendingDesktopHomeSlot(int slot) {
        return slot >= 0 && slot == pendingDesktopHomeSlot;
    }

    private void showPendingDesktopHomeAfterPromotion(int slot) {
        if (!isPendingDesktopHomeSlot(slot) || slot != activeMainSlot) {
            return;
        }
        pendingDesktopHomeSlot = -1;
        if (windowApps[slot] != null || embeddedSlotClosing[slot]) {
            
            return;
        }
        windowViews[slot].showDesktopHome();
        animateDesktopHomeAppear(slot);
    }

    private void replaceMainWithDesktopHome() {
        int slot = activeMainSlot;
        LauncherApp previousApp = windowApps[slot];
        EmbeddedAppHost previousHost = embeddedHosts[slot];
        boolean previousSettings = isInternalSettingsSlot(slot);
        OneStepWindowView windowView = windowViews[slot];
        if (windowView == null) {
            return;
        }
        if (previousApp == null && !previousSettings) {
            windowView.showDesktopHome();
            renderWindows();
            return;
        }

        if (previousApp != null && previousHost != null) {
            previousHost.invalidateTaskResolution();
        }
        mainSlotSwitchGeneration++;
        clearPendingMainSlotSwitch();
        final int replacementGeneration = ++mainContentReplacementGeneration;
        mainContentReplacementPendingSlot = slot;
        scheduleContentReplacementWatchdog(slot, replacementGeneration);
        windowView.animate().cancel();
        windowView.setScaleX(1f);
        windowView.setScaleY(1f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        windowView.animate()
                .alpha(0f)
                .setDuration(MAIN_APP_REPLACE_FADE_OUT_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> {
                    if (replacementGeneration != mainContentReplacementGeneration) {
                        return;
                    }
                    mainContentReplacementPendingSlot = -1;
                    boolean stillCurrent = previousApp != null
                            ? windowApps[slot] == previousApp
                            : previousSettings && isInternalSettingsSlot(slot);
                    if (activityDestroyed || slot != activeMainSlot || !stillCurrent) {
                        windowView.setAlpha(1f);
                        return;
                    }
                    if (previousApp != null) {
                        embeddedSyncGenerations[slot]++;
                        if (previousHost != null) {
                            previousHost.sendHome();
                        }
                        windowApps[slot] = null;
                        clearHostedAppRevealState(slot);
                    }
                    if (previousSettings) {
                        hideInternalSettingsPage();
                    }
                    renderWindows();
                    windowView.showDesktopHome();
                    Log.i(TAG, "Show desktop HOME in main slot " + slot);
                    animateDesktopHomeAppear(slot);
                })
                .start();
    }

    private boolean isDesktopHomeSlot(int slot) {
        return slot >= 0 && slot < MAX_WINDOWS && windowViews[slot] != null
                && windowViews[slot].isDesktopHomeShown();
    }

    private int findDesktopHomeSlot() {
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (isDesktopHomeSlot(slot)) {
                return slot;
            }
        }
        return -1;
    }

    private boolean isDisplayedMainDesktopSlot(int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS || embeddedSlotClosing[slot]) {
            return false;
        }
        LauncherApp app = windowApps[slot];
        return isDesktopHomeSlot(slot) || (app != null && app.isHomeEntry());
    }

    private int findDisplayedMainDesktopSlot() {
        if (isDisplayedMainDesktopSlot(activeMainSlot)) {
            return activeMainSlot;
        }
        int otherMainSlot = getOtherMainSlot(activeMainSlot);
        if (otherMainSlot >= 0 && isDisplayedMainDesktopSlot(otherMainSlot)) {
            return otherMainSlot;
        }
        for (int slot : sideSlotOrder) {
            if (isWindowSlotEnabled(slot) && isDisplayedMainDesktopSlot(slot)) {
                return slot;
            }
        }
        return -1;
    }

    private void showInternalSettingsPage() {
        dumpSlotState("showSettingsPage");
        if (settingsPanelController == null || activeMainSlot < 0
                || activeMainSlot >= MAX_WINDOWS || isWindowAnimationRunning()
                || mainSlotSwitchPendingSlot >= 0 || mainContentReplacementPendingSlot >= 0
                || pendingMainAppStartSlot >= 0 || pendingInternalSettingsSlot >= 0
                || pendingDesktopHomeSlot >= 0) {
            return;
        }
        if (isInternalSettingsVisible()) {
            int settingsSlot = findInternalSettingsSlot();
            if (settingsSlot >= 0 && settingsSlot != activeMainSlot) {
                switchMainSlot(settingsSlot, true);
            } else {
                settingsPanelController.showInWindow(windowViews[activeMainSlot]);
            }
            return;
        }
        int emptySideSlot = findEmptySideSlot();
        AppLaunchPlacement placement = AppLaunchPlacement.decide(
                activeMainSlot, windowApps[activeMainSlot] != null
                        || isDesktopHomeSlot(activeMainSlot), emptySideSlot);
        if (placement.action == AppLaunchPlacement.Action.START_IN_SIDE_AND_PROMOTE) {
            stageInternalSettingsForMainPromotion(placement.targetSlot);
            return;
        }
        if (placement.action == AppLaunchPlacement.Action.REPLACE_MAIN) {
            replaceMainWithInternalSettings();
            return;
        }
        settingsPanelController.showInWindow(windowViews[activeMainSlot]);
        animateInternalSettingsAppear(activeMainSlot);
    }

    private void hideInternalSettingsPage() {
        pendingInternalSettingsSlot = -1;
        settingsPanelController.hide();
    }

    private boolean isInternalSettingsVisible() {
        return settingsPanelController != null && settingsPanelController.isVisible();
    }

    private boolean isInternalSettingsSlot(int slot) {
        return settingsPanelController != null && slot >= 0 && slot < MAX_WINDOWS
                && settingsPanelController.isShownInWindow(windowViews[slot]);
    }

    private int findInternalSettingsSlot() {
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (isInternalSettingsSlot(slot)) {
                return slot;
            }
        }
        return -1;
    }

    private void updateSettingsPageViews() {
        if (settingsPanelController != null) {
            settingsPanelController.refresh();
        }
    }

    private void saveGridLayout(int rows, int columns) {
        if (!isSupportedGridLayout(rows, columns)) {
            return;
        }
        desktopGridRows = rows;
        desktopGridColumns = columns;
        settingsStore.saveGridLayout(rows, columns);
        updateSettingsPageViews();
        rebuildDesktopHomeViews();
    }

    private void saveOneStepTriggerAreaScale(int scalePct) {
        int sanitized = sanitizeOneStepTriggerAreaScale(scalePct);
        if (sanitized != oneStepTriggerAreaScalePct) {
            oneStepTriggerAreaScalePct = sanitized;
            settingsStore.saveOneStepTriggerAreaScale(sanitized);
            updateCornerTriggerBounds();
            updateSettingsPageViews();
        }
    }

    private void saveCornerTriggerSensitivity(int sensitivityPct) {
        int sanitized = sanitizeCornerTriggerSensitivity(sensitivityPct);
        if (sanitized == cornerTriggerSensitivityPct) {
            return;
        }
        cornerTriggerSensitivityPct = sanitized;
        settingsStore.saveCornerTriggerSensitivity(sanitized);
        updateSettingsPageViews();
    }

    private void saveTopAppIconScale(int scalePct) {
        int sanitized = sanitizeTopAppIconScale(scalePct);
        if (sanitized == topAppIconScalePct) {
            return;
        }
        topAppIconScalePct = sanitized;
        settingsStore.saveTopAppIconScale(sanitized);
        updateSettingsPageViews();
        rebuildTopChromeContent();
    }

    private void saveTopAppStripSpacingScale(int scalePct) {
        int sanitized = sanitizeTopAppStripSpacingScale(scalePct);
        if (sanitized == topAppStripSpacingScalePct) {
            return;
        }
        topAppStripSpacingScalePct = sanitized;
        settingsStore.saveTopAppStripSpacingScale(sanitized);
        updateSettingsPageViews();
        rebuildTopChromeContent();
    }

    private void saveTopAppStripVerticalPaddingScale(int scalePct) {
        int sanitized = sanitizeTopAppStripVerticalPaddingScale(scalePct);
        if (sanitized == topAppStripVerticalPaddingScalePct) {
            return;
        }
        topAppStripVerticalPaddingScalePct = sanitized;
        settingsStore.saveTopAppStripVerticalPaddingScale(sanitized);
        updateSettingsPageViews();
        rebuildTopChromeContent();
    }

    private void saveTopComponentsVisible(boolean visible) {
        if (visible == topComponentsVisible) {
            return;
        }
        topComponentsVisible = visible;
        settingsStore.saveTopComponentsVisible(visible);
        if (!visible) {
            requestPipUndock();
        }
        updateSettingsPageViews();
        rebuildTopChromeContent();
        scheduleEmbeddedSlotRefresh(true);
    }

    private void saveStatusBarSpacingEnabled(boolean enabled) {
        if (enabled == statusBarSpacingEnabled) {
            return;
        }
        statusBarSpacingEnabled = enabled;
        settingsStore.saveStatusBarSpacingEnabled(enabled);
        applyStatusBarForCurrentMode();
        updateSettingsPageViews();
        rebuildTopChromeContent();
        scheduleEmbeddedSlotRefresh(true);
    }

    private void saveVerticalWindowLayout(boolean enabled) {
        if (enabled == verticalWindowLayout) {
            return;
        }
        verticalWindowLayout = enabled;
        settingsStore.saveVerticalWindowLayout(enabled);
        enforceSideWindowCountLimit();
        updateSettingsPageViews();
        rebuildTopChromeContent();
        scheduleEmbeddedSlotRefresh();
    }

    private void saveLogRecordingEnabled(boolean enabled) {
        if (enabled == logRecordingEnabled) {
            return;
        }
        logRecordingEnabled = enabled;
        settingsStore.saveLogRecordingEnabled(enabled);
        if (enabled) {
            startSessionLogRecording();
        } else {
            stopSessionLogRecording();
        }
        updateSettingsPageViews();
    }

    private void startSessionLogRecording() {
        if (sessionLogRecorder != null) {
            return;
        }
        sessionLogRecorder = new SessionLogRecorder(getApplicationContext());
        sessionLogRecorder.start();
    }

    private void stopSessionLogRecording() {
        SessionLogRecorder recorder = sessionLogRecorder;
        sessionLogRecorder = null;
        if (recorder != null) {
            recorder.close();
        }
    }

    private void saveSideWindowCount(int count) {
        int sanitized = sanitizeSideWindowCount(count);
        if (!canUseSideWindowCount(sanitized)) {
            Toast.makeText(this, "不支持该小窗口数量",
                    Toast.LENGTH_SHORT).show();
            return;
        }
        if (sanitized == sideWindowCount) {
            return;
        }
        sideWindowCount = sanitized;
        settingsStore.saveSideWindowCount(sanitized);
        updateSettingsPageViews();
        applyWindowLayout(true);
        scheduleEmbeddedSlotRefresh();
    }

    private void enforceSideWindowCountLimit() {
        int sanitized = sanitizeAllowedSideWindowCount(sideWindowCount);
        if (sanitized == sideWindowCount) {
            return;
        }
        sideWindowCount = sanitized;
        settingsStore.saveSideWindowCount(sanitized);
    }

    private void saveTopNavVerticalMarginScale(int scalePct) {
        int sanitized = sanitizeTopNavVerticalMarginScale(scalePct);
        if (sanitized == topNavVerticalMarginScalePct) {
            return;
        }
        topNavVerticalMarginScalePct = sanitized;
        settingsStore.saveTopNavVerticalMarginScale(sanitized);
        updateSettingsPageViews();
        rebuildTopChromeContent();
    }

    private void pickBackgroundFromGallery() {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("image/*");
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION
                | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        try {
            startActivityForResult(intent, REQUEST_PICK_BACKGROUND);
        } catch (ActivityNotFoundException e) {
            Intent fallback = new Intent(Intent.ACTION_GET_CONTENT);
            fallback.setType("image/*");
            fallback.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            try {
                startActivityForResult(fallback, REQUEST_PICK_BACKGROUND);
            } catch (ActivityNotFoundException ignored) {
                Toast.makeText(this, "找不到相册应用", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void saveSelectedBackground(Uri uri, int flags) {
        if (uri == null) {
            return;
        }
        int readFlag = flags & Intent.FLAG_GRANT_READ_URI_PERMISSION;
        if (readFlag != 0) {
            try {
                getContentResolver().takePersistableUriPermission(uri, readFlag);
            } catch (RuntimeException ignored) {
            }
        }
        settingsStore.saveBackgroundUri(uri);
        updateSettingsPageViews();
        refreshTopChromeBackground();
        rebuildDesktopHomeViews();
        syncSelectedBackgroundToSystem(uri);
    }

    private void syncSelectedBackgroundToSystem(Uri uri) {
        try {
            wallpaperExecutor.execute(() -> {
                try (InputStream inputStream = getContentResolver().openInputStream(uri)) {
                    if (inputStream == null) {
                        throw new IOException("Background image stream unavailable");
                    }
                    WallpaperManager wallpaperManager = WallpaperManager.getInstance(this);
                    if (!wallpaperManager.isWallpaperSupported()
                            || !wallpaperManager.isSetWallpaperAllowed()) {
                        throw new SecurityException("Setting the system wallpaper is disabled");
                    }
                    wallpaperManager.setStream(inputStream, null, true,
                            WallpaperManager.FLAG_SYSTEM);
                    Log.i(TAG, "System wallpaper synchronized with OneStep background");
                } catch (IOException | RuntimeException e) {
                    Log.w(TAG, "Synchronize system wallpaper failed: "
                            + e.getClass().getSimpleName(), e);
                    mainHandler.post(() -> {
                        if (!activityDestroyed) {
                            Toast.makeText(this, "系统壁纸同步失败", Toast.LENGTH_SHORT).show();
                        }
                    });
                }
            });
        } catch (RuntimeException e) {
            Log.w(TAG, "Schedule system wallpaper synchronization failed: "
                    + e.getClass().getSimpleName(), e);
        }
    }

    private void rebuildDesktopHomeViews() {
        for (OneStepWindowView windowView : windowViews) {
            if (windowView != null) {
                windowView.rebuildDesktopHomeIfNeeded();
            }
        }
        renderWindows();
    }

    private LinearLayout createAppRows(int startIndex, int count, int columns, int cellHeightDp,
                                      int iconSizeDp, float textSizeDp, boolean showLabel) {
        LinearLayout rows = new LinearLayout(this);
        rows.setOrientation(LinearLayout.VERTICAL);

        int available = Math.min(count, Math.max(0, launcherApps.size() - startIndex));
        int rowCount = Math.max(1, (available + columns - 1) / columns);
        for (int rowIndex = 0; rowIndex < rowCount; rowIndex++) {
            LinearLayout row = new LinearLayout(this);
            row.setGravity(Gravity.CENTER);
            rows.addView(row, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, dp(cellHeightDp)));

            for (int column = 0; column < columns; column++) {
                int appIndex = startIndex + rowIndex * columns + column;
                FrameLayout cell = new FrameLayout(this);
                row.addView(cell, new LinearLayout.LayoutParams(0,
                        ViewGroup.LayoutParams.MATCH_PARENT, 1f));

                if (appIndex >= launcherApps.size() || appIndex >= startIndex + count) {
                    continue;
                }

                LauncherApp app = launcherApps.get(appIndex);
                AppShortcutView shortcut = new AppShortcutView(this, showLabel, iconSizeDp, textSizeDp);
                shortcut.bind(app);
                shortcut.setTag(app);
                shortcut.setOnClickListener(v -> addOrFocusApp(app));
                    installPressDragGesture(shortcut, app);
                cell.addView(shortcut, matchFrame());
                shortcutViews.add(shortcut);
            }
        }
        return rows;
    }

    private void createEmbeddedHosts() {
        for (int i = 0; i < MAX_WINDOWS; i++) {
            installFreshEmbeddedHost(i);
        }
    }

    private void prewarmRootInputBridge() {
        for (EmbeddedAppHost host : embeddedHosts) {
            if (!(host instanceof RootVirtualDisplayHost)) {
                continue;
            }
            RootVirtualDisplayHost rootHost = (RootVirtualDisplayHost) host;
            if (!rootHost.hasRootAccess()) {
                return;
            }
            rootHost.ensureRootInputBridgeStarted();
            return;
        }
    }

    private void startPipMonitoring() {
        if (activityDestroyed || pipMonitoringActive) {
            return;
        }
        pipMonitoringActive = true;
        pipMonitorGeneration++;
        mainHandler.removeCallbacks(pipMonitorRunnable);
        mainHandler.post(pipMonitorRunnable);
    }

    private void stopPipMonitoring(boolean restorePosition) {
        pipMonitoringActive = false;
        pipMonitorGeneration++;
        pipQueryInFlight = false;
        mainHandler.removeCallbacks(pipMonitorRunnable);
        mainHandler.removeCallbacks(pipDockBoundsUpdateRunnable);
        if (restorePosition) {
            requestPipUndock();
        }
    }

    private void queryPipStateAsync() {
        if (!pipMonitoringActive || activityDestroyed || pipQueryInFlight) {
            return;
        }
        RootVirtualDisplayHost host = findPipBridgeHost();
        if (host == null) {
            scheduleNextPipQuery(PIP_MONITOR_RETRY_INTERVAL_MS);
            return;
        }
        final int generation = pipMonitorGeneration;
        pipQueryInFlight = true;
        try {
            pipDockExecutor.execute(() -> {
                PinnedTaskState state = host.queryPinnedTaskState();
                mainHandler.post(() -> {
                    if (!pipMonitoringActive || activityDestroyed
                            || generation != pipMonitorGeneration) {
                        return;
                    }
                    pipQueryInFlight = false;
                    if (state != null) {
                        applyPinnedTaskState(state);
                    }
                    // When no pinned task exists there is nothing to watch;
                    // polling at the fast interval only burns CPU for zero
                    // state changes, so idle goes to the slow lane.
                    scheduleNextPipQuery(state == null
                            ? PIP_MONITOR_RETRY_INTERVAL_MS
                            : state.active
                            ? PIP_MONITOR_INTERVAL_MS
                            : PIP_MONITOR_IDLE_INTERVAL_MS);
                });
            });
        } catch (RuntimeException e) {
            pipQueryInFlight = false;
            scheduleNextPipQuery(PIP_MONITOR_RETRY_INTERVAL_MS);
        }
    }

    private void scheduleNextPipQuery(long delayMs) {
        if (!pipMonitoringActive || activityDestroyed) {
            return;
        }
        mainHandler.removeCallbacks(pipMonitorRunnable);
        mainHandler.postDelayed(pipMonitorRunnable, delayMs);
    }

    private void applyPinnedTaskState(PinnedTaskState state) {
        if (!state.active) {
            boolean wasActive = pipActive;
            pipActive = false;
            pipDockApplied = false;
            pipTaskId = -1;
            pipRestoreBounds.setEmpty();
            if (wasActive) {
                rebuildTopChromeContent();
            }
            return;
        }

        boolean taskChanged = pipTaskId != state.taskId;
        float previousAspectRatio = getPipAspectRatio();
        if (taskChanged || (!pipDockApplied && !multiWindowMode)) {
            pipRestoreBounds.set(state.bounds);
        }
        boolean aspectRatioChanged = Math.abs(previousAspectRatio - getPipAspectRatio()) > 0.01f;
        boolean needsRebuild = !pipActive || taskChanged || aspectRatioChanged;
        pipActive = true;
        pipTaskId = state.taskId;
        if (taskChanged) {
            pipDockApplied = false;
        }
        if (needsRebuild) {
            rebuildTopChromeContent();
        }
        schedulePipDockBoundsUpdate();
    }

    private RootVirtualDisplayHost findPipBridgeHost() {
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost
                    && ((RootVirtualDisplayHost) host).hasRootAccess()) {
                return (RootVirtualDisplayHost) host;
            }
        }
        return null;
    }

    private void schedulePipDockBoundsUpdate() {
        mainHandler.removeCallbacks(pipDockBoundsUpdateRunnable);
        if (!shouldDockPip()) {
            return;
        }
        mainHandler.post(pipDockBoundsUpdateRunnable);
    }

    private boolean shouldDockPip() {
        FrameLayout pipDockSlot = topPanelController == null
                ? null : topPanelController.getPipDockSlot();
        return pipMonitoringActive && pipActive && pipTaskId > 0
                && multiWindowMode && !exitOneStepPending && pipDockSlot != null;
    }

    private void requestPipDockFromSlot() {
        if (!shouldDockPip() || pipDockInFlight || topChromeContainer == null
                || Math.abs(topChromeContainer.getTranslationY()) > 0.5f) {
            return;
        }
        Rect targetBounds = new Rect();
        FrameLayout pipDockSlot = topPanelController.getPipDockSlot();
        if (pipDockSlot == null || !pipDockSlot.getGlobalVisibleRect(targetBounds)
                || targetBounds.width() < dp(48) || targetBounds.height() < dp(48)
                || pipRestoreBounds.isEmpty()) {
            return;
        }
        RootVirtualDisplayHost host = findPipBridgeHost();
        if (host == null) {
            return;
        }
        final int taskId = pipTaskId;
        final Rect restoreBounds = new Rect(pipRestoreBounds);
        final Rect requestedBounds = new Rect(targetBounds);
        pipDockInFlight = true;
        try {
            pipDockExecutor.execute(() -> {
                boolean success = host.dockPinnedTask(taskId, requestedBounds, restoreBounds);
                mainHandler.post(() -> {
                    pipDockInFlight = false;
                    if (activityDestroyed || taskId != pipTaskId) {
                        return;
                    }
                    if (success && shouldDockPip()) {
                        pipDockApplied = true;
                    }
                });
            });
        } catch (RuntimeException e) {
            pipDockInFlight = false;
        }
    }

    private void requestPipUndock() {
        if (pipTaskId <= 0 || pipRestoreBounds.isEmpty()) {
            pipDockApplied = false;
            return;
        }
        RootVirtualDisplayHost host = findPipBridgeHost();
        if (host == null) {
            return;
        }
        final int taskId = pipTaskId;
        final Rect restoreBounds = new Rect(pipRestoreBounds);
        pipDockApplied = false;
        try {
            pipDockExecutor.execute(() -> host.undockPinnedTask(taskId, restoreBounds));
        } catch (RuntimeException ignored) {
        }
    }

    private void installFreshEmbeddedHost(int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS || windowViews[slot] == null) {
            return;
        }
        if (slot == 0 && directBootBridgePrewarmHost != null
                && directBootPrewarmDesktopApp != null && builtInDesktopApp != null
                && directBootPrewarmDesktopApp.isSameInstance(builtInDesktopApp)) {
            RootVirtualDisplayHost prewarmHost = directBootBridgePrewarmHost;
            directBootBridgePrewarmHost = null;
            directBootPrewarmDesktopApp = null;
            prewarmHost.completeDirectBootPrewarm();
            embeddedHosts[slot] = prewarmHost;
            windowViews[slot].attachEmbeddedHost(prewarmHost.getView());
            Log.i(TAG, "Adopted Direct Boot virtual display for slot " + slot
                    + ": display=" + prewarmHost.getDisplayId());
            return;
        }
        EmbeddedAppHost host = createEmbeddedHost(this, slot);
        embeddedHosts[slot] = host;
        if (host.isAvailable()) {
            windowViews[slot].attachEmbeddedHost(host.getView());
            Log.i(TAG, "Embedded host ready for slot " + slot);
        } else {
            Log.w(TAG, "Embedded host unavailable for slot " + slot + ": "
                    + host.getUnavailableReason());
        }
    }

    private EmbeddedAppHost createEmbeddedHost(Context context, int slot) {
        EmbeddedAppHost rootHost = new RootVirtualDisplayHost(
                this, context, slot, rootVirtualDisplayCallbacks);
        if (rootHost.isAvailable()) {
            Log.i(TAG, "Using high-resolution virtual display host for slot " + slot);
            return rootHost;
        }
        Log.i(TAG, "Root virtual display host unavailable for slot " + slot + ": "
                + rootHost.getUnavailableReason());

        if (hasGrantedSystemEmbeddingPermission()) {
            EmbeddedAppHost systemHost = createHiddenActivityViewHost(context);
            if (systemHost.isAvailable()) {
                Log.i(TAG, "Using system ActivityView host for slot " + slot);
                return systemHost;
            }
            Log.i(TAG, "System ActivityView host unavailable for slot " + slot + ": "
                    + systemHost.getUnavailableReason());
        }

        return createHiddenActivityViewHost(context);
    }

    private HiddenActivityViewHost createHiddenActivityViewHost(Context context) {
        return new HiddenActivityViewHost(
                context, () -> !suppressEmbeddedStarts, this::closeHiddenActivityViewApp);
    }

    private void closeHiddenActivityViewApp(LauncherApp app, Runnable onClosed) {
        Runnable finish = () -> {
            if (onClosed != null) {
                onClosed.run();
            }
        };
        String packageName = app == null ? "" : app.packageName;
        if (TextUtils.isEmpty(packageName)) {
            mainHandler.post(finish);
            return;
        }
        if (!DismissedAppClosePolicy.shouldForceStop(app.isHomeEntry())) {
            Log.i(TAG, "Keep HOME package running after ActivityView dismissal: "
                    + packageName);
            mainHandler.post(finish);
            return;
        }
        try {
            mediaRootExecutor.execute(() -> {
                int userId = app.userId();
                ShellCommandResult result = runMainPrivilegedCommand(
                        "am force-stop --user " + userId + " " + mainShellQuote(packageName),
                        "force-stop dismissed ActivityView app " + packageName, true);
                if (!result.isSuccess() && app.isCurrentUser()) {
                    result = runMainPrivilegedCommand(
                            "am force-stop " + mainShellQuote(packageName),
                            "fallback force-stop dismissed ActivityView app " + packageName, true);
                }
                if (!result.isSuccess()) {
                    Log.e(TAG, "Force-stop dismissed ActivityView app failed: "
                            + packageName + " exit=" + result.exitCode);
                }
                mainHandler.post(finish);
            });
        } catch (RuntimeException e) {
            Log.w(TAG, "Queue dismissed ActivityView close failed: "
                    + e.getClass().getSimpleName());
            mainHandler.post(finish);
        }
    }

    private ImageDragSessionController createImageDragSessionController() {
        return new ImageDragSessionController(
                new ImageDragSessionController.Callbacks() {
                    @Override public ViewGroup previewContainer() {
                        return rootContainer;
                    }

                    @Override public int previewDisplayId() {
                        return getActivityDisplayId();
                    }

                    @Override public View workspace() { return workspace; }
                    @Override public Rect[] windowFrames() { return calculateWindowRects(); }
                    @Override public int slotCount() { return MAX_WINDOWS; }

                    @Override public boolean canDropOnSlot(
                            int sourceSlot, int candidateSlot) {
                        return candidateSlot >= 0 && candidateSlot < MAX_WINDOWS
                                && candidateSlot != sourceSlot
                                && isWindowSlotEnabled(candidateSlot)
                                && !embeddedSlotClosing[candidateSlot]
                                && windowApps[candidateSlot] != null;
                    }

                    @Override public void cancelInjectedSourceTouch(int sourceSlot) {
                        EmbeddedAppHost host = sourceSlot >= 0 && sourceSlot < MAX_WINDOWS
                                ? embeddedHosts[sourceSlot] : null;
                        if (host instanceof RootVirtualDisplayHost) {
                            ((RootVirtualDisplayHost) host).cancelInjectedTouchForImageDrag();
                        }
                    }

                    @Override public void showShareTargets(String mimeType) {
                        showImageDragShareTargets(mimeType);
                    }

                    @Override public int findShareTarget(float rawX, float rawY) {
                        return findImageDragShareTarget(rawX, rawY);
                    }

                    @Override public void setHoveredShareTarget(int targetIndex) {
                        setHoveredImageDragShareTarget(targetIndex);
                    }

                    @Override public void hideShareTargets() {
                        hideImageDragShareTargets();
                    }

                    @Override public void deliverToShareTarget(
                            int targetIndex, File imageFile,
                            String mimeType, Uri sourceUri) {
                        deliverDraggedImageToShareTarget(
                                targetIndex, imageFile, mimeType, sourceUri);
                    }

                    @Override public void deliverToSlot(
                            int slot, File imageFile, String mimeType, Uri sourceUri) {
                        deliverDraggedImage(slot, imageFile, mimeType, sourceUri);
                    }

                    @Override public int dp(float value) {
                        return MainActivity.this.dp(value);
                    }
                });
    }

    private boolean canAcceptImageDragSource(
            int callingUid, int sourceDisplayId, String sourcePackage) {
        if (callingUid <= 0
                || !ImageDragSourcePolicy.isAllowed(sourcePackage, sourceDisplayId)) {
            return false;
        }
        String[] packages = getPackageManager().getPackagesForUid(callingUid);
        boolean packageMatches = false;
        if (packages != null) {
            for (String packageName : packages) {
                if (TextUtils.equals(sourcePackage, packageName)) {
                    packageMatches = true;
                    break;
                }
            }
        }
        return packageMatches && runOnMainBlocking(() -> {
            RootVirtualDisplayHost sourceHost = findRootVirtualDisplayHost(sourceDisplayId);
            if (sourceHost == null || !sourceHost.hasActiveTouchForImageDrag()) {
                return false;
            }
            int sourceSlot = sourceHost.getSlot();
            LauncherApp sourceApp = sourceSlot >= 0 && sourceSlot < MAX_WINDOWS
                    ? windowApps[sourceSlot] : null;
            return sourceApp != null && isWindowSlotEnabled(sourceSlot)
                    && !embeddedSlotClosing[sourceSlot]
                    && TextUtils.equals(sourcePackage, sourceApp.packageName);
        }, 500L);
    }

    private boolean beginImageDragFileBlocking(
            int sourceDisplayId, String sourcePackage, File imageFile,
            String mimeType, Uri sourceUri) {
        return runOnMainBlocking(() -> beginImageDragOnMain(
                sourceDisplayId, sourcePackage, imageFile, mimeType, sourceUri),
                IMAGE_DRAG_CALLBACK_TIMEOUT_MS);
    }

    private boolean runOnMainBlocking(BooleanSupplier operation, long timeoutMs) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return operation.getAsBoolean();
        }
        AtomicBoolean accepted = new AtomicBoolean();
        AtomicBoolean expired = new AtomicBoolean();
        CountDownLatch handled = new CountDownLatch(1);
        Runnable request = () -> {
            try {
                if (!expired.get()) {
                    accepted.set(operation.getAsBoolean());
                }
            } finally {
                handled.countDown();
            }
        };
        if (!mainHandler.post(request)) {
            return false;
        }
        try {
            if (!handled.await(timeoutMs, TimeUnit.MILLISECONDS)) {
                expired.set(true);
                mainHandler.removeCallbacks(request);
                return false;
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            expired.set(true);
            mainHandler.removeCallbacks(request);
            return false;
        }
        return accepted.get();
    }

    private boolean beginImageDragOnMain(
            int sourceDisplayId, String sourcePackage, File imageFile,
            String mimeType, Uri sourceUri) {
        RootVirtualDisplayHost sourceHost = findRootVirtualDisplayHost(sourceDisplayId);
        if (sourceHost == null || imageDragSessionController == null
                || !sourceHost.hasActiveTouchForImageDrag()) {
            return false;
        }
        int sourceSlot = sourceHost.getSlot();
        LauncherApp sourceApp = sourceSlot >= 0 && sourceSlot < MAX_WINDOWS
                ? windowApps[sourceSlot] : null;
        if (sourceApp == null || !isWindowSlotEnabled(sourceSlot)
                || embeddedSlotClosing[sourceSlot]
                || !TextUtils.equals(sourcePackage, sourceApp.packageName)) {
            return false;
        }
        Uri effectiveSourceUri = sourceUri;
        if (effectiveSourceUri == null
                || !"content".equals(effectiveSourceUri.getScheme())) {
            effectiveSourceUri = localDraggedImageUri(imageFile);
        }
        if (effectiveSourceUri == null) {
            Log.w(TAG, "Cannot expose generic dragged media file to OneStep targets");
            return false;
        }
        boolean started = imageDragSessionController.begin(
                sourceSlot, imageFile,
                TextUtils.isEmpty(mimeType) ? "image/*" : mimeType,
                effectiveSourceUri,
                sourceHost.getLatestTouchRawX(), sourceHost.getLatestTouchRawY());
        Log.i(TAG, "image drag session started=" + started
                + ", source=" + sourcePackage + ", slot=" + sourceSlot
                + ", previewDisplay=" + getActivityDisplayId());
        return started;
    }

    private void deliverDraggedTextToShareTarget(int targetIndex, String text) {
        ImageDragShareEntry entry = targetIndex >= 0
                && targetIndex < imageDragShareEntries.size()
                ? imageDragShareEntries.get(targetIndex) : null;
        ImageDragShareTarget target = entry == null ? null : entry.target;
        if (activityDestroyed || entry == null || target == null || TextUtils.isEmpty(text)) {
            return;
        }
        String mimeType = "text/plain";
        ResolveInfo resolved = resolveImageDragShareActivity(target, mimeType);
        if (resolved == null || resolved.activityInfo == null) {
            Log.w(TAG, "Dragged text share target unavailable: " + target);
            Toast.makeText(this, "该目标不支持文本分享", Toast.LENGTH_SHORT).show();
            return;
        }
        Intent share = new Intent(Intent.ACTION_SEND)
                .addCategory(Intent.CATEGORY_DEFAULT)
                .setPackage(target.packageName())
                .setType(mimeType)
                .setComponent(new ComponentName(
                        resolved.activityInfo.packageName, resolved.activityInfo.name))
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                .putExtra(Intent.EXTRA_TEXT, text);
        if (target.initializesAppBeforeColdStartShare()) {
            share.putExtra(EXTRA_IMAGE_SHARE_ROUTE, true)
                    .putExtra(EXTRA_IMAGE_SHARE_WAIT_FOR_APP_READY, true);
        }
        if (!launchImageDragShareTarget(entry, share)) {
            Log.w(TAG, "Dragged text share launch failed: " + target);
            return;
        }
        Log.i(TAG, "Dragged text share launched: target=" + target
                + ", component=" + share.getComponent());
    }

    private void deliverDraggedImageToShareTarget(
            int targetIndex, File imageFile, String mimeType, Uri sourceUri) {
        ImageDragShareEntry entry = targetIndex >= 0
                && targetIndex < imageDragShareEntries.size()
                ? imageDragShareEntries.get(targetIndex) : null;
        ImageDragShareTarget target = entry == null ? null : entry.target;
        if (activityDestroyed || entry == null || target == null
                || imageFile == null || !imageFile.isFile()
                || sourceUri == null || !"content".equals(sourceUri.getScheme())) {
            deleteImageDragFile(imageFile);
            return;
        }
        String resolvedMime = TextUtils.isEmpty(mimeType) ? "image/*" : mimeType;
        Uri shareUri = grantDraggedImageUri(
                target.packageName(), sourceUri, imageFile, resolvedMime);
        if (shareUri == null) {
            deleteImageDragFile(imageFile);
            return;
        }
        Intent share = createImageDragShareTargetIntent(
                target, shareUri, resolvedMime);
        if (share == null) {
            Log.w(TAG, "Dragged media share target unavailable: " + target);
            deleteImageDragFile(imageFile);
            return;
        }
        if (!launchImageDragShareTarget(entry, share)) {
            Log.w(TAG, "Dragged media share launch failed: " + target);
            deleteImageDragFile(imageFile);
            return;
        }
        Log.i(TAG, "Dragged media share launched: target=" + target
                + ", user=" + (entry.app == null ? 0 : entry.app.userId())
                + ", component=" + share.getComponent()
                + ", sourceAuthority=" + shareUri.getAuthority());
        scheduleImageDragFileDeletion(imageFile);
    }

    private Uri grantDraggedImageUri(
            String packageName, Uri originalUri, File imageFile, String mimeType) {
        Uri shareUri = originalUri;
        if (isQqPackage(packageName) && isOneStepDraggedUri(originalUri)) {
            Uri mediaUri = publishQqCompatibleMedia(imageFile, mimeType);
            if (mediaUri != null) {
                shareUri = mediaUri;
                Log.i(TAG, "Published QQ-compatible media URI: " + mediaUri);
                scheduleImageDragMediaDeletion(mediaUri);
            } else {
                Log.w(TAG, "Cannot publish QQ-compatible media URI; use OneStep cache");
            }
        }
        if (!TextUtils.isEmpty(packageName) && shareUri != null
                && "content".equals(shareUri.getScheme())) {
            try {
                grantUriPermission(packageName, shareUri,
                        Intent.FLAG_GRANT_READ_URI_PERMISSION);
                return shareUri;
            } catch (RuntimeException e) {
                Log.w(TAG, "Original dragged media grant failed; use OneStep cache", e);
            }
        }
        Uri localUri = localDraggedImageUri(imageFile);
        if (localUri == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        try {
            grantUriPermission(packageName, localUri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION);
            return localUri;
        } catch (RuntimeException e) {
            Log.w(TAG, "OneStep cached dragged media grant failed", e);
            return null;
        }
    }

    private boolean isQqPackage(String packageName) {
        return TextUtils.equals(ImageShareTargetPolicy.QQ_PACKAGE, packageName);
    }

    private boolean isOneStepDraggedUri(Uri uri) {
        return uri != null
                && "content".equals(uri.getScheme())
                && TextUtils.equals(getPackageName() + ".drag-files", uri.getAuthority());
    }

    private Uri publishQqCompatibleMedia(File imageFile, String mimeType) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q
                || imageFile == null || !imageFile.isFile()) {
            return null;
        }
        boolean video = ImageDragSourcePolicy.isVideoMimeType(mimeType);
        String mediaMime;
        if (video) {
            mediaMime = TextUtils.equals(mimeType, "video/*")
                    ? "video/mp4" : mimeType;
        } else {
            mediaMime = ImageDragSourcePolicy.isImageMimeType(mimeType)
                    && !TextUtils.equals(mimeType, "image/*") ? mimeType : "image/png";
        }
        String extension = ImageFileNamePolicy.extensionForMime(mediaMime);
        ContentValues values = new ContentValues();
        values.put(MediaStore.MediaColumns.DISPLAY_NAME,
                "OneStep-" + UUID.randomUUID() + extension);
        values.put(MediaStore.MediaColumns.MIME_TYPE, mediaMime);
        values.put(MediaStore.MediaColumns.RELATIVE_PATH,
                (video ? Environment.DIRECTORY_MOVIES : Environment.DIRECTORY_PICTURES)
                        + "/OneStep/");
        values.put(MediaStore.MediaColumns.IS_PENDING, 1);
        ContentResolver resolver = getContentResolver();
        Uri mediaUri = null;
        try {
            mediaUri = resolver.insert(
                    video ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI
                            : MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    values);
            if (mediaUri == null) {
                return null;
            }
            try (InputStream input = new FileInputStream(imageFile);
                 OutputStream output = resolver.openOutputStream(mediaUri, "w")) {
                if (output == null) {
                    throw new IOException("MediaStore returned a null output stream");
                }
                byte[] buffer = new byte[128 * 1024];
                int count;
                while ((count = input.read(buffer)) >= 0) {
                    if (count > 0) {
                        output.write(buffer, 0, count);
                    }
                }
                output.flush();
            }
            ContentValues completed = new ContentValues();
            completed.put(MediaStore.MediaColumns.IS_PENDING, 0);
            resolver.update(mediaUri, completed, null, null);
            return mediaUri;
        } catch (IOException | RuntimeException error) {
            Log.w(TAG, "Cannot publish QQ-compatible media", error);
            if (mediaUri != null) {
                try {
                    resolver.delete(mediaUri, null, null);
                } catch (RuntimeException cleanupError) {
                    Log.w(TAG, "Cannot remove incomplete QQ-compatible media", cleanupError);
                }
            }
            return null;
        }
    }

    private void scheduleImageDragMediaDeletion(Uri mediaUri) {
        if (mediaUri == null) {
            return;
        }
        mainHandler.postDelayed(() -> {
            try {
                getContentResolver().delete(mediaUri, null, null);
            } catch (RuntimeException error) {
                Log.w(TAG, "Cannot remove temporary QQ-compatible media", error);
            }
        }, IMAGE_DRAG_CACHE_TTL_MS);
    }

    private Uri localDraggedImageUri(File imageFile) {
        if (imageFile == null || !imageFile.isFile()) {
            return null;
        }
        try {
            return FileProvider.getUriForFile(
                    this, getPackageName() + ".drag-files", imageFile);
        } catch (RuntimeException e) {
            Log.w(TAG, "Cannot create local dragged media URI", e);
            return null;
        }
    }

    private Intent createImageDragShareTargetIntent(
            ImageDragShareTarget target, Uri uri, String mimeType) {
        ResolveInfo resolved = resolveImageDragShareActivity(target, mimeType);
        if (resolved == null || resolved.activityInfo == null) {
            return null;
        }
        Intent share = new Intent(Intent.ACTION_SEND)
                .addCategory(Intent.CATEGORY_DEFAULT)
                .setPackage(target.packageName())
                .setType(mimeType)
                .setComponent(new ComponentName(
                        resolved.activityInfo.packageName, resolved.activityInfo.name))
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_GRANT_READ_URI_PERMISSION);
        if (target.initializesAppBeforeColdStartShare()) {
            share.putExtra(EXTRA_IMAGE_SHARE_ROUTE, true)
                    .putExtra(EXTRA_IMAGE_SHARE_WAIT_FOR_APP_READY, true);
        }
        share.putExtra(Intent.EXTRA_STREAM, uri);
        share.setClipData(ClipData.newUri(
                getContentResolver(), "OneStep media", uri));
        return share;
    }

    private ResolveInfo resolveImageDragShareActivity(
            ImageDragShareTarget target, String mimeType) {
        if (target == null || TextUtils.isEmpty(mimeType)) {
            return null;
        }
        Intent probe = new Intent(Intent.ACTION_SEND)
                .addCategory(Intent.CATEGORY_DEFAULT)
                .setPackage(target.packageName())
                .setType(mimeType);
        List<ResolveInfo> candidates;
        try {
            candidates = getPackageManager().queryIntentActivities(
                    probe, PackageManager.MATCH_DEFAULT_ONLY);
        } catch (RuntimeException e) {
            Log.w(TAG, "Query drag share target failed: " + target, e);
            return null;
        }
        ResolveInfo selected = null;
        int selectedPriority = Integer.MAX_VALUE;
        for (ResolveInfo candidate : candidates) {
            if (candidate != null && candidate.activityInfo != null
                    && TextUtils.equals(
                    target.packageName(), candidate.activityInfo.packageName)) {
                int priority = target.activityMatchPriority(candidate.activityInfo.name);
                if (priority >= 0 && priority < selectedPriority) {
                    selected = candidate;
                    selectedPriority = priority;
                }
            }
        }
        return selected;
    }

    private boolean launchImageDragShareTarget(
            ImageDragShareEntry entry, Intent share) {
        ImageDragShareTarget target = entry.target;
        LauncherApp targetApp = entry.app;
        if (!target.usesAppInstance()) {
            return launchDirectShareInContainer(target, share);
        }
        int targetSlot = targetApp == null ? -1 : findSlot(targetApp);
        if (targetSlot >= 0) {
            EmbeddedAppHost host = embeddedHosts[targetSlot];
            if (host instanceof RootVirtualDisplayHost
                    && ((RootVirtualDisplayHost) host)
                    .launchImageShareActivity(targetApp, share)) {
                armImageSharePromotion(targetSlot, targetApp, share.getComponent());
                return true;
            }
        }
        if (targetApp != null && target.usesAppInstance()) {
            routedLaunchIntents.put(targetApp.instanceKey(), share);
            addOrFocusApp(targetApp);
            return true;
        }
        try {
            ActivityOptions options = ActivityOptions.makeBasic();
            options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
            startActivity(share, options.toBundle());
            return true;
        } catch (ActivityNotFoundException | SecurityException e) {
            Log.w(TAG, "Cannot start drag share target on display 0: " + target, e);
            return false;
        }
    }

    private boolean launchDirectShareInContainer(
            ImageDragShareTarget target, Intent share) {
        if (share == null || share.getComponent() == null || activityDestroyed) {
            return false;
        }
        EmbeddedAppHost emptyHost = null;
        int targetSlot = findEmptySideSlot();
        if (targetSlot < 0) {
            targetSlot = findEmptyInactiveMainSlot();
        }
        if (targetSlot >= 0 && targetSlot < MAX_WINDOWS) {
            emptyHost = embeddedHosts[targetSlot];
        }
        if (targetSlot >= 0 && !(emptyHost instanceof RootVirtualDisplayHost)) {
            Log.w(TAG, "Cannot place direct share in slot without root display host: slot="
                    + targetSlot);
            return false;
        }

        LauncherApp directShareApp = new LauncherApp(
                imageDragShareTargetDescription(target),
                share.getComponent(),
                getDrawable(imageDragShareTargetDrawable(target)));
        Intent routedShare = new Intent(share)
                .putExtra(EXTRA_IMAGE_SHARE_ROUTE, true);
        routedShare.removeExtra(EXTRA_IMAGE_SHARE_WAIT_FOR_APP_READY);
        routedLaunchIntents.put(directShareApp.instanceKey(), routedShare);

        if (targetSlot >= 0 && targetSlot != activeMainSlot) {
            startAppInSlot(targetSlot, directShareApp);
            Log.i(TAG, "Place direct share in empty OneStep container: target=" + target
                    + ", slot=" + targetSlot);
            return true;
        }

        int mainSlot = activeMainSlot;
        if (mainSlot < 0 || mainSlot >= MAX_WINDOWS) {
            routedLaunchIntents.remove(directShareApp.instanceKey());
            return false;
        }
        if (isDesktopHomeSlot(mainSlot)) {
            replaceDesktopHomeWithApp(directShareApp);
        } else if (isInternalSettingsSlot(mainSlot)) {
            replaceInternalSettingsWithApp(directShareApp, -1);
        } else {
            replaceAppInSlot(mainSlot, directShareApp);
        }
        Log.i(TAG, "Replace active OneStep main container with direct share: target=" + target
                + ", slot=" + mainSlot);
        return true;
    }

    private void deliverDraggedImage(
            int targetSlot, File imageFile, String mimeType, Uri sourceUri) {
        if (activityDestroyed || imageFile == null || !imageFile.isFile()
                || targetSlot < 0 || targetSlot >= MAX_WINDOWS) {
            deleteImageDragFile(imageFile);
            return;
        }
        LauncherApp targetApp = windowApps[targetSlot];
        if (targetApp == null) {
            deleteImageDragFile(imageFile);
            return;
        }
        if (sourceUri == null || !"content".equals(sourceUri.getScheme())) {
            Log.w(TAG, "Dragged image has no shareable original URI");
            deleteImageDragFile(imageFile);
            return;
        }
        String resolvedMime = TextUtils.isEmpty(mimeType) ? "image/png" : mimeType;
        Uri uri = grantDraggedImageUri(
                targetApp.packageName, sourceUri, imageFile, resolvedMime);
        if (uri == null) {
            deleteImageDragFile(imageFile);
            return;
        }
        Intent share = createImageShareIntent(
                targetApp.packageName, uri, resolvedMime);
        if (share == null) {
            Log.w(TAG, "No standard image share target for " + targetApp.packageName);
            Toast.makeText(this, "「" + targetApp.label + "」不支持图片分享",
                    Toast.LENGTH_SHORT).show();
            deleteImageDragFile(imageFile);
            return;
        }
        EmbeddedAppHost host = embeddedHosts[targetSlot];
        if (!(host instanceof RootVirtualDisplayHost)) {
            Log.w(TAG, "Image share target has no root display host: "
                    + targetApp.packageName);
            deleteImageDragFile(imageFile);
            return;
        }
        boolean launched = ((RootVirtualDisplayHost) host)
                .launchImageShareActivity(targetApp, share);
        if (!launched) {
            Log.w(TAG, "Image share activity launch failed: "
                    + targetApp.packageName + ", component="
                    + share.getComponent());
            Toast.makeText(this, "「" + targetApp.label + "」分享页启动失败",
                    Toast.LENGTH_SHORT).show();
            deleteImageDragFile(imageFile);
            return;
        }
        Log.i(TAG, "Image share activity launched before main promotion: target="
                + targetApp.packageName + ", component=" + share.getComponent()
                + ", sourceAuthority=" + uri.getAuthority());
        scheduleImageDragFileDeletion(imageFile);
        armImageSharePromotion(targetSlot, targetApp, share.getComponent());
    }

    private void armImageSharePromotion(
            int targetSlot, LauncherApp targetApp, ComponentName shareComponent) {
        EmbeddedAppHost host = targetSlot >= 0 && targetSlot < MAX_WINDOWS
                ? embeddedHosts[targetSlot] : null;
        if (targetApp == null || !(host instanceof RootVirtualDisplayHost)) {
            return;
        }
        pendingImageSharePromotion = new PendingImageSharePromotion(
                targetSlot, targetApp.packageName, targetApp.instanceKey(),
                ((RootVirtualDisplayHost) host).getDisplayId(), shareComponent);
    }

    private void promotePendingImageShareIfReady(
            int event, int displayId, String packageName, String componentName) {
        PendingImageSharePromotion pending = pendingImageSharePromotion;
        if (pending == null
                || event != RootVirtualDisplayBridge.TASK_EVENT_MOVED_TO_FRONT
                || displayId != pending.displayId
                || !TextUtils.equals(packageName, pending.packageName)
                || TextUtils.isEmpty(componentName)
                || !ImageShareTargetPolicy.isShareUiReady(
                packageName, componentName,
                pending.shareComponent == null
                        ? null : pending.shareComponent.getClassName())) {
            return;
        }
        if (pending.targetSlot < 0 || pending.targetSlot >= MAX_WINDOWS
                || embeddedSlotClosing[pending.targetSlot]
                || windowApps[pending.targetSlot] == null
                || !TextUtils.equals(windowApps[pending.targetSlot].instanceKey(),
                pending.instanceKey)) {
            pendingImageSharePromotion = null;
            return;
        }
        pendingImageSharePromotion = null;
        Log.i(TAG, "Promote image share after target activity moved to front: target="
                + pending.packageName + ", component=" + componentName
                + ", initial=" + pending.shareComponent);
        if (pending.targetSlot != activeMainSlot) {
            swapWithMain(pending.targetSlot);
        }
    }

    private Intent createImageShareIntent(
            String packageName, Uri uri, String mimeType) {
        String resolvedMime = TextUtils.equals(
                ImageShareTargetPolicy.QQ_PACKAGE, packageName)
                && ImageDragSourcePolicy.isImageMimeType(mimeType)
                ? "image/*" : mimeType;
        Intent probe = new Intent(Intent.ACTION_SEND)
                .addCategory(Intent.CATEGORY_DEFAULT)
                .setPackage(packageName)
                .setType(resolvedMime)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_GRANT_READ_URI_PERMISSION);
        probe.putExtra(Intent.EXTRA_STREAM, uri);
        probe.setClipData(ClipData.newUri(
                getContentResolver(), "OneStep image", uri));
        List<ResolveInfo> candidates;
        try {
            candidates = getPackageManager().queryIntentActivities(
                    probe, PackageManager.MATCH_DEFAULT_ONLY);
        } catch (RuntimeException e) {
            Log.w(TAG, "Query image share activities failed for " + packageName, e);
            return null;
        }
        String requiredActivity = ImageShareTargetPolicy.requiredActivity(packageName);
        ResolveInfo selected = null;
        for (ResolveInfo candidate : candidates) {
            if (candidate == null || candidate.activityInfo == null
                    || !TextUtils.equals(packageName, candidate.activityInfo.packageName)) {
                continue;
            }
            if (requiredActivity == null) {
                if (selected == null) {
                    selected = candidate;
                }
            } else if (TextUtils.equals(requiredActivity, candidate.activityInfo.name)) {
                selected = candidate;
                break;
            }
        }
        if (selected == null || selected.activityInfo == null) {
            return null;
        }
        ComponentName component = new ComponentName(
                selected.activityInfo.packageName, selected.activityInfo.name);
        return probe.setComponent(component);
    }

    private File imageDragDirectory() {
        return new File(getCacheDir(), "drag");
    }

    private void cleanupStaleImageDragFiles() {
        File[] files = imageDragDirectory().listFiles();
        if (files == null) {
            return;
        }
        long cutoff = System.currentTimeMillis() - IMAGE_DRAG_CACHE_TTL_MS;
        for (File file : files) {
            if (file.isFile() && file.lastModified() < cutoff) {
                deleteImageDragFile(file);
            }
        }
    }

    private void scheduleImageDragFileDeletion(File file) {
        mainHandler.postDelayed(() -> deleteImageDragFile(file), IMAGE_DRAG_CACHE_TTL_MS);
    }

    private static void deleteImageDragFile(File file) {
        if (file != null && file.isFile() && !file.delete()) {
            file.deleteOnExit();
        }
    }

    private boolean onCrossAppLaunch(int sourceDisplayId, String sourcePackage,
                                     Intent intent, String targetPackage,
                                     String sharedImageMimeType,
                                     ParcelFileDescriptor sharedImageDescriptor) {
        if (activityDestroyed || intent == null || TextUtils.isEmpty(sourcePackage)) {
            return false;
        }
        RootVirtualDisplayHost sourceHost = findRootVirtualDisplayHost(sourceDisplayId);
        if (TextUtils.isEmpty(targetPackage)
                || TextUtils.equals(sourcePackage, targetPackage)
                || TextUtils.equals(getPackageName(), targetPackage)) {
            return false;
        }
        if (sourceHost == null) {
            return false;
        }
        int sourceSlot = sourceHost.getSlot();
        LauncherApp sourceApp = sourceSlot >= 0 && sourceSlot < MAX_WINDOWS
                ? windowApps[sourceSlot] : null;
        if (sourceApp == null || !TextUtils.equals(sourceApp.packageName, sourcePackage)) {
            return false;
        }
        LauncherApp targetApp = createLauncherAppForPackage(targetPackage);
        if (targetApp == null) {
            return false;
        }
        ComponentName component = intent.getComponent();
        if (component != null && !TextUtils.equals(component.getPackageName(), targetPackage)) {
            return false;
        }
        if (sharedImageDescriptor != null
                && !TextUtils.isEmpty(sharedImageMimeType)
                && sharedImageMimeType.startsWith("image/")) {
            return enqueueCrossAppImageRoute(
                    sourceSlot, sourcePackage, targetApp, intent,
                    sharedImageMimeType, sharedImageDescriptor);
        }
        RoutedAppLaunch routedLaunch = new RoutedAppLaunch(
                sourceSlot, sourcePackage, targetApp, new Intent(intent), null);
        return mainHandler.post(() -> enqueueCrossAppRoute(routedLaunch));
    }

    private boolean enqueueCrossAppImageRoute(
            int sourceSlot, String sourcePackage, LauncherApp targetApp,
            Intent originalIntent, String mimeType,
            ParcelFileDescriptor sharedImageDescriptor) {
        ParcelFileDescriptor descriptorCopy = null;
        File imageFile;
        try {
            descriptorCopy = ParcelFileDescriptor.dup(
                    sharedImageDescriptor.getFileDescriptor());
            imageFile = newSharedImageFile(mimeType);
        } catch (IOException | RuntimeException e) {
            if (descriptorCopy != null) {
                try {
                    descriptorCopy.close();
                } catch (IOException ignored) {
                }
            }
            Log.w(TAG, "Cannot retain cross-app shared image", e);
            return false;
        }
        ParcelFileDescriptor retainedDescriptor = descriptorCopy;
        Intent originalCopy = new Intent(originalIntent);
        try {
            imageDragIoExecutor.execute(() -> {
                if (!copySharedImage(retainedDescriptor, imageFile)) {
                    deleteImageDragFile(imageFile);
                    return;
                }
                Uri localUri;
                Intent localizedIntent;
                try {
                    localUri = FileProvider.getUriForFile(
                            this, getPackageName() + ".drag-files", imageFile);
                    grantUriPermission(targetApp.packageName, localUri,
                            Intent.FLAG_GRANT_READ_URI_PERMISSION);
                    localizedIntent = localizeImageShareIntent(
                            originalCopy, localUri, mimeType);
                } catch (RuntimeException e) {
                    Log.w(TAG, "Cannot authorize retained shared image", e);
                    deleteImageDragFile(imageFile);
                    return;
                }
                RoutedAppLaunch routedLaunch = new RoutedAppLaunch(
                        sourceSlot, sourcePackage, targetApp,
                        localizedIntent, imageFile);
                if (!mainHandler.post(() -> enqueueCrossAppRoute(routedLaunch))) {
                    deleteImageDragFile(imageFile);
                }
            });
            return true;
        } catch (RuntimeException e) {
            try {
                retainedDescriptor.close();
            } catch (IOException ignored) {
            }
            deleteImageDragFile(imageFile);
            Log.w(TAG, "Cannot queue cross-app image copy", e);
            return false;
        }
    }

    private File newSharedImageFile(String mimeType) throws IOException {
        File directory = imageDragDirectory();
        if ((!directory.isDirectory() && !directory.mkdirs()) || !directory.isDirectory()) {
            throw new IOException("drag cache directory unavailable");
        }
        return new File(directory, "share-" + UUID.randomUUID()
                + ImageFileNamePolicy.extensionForMime(mimeType));
    }

    private boolean copySharedImage(ParcelFileDescriptor descriptor, File destination) {
        long copied = 0L;
        try (ParcelFileDescriptor.AutoCloseInputStream input =
                     new ParcelFileDescriptor.AutoCloseInputStream(descriptor);
             FileOutputStream output = new FileOutputStream(destination)) {
            byte[] buffer = new byte[128 * 1024];
            int count;
            while ((count = input.read(buffer)) >= 0) {
                if (count == 0) {
                    continue;
                }
                copied += count;
                if (copied > MAX_SHARED_IMAGE_BYTES) {
                    throw new IOException("shared image exceeds OneStep limit");
                }
                output.write(buffer, 0, count);
            }
            output.flush();
            if (copied == 0L) {
                throw new IOException("empty shared image");
            }
            Log.i(TAG, "Retained cross-app shared image: bytes=" + copied);
            return true;
        } catch (IOException | RuntimeException e) {
            Log.w(TAG, "Retain cross-app shared image failed after bytes=" + copied, e);
            return false;
        }
    }

    private Intent localizeImageShareIntent(Intent original, Uri localUri, String mimeType) {
        Intent localized = new Intent(original)
                .setType(mimeType)
                .putExtra(Intent.EXTRA_STREAM, localUri)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                        | Intent.FLAG_GRANT_READ_URI_PERMISSION)
                .putExtra(EXTRA_IMAGE_SHARE_ROUTE, true);
        localized.setClipData(ClipData.newUri(
                getContentResolver(), "OneStep image", localUri));
        Intent nested = nestedShareIntent(original);
        if (nested != null) {
            localized.putExtra(Intent.EXTRA_INTENT,
                    localizeImageShareIntent(nested, localUri, mimeType));
        }
        return localized;
    }

    private static Intent nestedShareIntent(Intent intent) {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                return intent.getParcelableExtra(Intent.EXTRA_INTENT, Intent.class);
            }
            return intent.getParcelableExtra(Intent.EXTRA_INTENT);
        } catch (RuntimeException e) {
            return null;
        }
    }

    private void enqueueCrossAppRoute(RoutedAppLaunch routedLaunch) {
        if (activityDestroyed || routedLaunch == null) {
            if (routedLaunch != null) {
                deleteImageDragFile(routedLaunch.sharedImageFile);
            }
            return;
        }
        while (pendingCrossAppRoutes.size() >= MAX_PENDING_CROSS_APP_ROUTES) {
            deleteImageDragFile(pendingCrossAppRoutes.removeFirst().sharedImageFile);
        }
        pendingCrossAppRoutes.addLast(routedLaunch);
        mainHandler.removeCallbacks(drainCrossAppRoutesRunnable);
        mainHandler.post(drainCrossAppRoutesRunnable);
    }

    private void drainCrossAppRoutes() {
        if (activityDestroyed || pendingCrossAppRoutes.isEmpty()) {
            return;
        }
        if (isCrossAppRouteUiBusy()) {
            mainHandler.postDelayed(drainCrossAppRoutesRunnable, CROSS_APP_ROUTE_RETRY_MS);
            return;
        }
        RoutedAppLaunch launch = pendingCrossAppRoutes.peekFirst();
        LauncherApp currentSource = launch.sourceSlot >= 0 && launch.sourceSlot < MAX_WINDOWS
                ? windowApps[launch.sourceSlot] : null;
        if (currentSource != null
                && TextUtils.equals(currentSource.packageName, launch.sourcePackage)
                && launch.sourceSlot != activeMainSlot) {
            switchMainSlot(launch.sourceSlot, true);
            mainHandler.postDelayed(drainCrossAppRoutesRunnable, CROSS_APP_ROUTE_RETRY_MS);
            return;
        }

        pendingCrossAppRoutes.removeFirst();
        int existingSlot = findSlot(launch.targetApp);
        if (launch.sharedImageFile != null && existingSlot >= 0
                && !embeddedSlotClosing[existingSlot]
                && launchRoutedImageShare(launch, existingSlot)) {
            Log.i(TAG, "Route retained image directly into existing target: source="
                    + launch.sourcePackage + ", target=" + launch.targetApp.packageName
                    + ", slot=" + existingSlot);
            if (!pendingCrossAppRoutes.isEmpty()) {
                mainHandler.postDelayed(
                        drainCrossAppRoutesRunnable, CROSS_APP_ROUTE_RETRY_MS);
            }
            return;
        }
        if (launch.sharedImageFile != null) {
            scheduleImageDragFileDeletion(launch.sharedImageFile);
        }
        routedLaunchIntents.put(launch.targetApp.instanceKey(), launch.intent);
        if (existingSlot >= 0 && existingSlot != activeMainSlot
                && !embeddedSlotClosing[existingSlot]) {
            switchMainSlot(existingSlot, true);
        } else {
            addOrFocusApp(launch.targetApp);
        }
        Log.i(TAG, "Route cross-app launch inside OneStep: source=" + launch.sourcePackage
                + " sourceSlot=" + launch.sourceSlot
                + " target=" + launch.targetApp.packageName
                + " existingSlot=" + existingSlot);
        if (!pendingCrossAppRoutes.isEmpty()) {
            mainHandler.postDelayed(drainCrossAppRoutesRunnable, CROSS_APP_ROUTE_RETRY_MS);
        }
    }

    private boolean launchRoutedImageShare(RoutedAppLaunch launch, int targetSlot) {
        if (launch == null || launch.sharedImageFile == null
                || !launch.sharedImageFile.isFile()
                || targetSlot < 0 || targetSlot >= MAX_WINDOWS) {
            return false;
        }
        LauncherApp targetApp = windowApps[targetSlot];
        EmbeddedAppHost host = embeddedHosts[targetSlot];
        if (targetApp == null || !targetApp.isSameInstance(launch.targetApp)
                || !(host instanceof RootVirtualDisplayHost)) {
            return false;
        }
        Uri uri;
        Intent share;
        try {
            uri = FileProvider.getUriForFile(
                    this, getPackageName() + ".drag-files", launch.sharedImageFile);
            grantUriPermission(targetApp.packageName, uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION);
            share = createImageShareIntent(
                    targetApp.packageName, uri,
                    TextUtils.isEmpty(launch.intent.getType())
                            ? "image/*" : launch.intent.getType());
        } catch (RuntimeException e) {
            Log.w(TAG, "Cannot prepare retained image share", e);
            return false;
        }
        if (share == null || !((RootVirtualDisplayHost) host)
                .launchImageShareActivity(targetApp, share)) {
            Log.w(TAG, "Retained image share launch failed: target="
                    + targetApp.packageName);
            return false;
        }
        scheduleImageDragFileDeletion(launch.sharedImageFile);
        armImageSharePromotion(targetSlot, targetApp, share.getComponent());
        return true;
    }

    private boolean isCrossAppRouteUiBusy() {
        return isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0 || pendingMainAppStartSlot >= 0
                || pendingInternalSettingsSlot >= 0 || pendingDesktopHomeSlot >= 0;
    }

    private Intent consumeRoutedLaunchIntent(int slot, String packageName) {
        if (slot < 0 || slot >= MAX_WINDOWS || TextUtils.isEmpty(packageName)) {
            return null;
        }
        LauncherApp app = windowApps[slot];
        if (app == null || !TextUtils.equals(app.packageName, packageName)) {
            return null;
        }
        Intent routedIntent = routedLaunchIntents.remove(app.instanceKey());
        if (routedIntent == null && app.isCurrentUser()) {
            routedIntent = routedLaunchIntents.remove(packageName);
        }
        if (routedIntent != null
                && routedIntent.getBooleanExtra(EXTRA_IMAGE_SHARE_ROUTE, false)) {
            armImageSharePromotion(slot, app, routedIntent.getComponent());
        }
        return routedIntent;
    }

    private boolean hasRoutedLaunchIntent(LauncherApp app) {
        return app != null && (routedLaunchIntents.containsKey(app.instanceKey())
                || (app.isCurrentUser()
                && routedLaunchIntents.containsKey(app.packageName)));
    }

    private void retryPendingBusyAddOrFocus() {
        LauncherApp app = pendingBusyAddOrFocusApp;
        pendingBusyAddOrFocusApp = null;
        if (activityDestroyed || app == null) {
            return;
        }
        if (isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0 || pendingMainAppStartSlot >= 0
                || pendingInternalSettingsSlot >= 0 || pendingDesktopHomeSlot >= 0) {
            pendingBusyAddOrFocusApp = app;
            mainHandler.postDelayed(
                    retryPendingBusyAddOrFocusRunnable, CROSS_APP_ROUTE_RETRY_MS);
            return;
        }
        addOrFocusApp(app);
    }

    private void addOrFocusApp(LauncherApp app) {
        if (app == null) {
            return;
        }
        Log.i(TAG, "addOrFocusApp: app=" + app.componentKey()
                + ", homeEntry=" + app.isHomeEntry()
                + ", activeMain=" + activeMainSlot
                + ", desktopHomeActive=" + isDesktopHomeSlot(activeMainSlot));
        if (!hasRootAccessForAppLaunch()) {
            Log.w(TAG, "addOrFocusApp blocked: no root access, app=" + app.componentKey());
            showRootAuthorizationHintIfNeeded();
            return;
        }
        if (isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0 || pendingMainAppStartSlot >= 0
                || pendingInternalSettingsSlot >= 0 || pendingDesktopHomeSlot >= 0) {
            Log.i(TAG, "addOrFocusApp deferred: busy, app=" + app.componentKey());
            pendingBusyAddOrFocusApp = app;
            mainHandler.removeCallbacks(retryPendingBusyAddOrFocusRunnable);
            mainHandler.postDelayed(
                    retryPendingBusyAddOrFocusRunnable, CROSS_APP_ROUTE_RETRY_MS);
            return;
        }

        refreshTopAppUsageAsync();
        boolean replaceMainDesktopHome = isDesktopHomeSlot(activeMainSlot);
        boolean replaceMainSettings = isInternalSettingsSlot(activeMainSlot);
        int existingSlot = findSlot(app);
        if (replaceMainDesktopHome) {
            if (existingSlot >= 0 && embeddedSlotClosing[existingSlot]) {
                Log.i(TAG, "addOrFocusApp blocked: existing slot closing, app="
                        + app.componentKey() + ", slot=" + existingSlot);
                return;
            }
            if (existingSlot >= 0 && existingSlot != activeMainSlot) {
                switchMainSlot(existingSlot, true);
                return;
            }
            suppressEmbeddedStarts = false;
            replaceDesktopHomeWithApp(app);
            return;
        }
        if (replaceMainSettings) {
            if (existingSlot >= 0 && embeddedSlotClosing[existingSlot]) {
                return;
            }
            if (existingSlot >= 0 && existingSlot != activeMainSlot) {
                switchMainSlot(existingSlot, true);
                return;
            }
            int mainDesktopSlot = findDisplayedMainDesktopSlot();
            if (mainDesktopSlot >= 0 && mainDesktopSlot != activeMainSlot) {
                suppressEmbeddedStarts = false;
                stageAppForMainDesktopReplacement(mainDesktopSlot, app);
                return;
            }
            int emptySideSlot = findEmptySideSlot();
            if (emptySideSlot >= 0) {
                stageAppForMainPromotion(emptySideSlot, app);
                return;
            }
            Log.i(TAG, "addOrFocusApp: settings branch fallback replace, app="
                    + app.componentKey() + ", existing=" + existingSlot);
            replaceInternalSettingsWithApp(app, existingSlot);
            return;
        }
        if (existingSlot >= 0) {
            if (embeddedSlotClosing[existingSlot]) {
                Log.i(TAG, "addOrFocusApp blocked: existing slot closing, app="
                        + app.componentKey() + ", slot=" + existingSlot);
                return;
            }
            if (existingSlot != activeMainSlot) {
                switchMainSlot(existingSlot, true);
                return;
            }
            renderWindows();
            if (embeddedHosts[existingSlot] instanceof RootVirtualDisplayHost) {
                syncEmbeddedSlot(existingSlot);
            }
            return;
        }

        suppressEmbeddedStarts = false;
        int emptySideSlot = findEmptySideSlot();
        boolean mainOccupied = windowApps[activeMainSlot] != null;
        int mainDesktopSlot = findDisplayedMainDesktopSlot();
        if (mainDesktopSlot >= 0 && mainDesktopSlot != activeMainSlot
                && isMainPaneSlot(mainDesktopSlot)) {
            activateMainPane(mainDesktopSlot, false);
            if (isDesktopHomeSlot(mainDesktopSlot)) {
                replaceDesktopHomeWithApp(app);
            } else {
                replaceAppInSlot(mainDesktopSlot, app);
            }
            return;
        }
        int emptyMainSlot = findEmptyInactiveMainSlot();
        int preferredMainSlot = getPreferredNewAppMainSlot();
        AppLaunchPlacement placement = AppLaunchPlacement.decide(
                activeMainSlot, mainOccupied, emptyMainSlot, emptySideSlot, mainDesktopSlot,
                preferredMainSlot);
        Log.i(TAG, "addOrFocusApp placement: app=" + app.componentKey()
                + ", action=" + placement.action + ", targetSlot=" + placement.targetSlot
                + ", mainOccupied=" + mainOccupied + ", emptyMain=" + emptyMainSlot
                + ", emptySide=" + emptySideSlot + ", mainDesktop=" + mainDesktopSlot
                + ", preferredMain=" + preferredMainSlot);
        switch (placement.action) {
            case START_IN_MAIN:
                startAppInSlot(placement.targetSlot, app);
                break;
            case START_IN_EMPTY_MAIN:
                if (activateMainPane(placement.targetSlot, false)) {
                    startAppInSlot(placement.targetSlot, app);
                    scheduleHostedDisplayFocus("app started in empty main pane");
                }
                break;
            case START_IN_SIDE_AND_PROMOTE:
                if (preferredMainSlot >= 0 && preferredMainSlot != activeMainSlot
                        && !activateMainPane(preferredMainSlot, false)) {
                    return;
                }
                stageAppForMainPromotion(placement.targetSlot, app);
                break;
            case REPLACE_SIDE_AND_PROMOTE:
                stageAppForMainDesktopReplacement(placement.targetSlot, app);
                break;
            case REPLACE_MAIN:
                if (isMainPaneSlot(placement.targetSlot)
                        && placement.targetSlot != activeMainSlot
                        && !activateMainPane(placement.targetSlot, false)) {
                    return;
                }
                if (isDesktopHomeSlot(placement.targetSlot)) {
                    replaceDesktopHomeWithApp(app);
                } else if (isInternalSettingsSlot(placement.targetSlot)) {
                    replaceInternalSettingsWithApp(app, -1);
                } else {
                    replaceAppInSlot(placement.targetSlot, app);
                }
                break;
        }
    }

    private boolean hasRootAccessForAppLaunch() {
        for (EmbeddedAppHost host : embeddedHosts) {
            if (host instanceof RootVirtualDisplayHost
                    && ((RootVirtualDisplayHost) host).hasRootAccess()) {
                return true;
            }
        }
        return false;
    }

    private int getPreferredNewAppMainSlot() {
        if (!dualMainLayout || !multiWindowMode || secondMainSlot < 0) {
            return -1;
        }
        int edgeMainSlot = getEdgeMainSlot();
        int middleMainSlot = getMiddleMainSlot();
        if (!isMainPaneSlot(edgeMainSlot) || !isMainPaneSlot(middleMainSlot)
                || edgeMainSlot == middleMainSlot || windowApps[edgeMainSlot] == null) {
            return -1;
        }
        return middleMainSlot;
    }

    private void startAppInSlot(int slot, LauncherApp app) {
        startAppInSlot(slot, app, true, false);
    }

    private void stageAppForMainPromotion(int slot, LauncherApp app) {
        if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS || app == null
                || slot == activeMainSlot || windowApps[slot] != null
                || embeddedSlotClosing[slot] || !sideSlotOrder.contains(slot)
                || isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0
                || pendingMainAppStartSlot >= 0 || pendingInternalSettingsSlot >= 0
                || pendingDesktopHomeSlot >= 0) {
            Log.i(TAG, "stageAppForMainPromotion rejected: slot=" + slot
                    + ", app=" + (app == null ? "null" : app.componentKey())
                    + ", occupied=" + (slot >= 0 && slot < MAX_WINDOWS
                            && windowApps[slot] != null)
                    + ", closing=" + (slot >= 0 && slot < MAX_WINDOWS
                            && embeddedSlotClosing[slot])
                    + ", inSideOrder=" + sideSlotOrder.contains(slot)
                    + ", animRunning=" + isWindowAnimationRunning()
                    + ", switchPending=" + mainSlotSwitchPendingSlot
                    + ", replacePending=" + mainContentReplacementPendingSlot
                    + ", appStartPending=" + pendingMainAppStartSlot);
            return;
        }
        pendingMainAppStartSlot = slot;
        pendingMainAppStart = app;
        embeddedSyncGenerations[slot]++;
        windowViews[slot].setLiveAppVisible(false);
        switchMainSlot(slot, true);
        if (isPendingMainAppStartSlot(slot)) {
            clearPendingMainAppStart(slot);
            startAppInSlot(slot, app, false, false);
        }
    }

    private boolean isPendingMainAppStartSlot(int slot) {
        return slot >= 0 && slot == pendingMainAppStartSlot && pendingMainAppStart != null;
    }

    private void startPendingMainAppAfterPromotion(int slot) {
        if (!isPendingMainAppStartSlot(slot) || slot != activeMainSlot) {
            return;
        }
        LauncherApp app = pendingMainAppStart;
        clearPendingMainAppStart(slot);
        if (isDesktopHomeSlot(slot)) {
            replaceDesktopHomeWithApp(app);
            return;
        }
        LauncherApp currentApp = windowApps[slot];
        if (currentApp != null && currentApp.isHomeEntry()) {
            replaceAppInSlot(slot, app);
            return;
        }
        startAppInSlot(slot, app, false, false);
    }

    private void stageAppForMainDesktopReplacement(int slot, LauncherApp app) {
        if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS || app == null
                || slot == activeMainSlot || !isDisplayedMainDesktopSlot(slot)
                || embeddedSlotClosing[slot]
                || !sideSlotOrder.contains(slot) || isWindowAnimationRunning()
                || mainSlotSwitchPendingSlot >= 0 || mainContentReplacementPendingSlot >= 0
                || pendingMainAppStartSlot >= 0 || pendingInternalSettingsSlot >= 0
                || pendingDesktopHomeSlot >= 0) {
            Log.i(TAG, "stageAppForMainDesktopReplacement rejected: slot=" + slot
                    + ", app=" + (app == null ? "null" : app.componentKey())
                    + ", isDesktop=" + (slot >= 0 && slot < MAX_WINDOWS
                            && isDisplayedMainDesktopSlot(slot))
                    + ", closing=" + (slot >= 0 && slot < MAX_WINDOWS
                            && embeddedSlotClosing[slot])
                    + ", inSideOrder=" + sideSlotOrder.contains(slot)
                    + ", animRunning=" + isWindowAnimationRunning()
                    + ", switchPending=" + mainSlotSwitchPendingSlot
                    + ", replacePending=" + mainContentReplacementPendingSlot
                    + ", appStartPending=" + pendingMainAppStartSlot);
            return;
        }
        pendingMainAppStartSlot = slot;
        pendingMainAppStart = app;
        embeddedSyncGenerations[slot]++;
        if (isDesktopHomeSlot(slot)) {
            windowViews[slot].setLiveAppVisible(false);
        }
        scheduleStagedPromotionWatchdog(slot);
        switchMainSlot(slot, true);
    }

    private void clearPendingMainAppStart(int slot) {
        if (slot != pendingMainAppStartSlot) {
            return;
        }
        pendingMainAppStartSlot = -1;
        pendingMainAppStart = null;
    }

    private void stageInternalSettingsForMainPromotion(int slot) {
        if (activityDestroyed || settingsPanelController == null || slot < 0
                || slot >= MAX_WINDOWS || slot == activeMainSlot || windowApps[slot] != null
                || embeddedSlotClosing[slot] || !sideSlotOrder.contains(slot)
                || isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0
                || pendingMainAppStartSlot >= 0 || pendingInternalSettingsSlot >= 0
                || pendingDesktopHomeSlot >= 0) {
            return;
        }
        pendingInternalSettingsSlot = slot;
        embeddedSyncGenerations[slot]++;
        windowViews[slot].setLiveAppVisible(false);
        scheduleStagedPromotionWatchdog(slot);
        switchMainSlot(slot, true);
    }

    private boolean isPendingInternalSettingsSlot(int slot) {
        return slot >= 0 && slot == pendingInternalSettingsSlot;
    }

    private void showPendingInternalSettingsAfterPromotion(int slot) {
        if (!isPendingInternalSettingsSlot(slot) || slot != activeMainSlot
                || settingsPanelController == null) {
            return;
        }
        pendingInternalSettingsSlot = -1;
        if (windowApps[slot] != null || embeddedSlotClosing[slot]) {
            
            return;
        }
        settingsPanelController.showInWindow(windowViews[slot]);
        animateInternalSettingsAppear(slot);
    }

    private void clearPendingMainPromotionContent(int slot) {
        clearPendingMainAppStart(slot);
        if (slot == pendingInternalSettingsSlot) {
            pendingInternalSettingsSlot = -1;
        }
        if (slot == pendingDesktopHomeSlot) {
            pendingDesktopHomeSlot = -1;
        }
    }

    private void startAppInSlot(int slot, LauncherApp app, boolean animateAppearance,
                                boolean fadeIn) {
        if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS || app == null) {
            return;
        }
        windowViews[slot].hideDesktopHome();
        windowApps[slot] = app;
        renderWindows();
        syncEmbeddedSlot(slot);
        if (animateAppearance) {
            animateWindowAppAppear(slot, app, fadeIn);
        }
    }

    private void replaceAppInSlot(int slot, LauncherApp replacementApp) {
        if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS || replacementApp == null
                || embeddedSlotClosing[slot]) {
            return;
        }
        LauncherApp previousApp = windowApps[slot];
        EmbeddedAppHost previousHost = embeddedHosts[slot];
        if (previousApp == null || previousHost == null) {
            startAppInSlot(slot, replacementApp);
            return;
        }
        if (previousApp.isSameInstance(replacementApp)) {
            startAppInSlot(slot, replacementApp);
            return;
        }

        if (slot == activeMainSlot) {
            previousHost.invalidateTaskResolution();
            mainSlotSwitchGeneration++;
            clearPendingMainSlotSwitch();
            launchMainAppReplacement(slot, previousApp, previousHost, replacementApp);
            return;
        }

        embeddedSlotClosing[slot] = true;
        embeddedSyncGenerations[slot]++;
        previousHost.invalidateTaskResolution();
        windowViews[slot].setLiveAppVisible(false);

        Runnable onClosed = () -> mainHandler.post(() -> {
            if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS
                    || embeddedHosts[slot] != previousHost
                    || windowApps[slot] != previousApp) {
                return;
            }
            embeddedSlotClosing[slot] = false;
            startAppInSlot(slot, replacementApp);
        });
        try {
            previousHost.closeApp(previousApp, onClosed);
        } catch (RuntimeException e) {
            Log.w(TAG, "Replace app close failed for slot " + slot + ": "
                    + e.getClass().getSimpleName());
            onClosed.run();
        }
    }

    private void launchMainAppReplacement(int slot, LauncherApp previousApp,
                                          EmbeddedAppHost previousHost,
                                          LauncherApp replacementApp) {
        OneStepWindowView windowView = windowViews[slot];
        if (windowView == null) {
            startAppInSlot(slot, replacementApp);
            return;
        }
        final int replacementGeneration = ++mainContentReplacementGeneration;
        mainContentReplacementPendingSlot = slot;
        scheduleContentReplacementWatchdog(slot, replacementGeneration);
        windowView.animate().cancel();
        windowView.setAlpha(1f);
        windowView.setScaleX(1f);
        windowView.setScaleY(1f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        beginMainAppReplacementLaunch(slot, previousApp, previousHost,
                replacementApp, windowView, replacementGeneration);
    }

    private void beginMainAppReplacementLaunch(
            int slot, LauncherApp previousApp, EmbeddedAppHost previousHost,
            LauncherApp replacementApp, OneStepWindowView windowView,
            int replacementGeneration) {
        if (replacementGeneration != mainContentReplacementGeneration) {
            return;
        }
        if (activityDestroyed || slot != activeMainSlot
                || embeddedHosts[slot] != previousHost
                || windowApps[slot] != previousApp) {
            mainContentReplacementPendingSlot = -1;
            return;
        }
        embeddedSyncGenerations[slot]++;
        windowApps[slot] = replacementApp;
        
        
        renderWindows();
        setHostedSurfaceAlpha(slot, 1f);
        windowView.setLiveAppVisible(true);
        boolean launchStarted = previousHost.start(replacementApp);
        if (!launchStarted) {
            windowApps[slot] = previousApp;
            mainContentReplacementPendingSlot = -1;
            windowView.setLiveAppVisible(true);
            setHostedSurfaceAlpha(slot, 1f);
            renderWindows();
            showEmbeddingHintIfNeeded(previousHost.getUnavailableReason());
            return;
        }
        mainContentReplacementPendingSlot = -1;
        Log.i(TAG, "Launch replacement with WindowManager starting surface: previous="
                + previousApp.packageName + ", replacement="
                + replacementApp.packageName + ", slot=" + slot);
    }

    private void replaceDesktopHomeWithApp(LauncherApp app) {
        int slot = activeMainSlot;
        OneStepWindowView windowView = windowViews[slot];
        if (windowView == null || !isDesktopHomeSlot(slot)) {
            startAppInSlot(slot, app);
            return;
        }

        final int replacementGeneration = ++mainContentReplacementGeneration;
        mainContentReplacementPendingSlot = slot;
        scheduleContentReplacementWatchdog(slot, replacementGeneration);
        windowView.animate().cancel();
        windowView.setScaleX(1f);
        windowView.setScaleY(1f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        windowView.animate()
                .alpha(0f)
                .setDuration(MAIN_APP_REPLACE_FADE_OUT_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> {
                    if (replacementGeneration != mainContentReplacementGeneration) {
                        return;
                    }
                    mainContentReplacementPendingSlot = -1;
                    if (activityDestroyed || slot != activeMainSlot
                            || !isDesktopHomeSlot(slot)) {
                        windowView.setAlpha(1f);
                        return;
                    }
                    windowView.hideDesktopHome();
                    startAppInSlot(slot, app, true, true);
                })
                .start();
    }

    private void replaceMainWithInternalSettings() {
        int slot = activeMainSlot;
        if (isDesktopHomeSlot(slot)) {
            replaceDesktopHomeWithInternalSettings();
            return;
        }
        LauncherApp previousApp = windowApps[slot];
        EmbeddedAppHost previousHost = embeddedHosts[slot];
        OneStepWindowView windowView = windowViews[slot];
        if (previousApp == null || previousHost == null || windowView == null) {
            windowApps[slot] = null;
            clearHostedAppRevealState(slot);
            renderWindows();
            settingsPanelController.showInWindow(windowView);
            animateInternalSettingsAppear(slot);
            return;
        }

        previousHost.invalidateTaskResolution();
        mainSlotSwitchGeneration++;
        clearPendingMainSlotSwitch();
        final int replacementGeneration = ++mainContentReplacementGeneration;
        mainContentReplacementPendingSlot = slot;
        scheduleContentReplacementWatchdog(slot, replacementGeneration);
        windowView.animate().cancel();
        windowView.setScaleX(1f);
        windowView.setScaleY(1f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        windowView.animate()
                .alpha(0f)
                .setDuration(MAIN_APP_REPLACE_FADE_OUT_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> {
                    if (replacementGeneration != mainContentReplacementGeneration) {
                        return;
                    }
                    mainContentReplacementPendingSlot = -1;
                    if (activityDestroyed || slot != activeMainSlot
                            || windowApps[slot] != previousApp) {
                        windowView.setAlpha(1f);
                        return;
                    }
                    embeddedSyncGenerations[slot]++;
                    previousHost.sendHome();
                    windowApps[slot] = null;
                    clearHostedAppRevealState(slot);
                    renderWindows();
                    settingsPanelController.showInWindow(windowView);
                    Log.i(TAG, "Show internal settings and let Android background previous "
                            + "main app: previous=" + previousApp.packageName + ", slot=" + slot);
                    animateInternalSettingsAppear(slot);
                })
                .start();
    }

    private void replaceDesktopHomeWithInternalSettings() {
        int slot = activeMainSlot;
        OneStepWindowView windowView = windowViews[slot];
        if (windowView == null || !isDesktopHomeSlot(slot)) {
            return;
        }

        final int replacementGeneration = ++mainContentReplacementGeneration;
        mainContentReplacementPendingSlot = slot;
        scheduleContentReplacementWatchdog(slot, replacementGeneration);
        windowView.animate().cancel();
        windowView.setScaleX(1f);
        windowView.setScaleY(1f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        windowView.animate()
                .alpha(0f)
                .setDuration(MAIN_APP_REPLACE_FADE_OUT_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> {
                    if (replacementGeneration != mainContentReplacementGeneration) {
                        return;
                    }
                    mainContentReplacementPendingSlot = -1;
                    if (activityDestroyed || slot != activeMainSlot
                            || !isDesktopHomeSlot(slot)) {
                        windowView.setAlpha(1f);
                        return;
                    }
                    windowView.hideDesktopHome();
                    settingsPanelController.showInWindow(windowView);
                    animateInternalSettingsAppear(slot);
                })
                .start();
    }

    private void replaceInternalSettingsWithApp(LauncherApp app, int existingSlot) {
        int slot = activeMainSlot;
        OneStepWindowView windowView = windowViews[slot];
        if (windowView == null || !isInternalSettingsSlot(slot)) {
            hideInternalSettingsPage();
            startAppInSlot(slot, app);
            return;
        }

        final int replacementGeneration = ++mainContentReplacementGeneration;
        mainContentReplacementPendingSlot = slot;
        scheduleContentReplacementWatchdog(slot, replacementGeneration);
        windowView.animate().cancel();
        windowView.setScaleX(1f);
        windowView.setScaleY(1f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        windowView.animate()
                .alpha(0f)
                .setDuration(MAIN_APP_REPLACE_FADE_OUT_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(() -> {
                    if (replacementGeneration != mainContentReplacementGeneration) {
                        return;
                    }
                    mainContentReplacementPendingSlot = -1;
                    if (activityDestroyed || slot != activeMainSlot
                            || !isInternalSettingsSlot(slot)) {
                        windowView.setAlpha(1f);
                        return;
                    }
                    hideInternalSettingsPage();
                    windowView.setAlpha(1f);
                    if (existingSlot >= 0 && existingSlot != slot
                            && existingSlot < MAX_WINDOWS
                            && windowApps[existingSlot] != null
                            && !embeddedSlotClosing[existingSlot]) {
                        switchMainSlot(existingSlot, true);
                        return;
                    }
                    startAppInSlot(slot, app, true, true);
                })
                .start();
    }

    private void animateWindowAppAppear(int slot, LauncherApp expectedApp, boolean fadeIn) {
        animateWindowContentAppear(slot, fadeIn, () -> {
            LauncherApp currentApp = windowApps[slot];
            return currentApp != null && currentApp.isSameInstance(expectedApp);
        });
    }

    private void animateInternalSettingsAppear(int slot) {
        animateWindowContentAppear(slot, true, () -> isInternalSettingsSlot(slot));
    }

    private void animateDesktopHomeAppear(int slot) {
        animateWindowContentAppear(slot, true, () -> isDesktopHomeSlot(slot));
    }

    private void animateWindowContentAppear(int slot, boolean fadeIn,
                                            BooleanSupplier stillCurrent) {
        if (slot < 0 || slot >= MAX_WINDOWS || !isWindowSlotEnabled(slot)
                || !stillCurrent.getAsBoolean()) {
            return;
        }
        OneStepWindowView windowView = windowViews[slot];
        if (windowView == null) {
            return;
        }
        windowView.animate().cancel();
        windowView.setPivotX(windowView.getWidth() / 2f);
        windowView.setPivotY(windowView.getHeight() / 2f);
        windowView.setTranslationX(0f);
        windowView.setTranslationY(0f);
        windowView.setScaleX(WINDOW_SCALE_APPEAR_START);
        windowView.setScaleY(WINDOW_SCALE_APPEAR_START);
        windowView.setAlpha(fadeIn ? 0f : 1f);
        windowView.post(() -> {
            if (isWindowAnimationRunning() || !stillCurrent.getAsBoolean()) {
                return;
            }
            windowView.animate().cancel();
            windowView.setPivotX(windowView.getWidth() / 2f);
            windowView.setPivotY(windowView.getHeight() / 2f);
            windowView.setTranslationX(0f);
            windowView.setTranslationY(0f);
            windowView.animate()
                    .alpha(1f)
                    .scaleX(1f)
                    .scaleY(1f)
                    .setDuration(WINDOW_SCALE_APPEAR_MS)
                    .setInterpolator(new AccelerateDecelerateInterpolator())
                    .start();
        });
    }

    private void refreshAllEmbeddedSlotLayouts() {
        refreshAllEmbeddedSlotLayouts(false);
    }

    private void refreshAllEmbeddedSlotLayouts(boolean forceVirtualDisplayResize) {
        if (isWindowAnimationRunning()) {
            scheduleEmbeddedSlotRefresh(forceVirtualDisplayResize);
            return;
        }
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (windowViews[slot] == null || embeddedSlotClosing[slot]) {
                continue;
            }
            EmbeddedAppHost host = embeddedHosts[slot];
            windowViews[slot].requestLayout();
            windowViews[slot].invalidate();
            if (host != null) {
                View hostView = host.getView();
                if (hostView != null) {
                    hostView.requestLayout();
                    hostView.invalidate();
                }
                host.refreshContainerSize(forceVirtualDisplayResize);
            }
        }
    }

    private void scheduleEmbeddedSlotRefresh() {
        scheduleEmbeddedSlotRefresh(false);
    }

    private void scheduleEmbeddedSlotRefresh(boolean forceVirtualDisplayResize) {
        if (workspace == null) {
            return;
        }
        forceEmbeddedLayoutRefresh |= forceVirtualDisplayResize;
        workspace.removeCallbacks(refreshAllEmbeddedSlotLayoutsRunnable);
        removeEmbeddedLayoutRefreshPreDrawListener();
        workspace.requestLayout();
        ViewTreeObserver observer = workspace.getViewTreeObserver();
        if (observer.isAlive()) {
            embeddedLayoutRefreshObserver = observer;
            embeddedLayoutRefreshPreDrawListener = new ViewTreeObserver.OnPreDrawListener() {
                @Override
                public boolean onPreDraw() {
                    if (embeddedLayoutRefreshPreDrawListener != this) {
                        return true;
                    }
                    workspace.removeCallbacks(refreshAllEmbeddedSlotLayoutsRunnable);
                    runScheduledEmbeddedSlotRefresh();
                    return true;
                }
            };
            observer.addOnPreDrawListener(embeddedLayoutRefreshPreDrawListener);
        }
        workspace.postDelayed(refreshAllEmbeddedSlotLayoutsRunnable,
                EMBEDDED_LAYOUT_REFRESH_DELAY_MS);
    }

    private void runScheduledEmbeddedSlotRefresh() {
        removeEmbeddedLayoutRefreshPreDrawListener();
        boolean forceVirtualDisplayResize = forceEmbeddedLayoutRefresh;
        forceEmbeddedLayoutRefresh = false;
        refreshAllEmbeddedSlotLayouts(forceVirtualDisplayResize);
    }

    private void cancelScheduledEmbeddedSlotRefresh() {
        if (workspace != null) {
            workspace.removeCallbacks(refreshAllEmbeddedSlotLayoutsRunnable);
        }
        forceEmbeddedLayoutRefresh = false;
        removeEmbeddedLayoutRefreshPreDrawListener();
    }

    private void removeEmbeddedLayoutRefreshPreDrawListener() {
        if (embeddedLayoutRefreshObserver != null
                && embeddedLayoutRefreshObserver.isAlive()
                && embeddedLayoutRefreshPreDrawListener != null) {
            embeddedLayoutRefreshObserver.removeOnPreDrawListener(
                    embeddedLayoutRefreshPreDrawListener);
        }
        embeddedLayoutRefreshObserver = null;
        embeddedLayoutRefreshPreDrawListener = null;
    }

    private void dispatchMainBack() {
        if (handleOverlayBack()) {
            return;
        }
        sendBackToActiveMainHost();
    }

    private void handleSystemBack() {
        if (handleOverlayBack()) {
            return;
        }
        if (sendBackToActiveMainHost()) {
            return;
        }
        Log.i(TAG, "Consume root launcher back");
    }

    private boolean sendBackToActiveMainHost() {
        if (activeMainSlot < 0 || activeMainSlot >= MAX_WINDOWS
                || windowApps[activeMainSlot] == null) {
            return false;
        }
        EmbeddedAppHost host = embeddedHosts[activeMainSlot];
        if (host == null) {
            return false;
        }
        host.sendBack();
        return true;
    }

    private void onHostedAppExitedAfterBack(
            int slot, LauncherApp exitedApp, Runnable afterDesktopTakeover) {
        if (activityDestroyed || exitedApp == null || exitedApp.isHomeEntry()
                || slot < 0 || slot >= MAX_WINDOWS || slot != activeMainSlot
                || embeddedSlotClosing[slot]) {
            return;
        }
        LauncherApp currentApp = windowApps[slot];
        if (currentApp == null || !exitedApp.isSameInstance(currentApp)) {
            return;
        }
        LauncherApp primaryDesktop = resolveBuiltInDesktopApp();
        int existingPrimaryDesktopSlot = primaryDesktop == null
                ? -1 : findSlotByComponent(primaryDesktop.componentName);
        final int takeoverGeneration = ++desktopTakeoverGeneration;
        desktopHomeRequestPending = false;
        suppressEmbeddedStarts = false;

        if (existingPrimaryDesktopSlot >= 0
                && existingPrimaryDesktopSlot != slot
                && !embeddedSlotClosing[existingPrimaryDesktopSlot]) {
            EmbeddedAppHost desktopHost = embeddedHosts[existingPrimaryDesktopSlot];
            if (desktopHost instanceof RootVirtualDisplayHost) {
                RootVirtualDisplayHost rootDesktopHost =
                        (RootVirtualDisplayHost) desktopHost;
                if (rootDesktopHost.hasResolvedHostedTask(primaryDesktop)) {
                    promoteExistingPrimaryDesktopAfterExit(
                            takeoverGeneration, slot, exitedApp, primaryDesktop,
                            existingPrimaryDesktopSlot, afterDesktopTakeover);
                } else {
                    final int desktopSlot = existingPrimaryDesktopSlot;
                    rootDesktopHost.validateHostedTaskVisible(primaryDesktop,
                            visible -> finishPrimaryDesktopValidationAfterExit(
                                    takeoverGeneration, slot, exitedApp, primaryDesktop,
                                    desktopSlot, afterDesktopTakeover, visible));
                }
            } else {
                promoteExistingPrimaryDesktopAfterExit(
                        takeoverGeneration, slot, exitedApp, primaryDesktop,
                        existingPrimaryDesktopSlot, afterDesktopTakeover);
            }
            return;
        }
        startPrimaryDesktopAfterExit(
                takeoverGeneration, slot, exitedApp, primaryDesktop,
                afterDesktopTakeover);
    }

    private void finishPrimaryDesktopValidationAfterExit(
            int generation, int exitedSlot, LauncherApp exitedApp,
            LauncherApp primaryDesktop, int desktopSlot,
            Runnable afterDesktopTakeover, boolean visible) {
        if (!isCurrentDesktopTakeover(generation, exitedSlot, exitedApp)) {
            return;
        }
        if (visible) {
            promoteExistingPrimaryDesktopAfterExit(
                    generation, exitedSlot, exitedApp, primaryDesktop,
                    desktopSlot, afterDesktopTakeover);
            return;
        }
        Log.w(TAG, "Discard stale built-in desktop slot before app exit takeover: slot="
                + desktopSlot + ", component="
                + primaryDesktop.componentName.flattenToShortString());
        clearStalePrimaryDesktopSlot(desktopSlot, primaryDesktop);
        startPrimaryDesktopAfterExit(
                generation, exitedSlot, exitedApp, primaryDesktop,
                afterDesktopTakeover);
    }

    private void promoteExistingPrimaryDesktopAfterExit(
            int generation, int exitedSlot, LauncherApp exitedApp,
            LauncherApp primaryDesktop, int desktopSlot,
            Runnable afterDesktopTakeover) {
        if (!isCurrentDesktopTakeover(generation, exitedSlot, exitedApp)
                || desktopSlot < 0 || desktopSlot >= MAX_WINDOWS
                || embeddedSlotClosing[desktopSlot]) {
            return;
        }
        LauncherApp desktopApp = windowApps[desktopSlot];
        if (desktopApp == null
                || !primaryDesktop.componentName.equals(desktopApp.componentName)) {
            startPrimaryDesktopAfterExit(
                    generation, exitedSlot, exitedApp, primaryDesktop,
                    afterDesktopTakeover);
            return;
        }
        Log.i(TAG, "Move verified built-in desktop main interface to main slot after app "
                + "exited: desktopSlot=" + desktopSlot
                + ", exitedSlot=" + exitedSlot + ", app=" + exitedApp.packageName);
        switchMainSlot(desktopSlot, true);
        mainHandler.post(() -> finishExitedSlotCleanupAfterDesktopPromotion(
                generation, exitedSlot, exitedApp, primaryDesktop, desktopSlot,
                afterDesktopTakeover, 0));
    }

    private void startPrimaryDesktopAfterExit(
            int generation, int slot, LauncherApp exitedApp,
            LauncherApp primaryDesktop, Runnable afterDesktopTakeover) {
        if (!isCurrentDesktopTakeover(generation, slot, exitedApp)) {
            return;
        }
        clearExitedHostedAppSlot(slot, exitedApp);
        if (primaryDesktop != null) {
            Log.i(TAG, "Start built-in desktop main interface in exited main slot: slot=" + slot
                    + ", app=" + exitedApp.packageName
                    + ", desktop=" + primaryDesktop.componentName.flattenToShortString());
            startAppInSlot(slot, primaryDesktop, false, true);
            if (afterDesktopTakeover != null) {
                EmbeddedAppHost host = embeddedHosts[slot];
                if (host instanceof RootVirtualDisplayHost) {
                    ((RootVirtualDisplayHost) host).runAfterHostedTaskVisible(
                            primaryDesktop, afterDesktopTakeover);
                } else {
                    mainHandler.post(afterDesktopTakeover);
                }
            }
            return;
        }

        Log.w(TAG, "No system desktop main activity is available after app exited; use OneStep "
                + "desktop fallback");
        requestDesktopHomeInMain();
        if (afterDesktopTakeover != null) {
            mainHandler.post(afterDesktopTakeover);
        }
    }

    private boolean isCurrentDesktopTakeover(
            int generation, int slot, LauncherApp exitedApp) {
        if (generation != desktopTakeoverGeneration || activityDestroyed
                || slot < 0 || slot >= MAX_WINDOWS || slot != activeMainSlot
                || embeddedSlotClosing[slot]) {
            return false;
        }
        LauncherApp currentApp = windowApps[slot];
        return currentApp != null && exitedApp != null
                && exitedApp.isSameInstance(currentApp);
    }

    private void clearStalePrimaryDesktopSlot(int slot, LauncherApp primaryDesktop) {
        if (slot < 0 || slot >= MAX_WINDOWS || primaryDesktop == null) {
            return;
        }
        LauncherApp currentApp = windowApps[slot];
        if (currentApp == null
                || !primaryDesktop.componentName.equals(currentApp.componentName)) {
            return;
        }
        EmbeddedAppHost host = embeddedHosts[slot];
        if (host instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) host).concealHostedSurfaceForDesktopTakeover(currentApp);
        }
        embeddedSyncGenerations[slot]++;
        windowApps[slot] = null;
        clearHostedAppRevealState(slot);
        windowViews[slot].setLiveAppVisible(false);
        renderWindows();
    }

    private void finishExitedSlotCleanupAfterDesktopPromotion(
            int generation, int exitedSlot, LauncherApp exitedApp, LauncherApp primaryDesktop,
            int desktopSlot, Runnable afterDesktopTakeover, int attempt) {
        if (generation != desktopTakeoverGeneration || activityDestroyed
                || exitedSlot < 0 || exitedSlot >= MAX_WINDOWS
                || desktopSlot < 0 || desktopSlot >= MAX_WINDOWS) {
            return;
        }
        LauncherApp currentExitedSlotApp = windowApps[exitedSlot];
        if (currentExitedSlotApp == null
                || !exitedApp.isSameInstance(currentExitedSlotApp)) {
            return;
        }
        if (activeMainSlot == desktopSlot && !isWindowAnimationRunning()) {
            clearExitedHostedAppSlot(exitedSlot, exitedApp);
            if (afterDesktopTakeover != null) {
                afterDesktopTakeover.run();
            }
            return;
        }
        LauncherApp desktopApp = windowApps[desktopSlot];
        if (primaryDesktop == null || desktopApp == null
                || !primaryDesktop.componentName.equals(desktopApp.componentName)
                || embeddedSlotClosing[desktopSlot]) {
            Log.w(TAG, "Verified primary desktop slot disappeared during promotion: slot="
                    + desktopSlot);
            startPrimaryDesktopAfterExit(
                    generation, exitedSlot, exitedApp,
                    primaryDesktop, afterDesktopTakeover);
            return;
        }

        boolean animationRunning = isWindowAnimationRunning();
        if (!animationRunning && activeMainSlot != desktopSlot) {
            boolean staleCompletedSwitchPending = mainSlotSwitchPendingSlot == activeMainSlot
                    && mainSlotSwitchPendingOldSlot != activeMainSlot;
            if (staleCompletedSwitchPending) {
                Log.w(TAG, "Clear completed main-slot focus pending before desktop promotion: "
                        + "pending=" + mainSlotSwitchPendingSlot
                        + ", old=" + mainSlotSwitchPendingOldSlot
                        + ", desktop=" + desktopSlot);
                clearPendingMainSlotSwitch();
            }
            if (mainSlotSwitchPendingSlot < 0 && mainContentReplacementPendingSlot < 0) {
                Log.i(TAG, "Retry verified primary desktop promotion: desktopSlot="
                        + desktopSlot + ", exitedSlot=" + exitedSlot
                        + ", attempt=" + attempt);
                switchMainSlot(desktopSlot, true);
            }
        }
        mainHandler.postDelayed(() -> finishExitedSlotCleanupAfterDesktopPromotion(
                generation, exitedSlot, exitedApp, primaryDesktop, desktopSlot,
                afterDesktopTakeover, attempt + 1), 32L);
    }

    private void clearExitedHostedAppSlot(int slot, LauncherApp exitedApp) {
        if (slot < 0 || slot >= MAX_WINDOWS || exitedApp == null) {
            return;
        }
        LauncherApp currentApp = windowApps[slot];
        if (currentApp == null || !exitedApp.isSameInstance(currentApp)) {
            return;
        }
        embeddedSyncGenerations[slot]++;
        EmbeddedAppHost host = embeddedHosts[slot];
        if (host instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) host).concealHostedSurfaceForDesktopTakeover(exitedApp);
        }
        windowApps[slot] = null;
        clearHostedAppRevealState(slot);
        windowViews[slot].setLiveAppVisible(false);
        renderWindows();
    }

    private void backgroundOpenedApps() {
        if (!suppressEmbeddedStarts) {
            suppressEmbeddedStarts = true;
            embeddedStartEpoch++;
            embeddedStartEpochStore.persist(embeddedStartEpoch);
        }
        mainSlotSwitchGeneration++;
        clearPendingMainSlotSwitch();
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (windowApps[slot] == null || embeddedHosts[slot] == null) {
                continue;
            }
            embeddedHosts[slot].invalidateTaskResolution();
        }
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (windowApps[slot] == null || embeddedHosts[slot] == null) {
                continue;
            }
            embeddedSyncGenerations[slot]++;
            embeddedHosts[slot].sendHome();
        }
    }

    private void suspendEmbeddedStartsForFullscreen() {
        if (suppressEmbeddedStarts) {
            return;
        }
        suppressEmbeddedStarts = true;
        embeddedStartEpoch++;
        embeddedStartEpochStore.persist(embeddedStartEpoch);
    }

    private boolean shouldRunEmbeddedStart(int startEpoch) {
        return !suppressEmbeddedStarts && startEpoch == embeddedStartEpoch;
    }

    private boolean handleOverlayBack() {
        if (isInternalSettingsVisible()) {
            hideInternalSettingsPage();
            return true;
        }
        if (hidePlaylistPanel()) {
            return true;
        }
        return false;
    }

    private void openSettingsInMain() {
        LauncherApp settingsApp = createLauncherAppForPackage("com.android.settings");
        if (settingsApp == null) {
            Intent settingsIntent = new Intent(Settings.ACTION_SETTINGS);
            ComponentName componentName = settingsIntent.resolveActivity(getPackageManager());
            if (componentName != null) {
                settingsApp = createLauncherAppForPackage(componentName.getPackageName());
            }
        }
        if (settingsApp == null) {
            Toast.makeText(this, "找不到系统设置", Toast.LENGTH_SHORT).show();
            return;
        }
        hideInternalSettingsPage();
        addOrFocusApp(settingsApp);
    }

    private LauncherApp createLauncherAppForPackage(String packageName) {
        try {
            return launcherAppRepository == null
                    ? null : launcherAppRepository.loadLauncherApp(packageName);
        } catch (RuntimeException e) {
            return null;
        }
    }

    private void addOrFocusLatestApp(String packageName) {
        for (LauncherApp app : launcherApps) {
            if (TextUtils.equals(app.packageName, packageName)) {
                addOrFocusApp(app);
                return;
            }
        }
        LauncherApp app = createLauncherAppForPackage(packageName);
        if (app != null) {
            addOrFocusApp(app);
        }
    }

    private void swapWithMain(int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS || slot == activeMainSlot
                || (windowApps[slot] == null && !isInternalSettingsSlot(slot)
                && !isDesktopHomeSlot(slot))
                || embeddedSlotClosing[slot]) {
            return;
        }
        if (isMainPaneSlot(slot)) {
            activateMainPane(slot, true);
            return;
        }
        if (dualMainLayout) {
            int middleMainSlot = getMiddleMainSlot();
            if (middleMainSlot < 0 || !activateMainPane(middleMainSlot, false)) {
                return;
            }
        }
        switchMainSlot(slot, true);
    }

    private void handleSideSlotClick(int slot) {
        dumpSlotState("sideClick slot=" + slot);
        boolean emptySideSlot = slot >= 0 && slot < MAX_WINDOWS
                && !isMainPaneSlot(slot) && isWindowSlotEnabled(slot)
                && !hasWindowContent(slot) && !embeddedSlotClosing[slot];
        LauncherApp mainApp = activeMainSlot >= 0 && activeMainSlot < MAX_WINDOWS
                ? windowApps[activeMainSlot] : null;
        boolean interactionBlocked = activityDestroyed || suppressEmbeddedStarts
                || exitOneStepPending || isCrossAppRouteUiBusy();
        EmptySideSlotClickPolicy.Action action = EmptySideSlotClickPolicy.decide(
                emptySideSlot, findDisplayedMainDesktopSlot() >= 0,
                mainApp != null && !mainApp.isHomeEntry(), interactionBlocked);
        switch (action) {
            case SHOW_DESKTOP_ALREADY_DISPLAYED:
                Toast.makeText(this, "当前已显示内置桌面", Toast.LENGTH_SHORT).show();
                return;
            case SHOW_DESKTOP_AND_PROMOTE:
                showBuiltInDesktopInEmptySideSlot(slot);
                return;
            case IGNORE:
            default:
                swapWithMain(slot);
        }
    }

    private void showBuiltInDesktopInEmptySideSlot(int slot) {
        if (dualMainLayout) {
            int middleMainSlot = getMiddleMainSlot();
            if (middleMainSlot < 0 || !activateMainPane(middleMainSlot, false)) {
                return;
            }
        }
        LauncherApp desktopApp = resolveBuiltInDesktopApp();
        if (desktopApp != null) {
            stageAppForMainPromotion(slot, desktopApp);
        } else {
            stageDesktopHomeForMainPromotion(slot);
        }
    }

    private void dismissSideWindow(int slot) {
        dismissAppWindow(slot, false, null);
    }

    private void dismissDisplayedBuiltInDesktop(
            int slot, LauncherApp desktopApp, Runnable completion) {
        if (slot < 0 || slot >= MAX_WINDOWS || desktopApp == null
                || windowApps[slot] == null
                || !desktopApp.isSameInstance(windowApps[slot])) {
            mainHandler.post(completion);
            return;
        }
        dismissAppWindow(slot, true, completion);
    }

    private void dismissAppWindow(int slot, boolean allowMainPane, Runnable completion) {
        if (slot < 0 || slot >= MAX_WINDOWS || (!allowMainPane && isMainPaneSlot(slot))
                || (windowApps[slot] == null && !isInternalSettingsSlot(slot)
                && !isDesktopHomeSlot(slot))
                || embeddedSlotClosing[slot]) {
            if (completion != null) {
                mainHandler.post(completion);
            }
            return;
        }
        if (isDesktopHomeSlot(slot)) {
            dismissDesktopHomeSideWindow(slot);
            return;
        }
        if (isInternalSettingsSlot(slot)) {
            dismissInternalSettingsSideWindow(slot);
            return;
        }
        embeddedSlotClosing[slot] = true;
        embeddedSyncGenerations[slot]++;
        LauncherApp dismissedApp = windowApps[slot];
        EmbeddedAppHost dismissedHost = embeddedHosts[slot];
        long dismissStartedUptime = SystemClock.uptimeMillis();
        OneStepWindowView windowView = windowViews[slot];
        int direction = getSideDismissDirection();
        windowView.animate().cancel();
        windowView.setElevation(0f);
        windowView.setTranslationZ(0f);
        windowView.setZ(0f);
        windowViews[activeMainSlot].bringToFront();
        ViewPropertyAnimator animator = windowView.animate()
                .alpha(0.18f)
                .setDuration(SIDE_DISMISS_SETTLE_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator());
        if (verticalWindowLayout) {
            animator.translationY(windowView.getHeight() + dp(24));
        } else {
            animator.translationX(direction * (windowView.getWidth() + dp(24)));
        }
        animator.start();
        closeDismissedSlot(slot, dismissedApp, dismissedHost, windowView,
                dismissStartedUptime, allowMainPane, completion);
    }

    private void dismissInternalSettingsSideWindow(int slot) {
        OneStepWindowView windowView = windowViews[slot];
        int direction = getSideDismissDirection();
        windowView.animate().cancel();
        ViewPropertyAnimator animator = windowView.animate()
                .alpha(0.18f)
                .setDuration(SIDE_DISMISS_SETTLE_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator());
        if (verticalWindowLayout) {
            animator.translationY(windowView.getHeight() + dp(24));
        } else {
            animator.translationX(direction * (windowView.getWidth() + dp(24)));
        }
        animator.withEndAction(() -> {
            if (activityDestroyed || isMainPaneSlot(slot) || !isInternalSettingsSlot(slot)) {
                return;
            }
            hideInternalSettingsPage();
            windowView.setTranslationX(0f);
            windowView.setTranslationY(0f);
            windowView.setScaleX(1f);
            windowView.setScaleY(1f);
            windowView.setAlpha(1f);
            renderWindows();
        }).start();
    }

    private void dismissDesktopHomeSideWindow(int slot) {
        OneStepWindowView windowView = windowViews[slot];
        int direction = getSideDismissDirection();
        windowView.animate().cancel();
        ViewPropertyAnimator animator = windowView.animate()
                .alpha(0.18f)
                .setDuration(SIDE_DISMISS_SETTLE_MS)
                .setInterpolator(new AccelerateDecelerateInterpolator());
        if (verticalWindowLayout) {
            animator.translationY(windowView.getHeight() + dp(24));
        } else {
            animator.translationX(direction * (windowView.getWidth() + dp(24)));
        }
        animator.withEndAction(() -> {
            if (activityDestroyed || isMainPaneSlot(slot) || !isDesktopHomeSlot(slot)) {
                return;
            }
            windowView.hideDesktopHome();
            windowView.setTranslationX(0f);
            windowView.setTranslationY(0f);
            windowView.setScaleX(1f);
            windowView.setScaleY(1f);
            windowView.setAlpha(1f);
            renderWindows();
        }).start();
    }

    private void closeDismissedSlot(int slot, LauncherApp dismissedApp,
                                    EmbeddedAppHost dismissedHost, OneStepWindowView windowView,
                                    long dismissStartedUptime, boolean allowMainPane,
                                    Runnable completion) {
        Runnable onClosed = () -> finishDismissedSlotAfterAnimation(slot, dismissedApp,
                dismissedHost, windowView, dismissStartedUptime, allowMainPane, completion);
        if (dismissedHost == null) {
            onClosed.run();
            return;
        }
        try {
            dismissedHost.closeApp(dismissedApp, onClosed);
        } catch (RuntimeException e) {
            Log.w(TAG, "Close dismissed app failed for slot " + slot + ": "
                    + e.getClass().getSimpleName());
            onClosed.run();
        }
    }

    private void finishDismissedSlotAfterAnimation(int slot, LauncherApp dismissedApp,
                                                   EmbeddedAppHost dismissedHost,
                                                   OneStepWindowView windowView,
                                                   long dismissStartedUptime,
                                                   boolean allowMainPane, Runnable completion) {
        long animationEndUptime = dismissStartedUptime + SIDE_DISMISS_SETTLE_MS + 16L;
        long remainingMs = Math.max(0L, animationEndUptime - SystemClock.uptimeMillis());
        windowView.postDelayed(() -> {
            if (slot >= 0 && slot < MAX_WINDOWS && embeddedSlotClosing[slot]
                    && windowApps[slot] == dismissedApp
                    && embeddedHosts[slot] == dismissedHost) {
                windowView.setLiveAppVisible(false);
                finishDismissedSlot(slot, dismissedApp, dismissedHost, windowView,
                        allowMainPane, completion);
            } else if (completion != null) {
                completion.run();
            }
        }, remainingMs);
    }

    private void finishDismissedSlot(int slot, LauncherApp dismissedApp,
                                     EmbeddedAppHost dismissedHost, OneStepWindowView windowView,
                                     boolean allowMainPane, Runnable completion) {
        mainHandler.post(() -> {
            if (activityDestroyed || slot < 0 || slot >= MAX_WINDOWS
                    || !embeddedSlotClosing[slot]
                    || (!allowMainPane && isMainPaneSlot(slot))
                    || embeddedHosts[slot] != dismissedHost
                    || windowApps[slot] != dismissedApp) {
                if (completion != null && !activityDestroyed) {
                    completion.run();
                }
                return;
            }
            windowApps[slot] = null;
            clearHostedAppRevealState(slot);
            
            clearPendingMainPromotionContent(slot);
            embeddedSlotClosing[slot] = false;
            windowView.setTranslationX(0f);
            windowView.setTranslationY(0f);
            windowView.setScaleX(1f);
            windowView.setScaleY(1f);
            windowView.setAlpha(1f);
            renderWindows();
            applyWindowLayout(false);
            if (completion != null) {
                completion.run();
            }
        });
    }

    private void settleSideWindowBack(OneStepWindowView windowView) {
        windowView.animate().cancel();
        windowView.animate()
                .translationX(0f)
                .translationY(0f)
                .alpha(1f)
                .setDuration(160)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .start();
    }

    private boolean isSideRailOnLeft() {
        return !mainOnLeft;
    }

    private int getSideDismissDirection() {
        return isSideRailOnLeft() ? -1 : 1;
    }

    private boolean movedPastSideDismissThreshold(float dx, float dy) {
        if (verticalWindowLayout) {
            return dy > 0
                    && Math.abs(dy) >= dp(SIDE_DISMISS_DISTANCE_DP)
                    && Math.abs(dy) > Math.abs(dx) * 0.85f;
        }
        int direction = getSideDismissDirection();
        return dx * direction > 0
                && Math.abs(dx) >= dp(SIDE_DISMISS_DISTANCE_DP)
                && Math.abs(dx) > Math.abs(dy) * 0.85f;
    }

    private String dumpSlotState(String where) {
        StringBuilder sb = new StringBuilder("SLOTDUMP ").append(where)
                .append(" active=").append(activeMainSlot)
                .append(" first=").append(firstMainSlot)
                .append(" second=").append(secondMainSlot)
                .append(" sideOrder=").append(sideSlotOrder);
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            sb.append(" | s").append(slot).append('=');
            if (isInternalSettingsSlot(slot)) {
                sb.append("SET");
            } else if (isDesktopHomeSlot(slot)) {
                sb.append("HOME");
            } else if (windowApps[slot] != null) {
                sb.append(windowApps[slot].packageName);
            } else {
                sb.append('-');
            }
        }
        Log.i(TAG, sb.toString());
        return sb.toString();
    }

    private void switchMainSlot(int newMainSlot, boolean animate) {
        if (isWindowAnimationRunning()) {
            
            
            cancelWindowSurfaceAnimation();
        }
        dumpSlotState("switchMainSlot to=" + newMainSlot);
        if (newMainSlot >= 0 && newMainSlot < MAX_WINDOWS
                && newMainSlot != activeMainSlot && isMainPaneSlot(newMainSlot)) {
            activateMainPane(newMainSlot, true);
            return;
        }
        if (newMainSlot < 0 || newMainSlot >= MAX_WINDOWS
                || newMainSlot == activeMainSlot || embeddedSlotClosing[newMainSlot]
                || isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0) {
            return;
        }
        int oldMainSlot = activeMainSlot;
        int sideIndex = sideSlotOrder.indexOf(newMainSlot);
        if (sideIndex < 0) {
            return;
        }
        if (mainSlotSwitchPendingSlot == newMainSlot
                && mainSlotSwitchPendingOldSlot == oldMainSlot) {
            return;
        }
        beginWindowSwitchAnimationCriticalSection();
        final int switchGeneration = ++mainSlotSwitchGeneration;
        EmbeddedAppHost promotedHost = embeddedHosts[newMainSlot];
        if (windowApps[newMainSlot] != null
                && promotedHost instanceof RootVirtualDisplayHost) {
            mainSlotSwitchPendingSlot = newMainSlot;
            mainSlotSwitchPendingOldSlot = oldMainSlot;
            scheduleMainSlotSwitchPendingWatchdog(switchGeneration);
            ((RootVirtualDisplayHost) promotedHost).checkDisplayImeLocalPolicy(
                    "slot promoted to main",
                    () -> {
                        if (switchGeneration != mainSlotSwitchGeneration) {
                            clearPendingMainPromotionContent(newMainSlot);
                            clearPendingMainSlotSwitch();
                            scheduleDeferredWindowSwitchWorkFlush();
                            return;
                        }
                        finishMainSlotSwitchAfterPolicy(switchGeneration, oldMainSlot,
                                newMainSlot, animate);
                    },
                    () -> rejectMainSlotSwitch(switchGeneration, oldMainSlot, newMainSlot,
                            "IME policy was not confirmed", "输入法显示策略设置失败，请重试"));
            return;
        }
        finishMainSlotSwitchAfterPolicy(switchGeneration, oldMainSlot,
                newMainSlot, animate);
    }

    private void clearPendingMainSlotSwitch() {
        mainSlotSwitchPendingSlot = -1;
        mainSlotSwitchPendingOldSlot = -1;
    }

    private static final long MAIN_SLOT_SWITCH_PENDING_WATCHDOG_MS = 1500L;

    private void scheduleMainSlotSwitchPendingWatchdog(final int generation) {
        mainHandler.postDelayed(() -> {
            int stuckSlot = mainSlotSwitchPendingSlot;
            if (stuckSlot < 0 || generation != mainSlotSwitchGeneration) {
                return;
            }
            Log.w(TAG, "Main slot switch pending watchdog fired: slot=" + stuckSlot);
            clearPendingMainSlotSwitch();
            if (stuckSlot >= 0 && stuckSlot < MAX_WINDOWS) {
                clearPendingMainPromotionContent(stuckSlot);
            }
            scheduleDeferredWindowSwitchWorkFlush();
        }, MAIN_SLOT_SWITCH_PENDING_WATCHDOG_MS);
    }

    private static final long CONTENT_REPLACEMENT_WATCHDOG_MS = 1200L;

    private void scheduleContentReplacementWatchdog(final int slot, final int generation) {
        mainHandler.postDelayed(() -> {
            if (slot < 0 || slot >= MAX_WINDOWS
                    || generation != mainContentReplacementGeneration
                    || mainContentReplacementPendingSlot != slot) {
                return;
            }
            Log.w(TAG, "Content replacement watchdog fired: slot=" + slot);
            mainContentReplacementPendingSlot = -1;
            OneStepWindowView view = windowViews[slot];
            if (view != null) {
                view.animate().cancel();
                view.setAlpha(1f);
                view.setScaleX(1f);
                view.setScaleY(1f);
                view.setTranslationX(0f);
                view.setTranslationY(0f);
            }
            renderWindows();
            scheduleDeferredWindowSwitchWorkFlush();
        }, CONTENT_REPLACEMENT_WATCHDOG_MS);
    }

    private static final long STAGED_PROMOTION_WATCHDOG_MS = 3000L;

    private void scheduleStagedPromotionWatchdog(final int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS) {
            return;
        }
        mainHandler.postDelayed(() -> {
            if (slot == pendingInternalSettingsSlot || slot == pendingDesktopHomeSlot
                    || slot == pendingMainAppStartSlot) {
                Log.w(TAG, "Staged promotion watchdog fired: slot=" + slot);
                clearPendingMainPromotionContent(slot);
            }
        }, STAGED_PROMOTION_WATCHDOG_MS);
    }

    private void finishMainSlotSwitchAfterPolicy(int switchGeneration, int oldMainSlot,
                                                 int newMainSlot, boolean animate) {
        if (switchGeneration != mainSlotSwitchGeneration
                || activeMainSlot != oldMainSlot) {
            clearPendingMainPromotionContent(newMainSlot);
            clearPendingMainSlotSwitch();
            scheduleDeferredWindowSwitchWorkFlush();
            return;
        }
        Runnable transferFocus = () -> {
            if (switchGeneration == mainSlotSwitchGeneration
                    && activeMainSlot == newMainSlot) {
                transferMainSlotFocus(switchGeneration, oldMainSlot, newMainSlot);
            }
        };
        Runnable performSwitch = () -> {
            if (switchGeneration != mainSlotSwitchGeneration
                    || activeMainSlot != oldMainSlot) {
                clearPendingMainPromotionContent(newMainSlot);
                clearPendingMainSlotSwitch();
                scheduleDeferredWindowSwitchWorkFlush();
                return;
            }
            if (!completeMainSlotSwitch(oldMainSlot, newMainSlot, animate, transferFocus)) {
                clearPendingMainPromotionContent(newMainSlot);
                clearPendingMainSlotSwitch();
                scheduleDeferredWindowSwitchWorkFlush();
            }
        };
        if (animate && shouldWarmUpIdleWindowSwitch()
                && !canUseSurfaceWindowAnimationForCurrentLayout()) {
            warmUpIdleWindowSwitch(switchGeneration, oldMainSlot, newMainSlot, performSwitch);
        } else {
            performSwitch.run();
        }
    }

    private boolean canUseSurfaceWindowAnimationForCurrentLayout() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) {
            return false;
        }
        int liveSurfaceCount = 0;
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (!isWindowSlotEnabled(slot)) {
                continue;
            }
            if (windowApps[slot] != null
                    && embeddedHosts[slot] instanceof RootVirtualDisplayHost) {
                liveSurfaceCount++;
            }
        }
        return liveSurfaceCount >= 2;
    }

    private boolean shouldWarmUpIdleWindowSwitch() {
        return workspace != null && workspace.isAttachedToWindow()
                && SystemClock.uptimeMillis() - windowAnimationController.getLastAnimationEndUptime()
                >= WINDOW_SWITCH_IDLE_WARMUP_THRESHOLD_MS;
    }

    private void warmUpIdleWindowSwitch(int switchGeneration, int oldMainSlot,
                                        int newMainSlot, Runnable performSwitch) {
        OneStepWindowView oldMainView = windowViews[oldMainSlot];
        OneStepWindowView newMainView = windowViews[newMainSlot];
        if (oldMainView != null) {
            oldMainView.invalidate();
        }
        if (newMainView != null) {
            newMainView.invalidate();
        }
        workspace.invalidate();
        workspace.postOnAnimation(() -> {
            if (switchGeneration != mainSlotSwitchGeneration
                    || activeMainSlot != oldMainSlot
                    || newMainSlot < 0 || newMainSlot >= MAX_WINDOWS
                    || embeddedSlotClosing[newMainSlot]) {
                clearPendingMainPromotionContent(newMainSlot);
                clearPendingMainSlotSwitch();
                scheduleDeferredWindowSwitchWorkFlush();
                return;
            }
            workspace.postOnAnimation(performSwitch);
        });
    }

    private void transferMainSlotFocus(int switchGeneration, int oldMainSlot, int newMainSlot) {
        EmbeddedAppHost oldHost = embeddedHosts[oldMainSlot];
        if (oldHost instanceof RootVirtualDisplayHost) {
            RootVirtualDisplayHost oldRootHost = (RootVirtualDisplayHost) oldHost;
            oldRootHost.depriveHostedInputFocus();
        }
        if (windowApps[newMainSlot] == null) {
            clearPendingMainSlotSwitch();
            return;
        }
        EmbeddedAppHost newHost = embeddedHosts[newMainSlot];
        if (newHost instanceof RootVirtualDisplayHost) {
            RootVirtualDisplayHost newRootHost = (RootVirtualDisplayHost) newHost;
            cancelScheduledHostedDisplayFocus();
            newRootHost.focusHostedDisplayAsync("main slot switched", () -> {
                if (switchGeneration == mainSlotSwitchGeneration
                        && activeMainSlot == newMainSlot) {
                    newRootHost.restoreHostedInputFocus();
                    refreshAllHostedSensorLandscapeRotations();
                }
                if (mainSlotSwitchPendingSlot == newMainSlot
                        && mainSlotSwitchPendingOldSlot == oldMainSlot) {
                    clearPendingMainSlotSwitch();
                }
            });
            return;
        }
        clearPendingMainSlotSwitch();
    }

    private void rejectMainSlotSwitch(int switchGeneration, int oldMainSlot, int newMainSlot,
                                      String logReason, String userMessage) {
        if (switchGeneration != mainSlotSwitchGeneration) {
            clearPendingMainPromotionContent(newMainSlot);
            clearPendingMainSlotSwitch();
            scheduleDeferredWindowSwitchWorkFlush();
            return;
        }
        clearPendingMainPromotionContent(newMainSlot);
        clearPendingMainSlotSwitch();
        scheduleDeferredWindowSwitchWorkFlush();
        if (activityDestroyed || suppressEmbeddedStarts || exitOneStepPending
                || activeMainSlot != oldMainSlot) {
            return;
        }
        if (embeddedSlotClosing[newMainSlot]) {
            return;
        }
        Log.w(TAG, "Keep current main slot because " + logReason + ": slot=" + newMainSlot);
        Toast.makeText(this, userMessage, Toast.LENGTH_SHORT).show();
    }

    private boolean completeMainSlotSwitch(int oldMainSlot, int newMainSlot, boolean animate,
                                           Runnable onLayoutSettled) {
        if (activityDestroyed || suppressEmbeddedStarts || exitOneStepPending
                || activeMainSlot != oldMainSlot
                || newMainSlot < 0 || newMainSlot >= MAX_WINDOWS
                || newMainSlot == oldMainSlot || embeddedSlotClosing[newMainSlot]
                || (windowApps[newMainSlot] == null
                && !isInternalSettingsSlot(newMainSlot)
                && !isDesktopHomeSlot(newMainSlot)
                && !isPendingMainAppStartSlot(newMainSlot)
                && !isPendingInternalSettingsSlot(newMainSlot)
                && !isPendingDesktopHomeSlot(newMainSlot))) {
            return false;
        }
        int sideIndex = sideSlotOrder.indexOf(newMainSlot);
        if (sideIndex < 0) {
            return false;
        }
        sideSlotOrder.set(sideIndex, oldMainSlot);
        if (oldMainSlot == firstMainSlot) {
            firstMainSlot = newMainSlot;
        } else if (oldMainSlot == secondMainSlot) {
            secondMainSlot = newMainSlot;
        } else {
            return false;
        }
        activeMainSlot = newMainSlot;
        EmbeddedAppHost oldHost = embeddedHosts[oldMainSlot];
        if (oldHost instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) oldHost).syncLaunchRoutingSource();
        }
        EmbeddedAppHost newHost = embeddedHosts[newMainSlot];
        if (newHost instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) newHost).syncLaunchRoutingSource();
        }
        if (!dualMainLayout) {
            mainOnLeft = !mainOnLeft;
        }
        updateTopNavigationControls();
        applyWindowLayout(animate, () -> {
            dumpSlotState("switchSettled old=" + oldMainSlot + " new=" + newMainSlot);
            startPendingMainAppAfterPromotion(newMainSlot);
            showPendingInternalSettingsAfterPromotion(newMainSlot);
            showPendingDesktopHomeAfterPromotion(newMainSlot);
            refreshEmbeddedSlotsAfterRoleChange(oldMainSlot, newMainSlot);
            LauncherApp newMainApp = windowApps[newMainSlot];
            if (hasRoutedLaunchIntent(newMainApp)) {
                syncEmbeddedSlot(newMainSlot);
            }
            if (onLayoutSettled != null) {
                onLayoutSettled.run();
            }
        });
        if (!isWindowAnimationRunning() && windowSwitchAnimationCritical) {
            scheduleDeferredWindowSwitchWorkFlush();
        }
        return true;
    }

    private void refreshEmbeddedSlotsAfterRoleChange(int oldMainSlot, int newMainSlot) {
        refreshEmbeddedSlotAfterRoleChange(oldMainSlot);
        if (newMainSlot != oldMainSlot) {
            refreshEmbeddedSlotAfterRoleChange(newMainSlot);
        }
    }

    private void refreshEmbeddedSlotAfterRoleChange(int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS || embeddedSlotClosing[slot]
                || windowApps[slot] == null) {
            return;
        }
        EmbeddedAppHost host = embeddedHosts[slot];
        if (host != null) {
            host.refreshContainerSize();
        }
    }

    private boolean shouldUseDualMainLayout(Configuration configuration) {
        return configuration != null
                && WindowLayoutModePolicy.shouldUseDualMain(
                        configuration.smallestScreenWidthDp,
                        configuration.screenWidthDp,
                        configuration.screenHeightDp);
    }

    private void applyOneStepRotationPolicy(Configuration configuration) {
        boolean largeScreen = configuration != null
                && WindowLayoutModePolicy.isLargeScreen(
                        configuration.smallestScreenWidthDp);
        int requestedOrientation = largeScreen
                ? ActivityInfo.SCREEN_ORIENTATION_FULL_SENSOR
                : ActivityInfo.SCREEN_ORIENTATION_NOSENSOR;
        if (getRequestedOrientation() != requestedOrientation) {
            setRequestedOrientation(requestedOrientation);
        }
    }

    private boolean reconcileMainPaneCount(Configuration configuration) {
        boolean shouldUseDualMain = shouldUseDualMainLayout(configuration);
        if (shouldUseDualMain == dualMainLayout) {
            return false;
        }
        dualMainLayout = shouldUseDualMain;
        mainPanesSwapped = false;
        if (shouldUseDualMain) {
            firstMainSlot = activeMainSlot;
            secondMainSlot = chooseSecondMainSlot();
            sideSlotOrder.remove(Integer.valueOf(secondMainSlot));
        } else {
            int demotedMainSlot = activeMainSlot == firstMainSlot
                    ? secondMainSlot : firstMainSlot;
            firstMainSlot = activeMainSlot;
            secondMainSlot = -1;
            if (demotedMainSlot >= 0) {
                sideSlotOrder.remove(Integer.valueOf(demotedMainSlot));
                sideSlotOrder.add(0, demotedMainSlot);
            }
        }
        normalizeSideSlotOrder();
        for (int slot = 0; slot < windowViews.length; slot++) {
            if (windowViews[slot] != null) {
                windowViews[slot].setMainWindowMode(isMainPaneSlot(slot));
            }
        }
        scheduleSideInputProtectionSync();
        return true;
    }

    private int chooseSecondMainSlot() {
        int visibleSideCount = Math.min(sideWindowCount, sideSlotOrder.size());
        for (int index = 0; index < visibleSideCount; index++) {
            int slot = sideSlotOrder.get(index);
            if (hasWindowContent(slot)) {
                return slot;
            }
        }
        for (int slot : sideSlotOrder) {
            if (hasWindowContent(slot)) {
                return slot;
            }
        }
        return sideSlotOrder.isEmpty() ? -1 : sideSlotOrder.get(0);
    }

    private boolean hasWindowContent(int slot) {
        return slot >= 0 && slot < MAX_WINDOWS
                && (windowApps[slot] != null || isInternalSettingsSlot(slot)
                || isDesktopHomeSlot(slot) || isPendingMainAppStartSlot(slot)
                || isPendingInternalSettingsSlot(slot) || isPendingDesktopHomeSlot(slot));
    }

    private void normalizeSideSlotOrder() {
        LinkedHashSet<Integer> normalized = new LinkedHashSet<>();
        for (int slot : sideSlotOrder) {
            if (slot >= 0 && slot < MAX_WINDOWS && !isMainPaneSlot(slot)) {
                normalized.add(slot);
            }
        }
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (!isMainPaneSlot(slot)) {
                normalized.add(slot);
            }
        }
        sideSlotOrder.clear();
        sideSlotOrder.addAll(normalized);
    }

    private void configureMainPaneImePolicies() {
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            if (!isMainPaneSlot(slot) || windowApps[slot] == null
                    || !(embeddedHosts[slot] instanceof RootVirtualDisplayHost)) {
                continue;
            }
            ((RootVirtualDisplayHost) embeddedHosts[slot]).checkDisplayImeLocalPolicy(
                    "slot assigned to large-screen main pane", () -> { }, () -> { });
        }
    }

    private boolean activateMainPane(int slot, boolean requestHostedFocus) {
        if (activityDestroyed || !isMainPaneSlot(slot)) {
            return false;
        }
        if (slot == activeMainSlot) {
            if (requestHostedFocus) {
                scheduleHostedDisplayFocus("active main pane selected");
            }
            return true;
        }
        if (isWindowAnimationRunning() || mainSlotSwitchPendingSlot >= 0
                || mainContentReplacementPendingSlot >= 0) {
            return false;
        }
        setActiveMainPane(slot, requestHostedFocus);
        return true;
    }

    private void setActiveMainPane(int slot, boolean requestHostedFocus) {
        int oldMainSlot = activeMainSlot;
        EmbeddedAppHost oldHost = embeddedHosts[oldMainSlot];
        if (oldHost instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) oldHost).depriveHostedInputFocus();
        }
        activeMainSlot = slot;
        EmbeddedAppHost newHost = embeddedHosts[slot];
        if (newHost instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) newHost).restoreHostedInputFocus();
        }
        syncLaunchRoutingSource(oldMainSlot);
        syncLaunchRoutingSource(slot);
        if (workspace != null) {
            applyWindowZOrder();
        }
        updateTopNavigationControls();
        scheduleSideInputProtectionSync();
        LauncherApp activeApp = windowApps[slot];
        if (hasRoutedLaunchIntent(activeApp)) {
            syncEmbeddedSlot(slot);
        }
        if (requestHostedFocus) {
            scheduleHostedDisplayFocus("main pane selected");
        }
        refreshAllHostedSensorLandscapeRotations();
    }

    private void activateEdgeMainPaneForFullscreen() {
        int edgeMainSlot = getEdgeMainSlot();
        if (edgeMainSlot == activeMainSlot || !isMainPaneSlot(edgeMainSlot)) {
            return;
        }
        cancelWindowSurfaceAnimation();
        setActiveMainPane(edgeMainSlot, false);
    }

    private void syncLaunchRoutingSource(int slot) {
        if (slot >= 0 && slot < embeddedHosts.length
                && embeddedHosts[slot] instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) embeddedHosts[slot]).syncLaunchRoutingSource();
        }
    }

    private int getOtherMainSlot(int slot) {
        if (secondMainSlot < 0) {
            return -1;
        }
        if (slot == firstMainSlot) {
            return secondMainSlot;
        }
        if (slot == secondMainSlot) {
            return firstMainSlot;
        }
        return -1;
    }

    private int getMiddleMainSlot() {
        if (!dualMainLayout || secondMainSlot < 0) {
            return activeMainSlot;
        }
        return mainPanesSwapped ? firstMainSlot : secondMainSlot;
    }

    private int getEdgeMainSlot() {
        if (!dualMainLayout || secondMainSlot < 0 || workspace == null
                || workspace.getWidth() <= 0) {
            return activeMainSlot;
        }
        Rect[] rects = calculateWindowRects();
        Rect firstRect = rects[firstMainSlot];
        Rect secondRect = rects[secondMainSlot];
        return MainPaneFullscreenPolicy.selectEdgeMainSlot(
                workspace.getWidth(),
                firstMainSlot, firstRect.left, firstRect.right,
                secondMainSlot, secondRect.left, secondRect.right,
                activeMainSlot);
    }

    private boolean isMainPaneSlot(int slot) {
        return slot >= 0 && (slot == firstMainSlot || slot == secondMainSlot);
    }

    private boolean isMainDisplaySlot(int slot) {
        return slot == activeMainSlot;
    }

    private void syncEmbeddedSlot(int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS || windowViews[slot] == null) {
            return;
        }
        LauncherApp app = windowApps[slot];
        int generation = ++embeddedSyncGenerations[slot];
        if (app == null || embeddedSlotClosing[slot]) {
            clearHostedAppRevealState(slot);
            windowViews[slot].setLiveAppVisible(false);
            return;
        }
        EmbeddedAppHost host = embeddedHosts[slot];
        RootVirtualDisplayHost rootHost = host instanceof RootVirtualDisplayHost
                ? (RootVirtualDisplayHost) host : null;
        boolean resolvedRootTask = rootHost != null && rootHost.hasResolvedHostedTask(app);
        boolean keepHostedSurfaceVisible = rootHost != null
                && rootHost.shouldKeepHostedSurfaceVisibleDuringValidation(app);
        if (rootHost != null && !resolvedRootTask && !keepHostedSurfaceVisible) {
            clearHostedAppRevealState(slot);
            windowViews[slot].setLiveAppVisible(false);
        } else {
            setHostedSurfaceAlpha(slot, 1f);
            windowViews[slot].setLiveAppVisible(true);
        }
        windowViews[slot].requestLayout();
        int startEpoch = embeddedStartEpoch;
        windowViews[slot].post(() -> startEmbeddedSlotWhenReady(slot, generation, startEpoch, app,
                EMBEDDED_START_MAX_RETRIES));
    }

    private void startEmbeddedSlotWhenReady(int slot, int generation, int startEpoch,
                                            LauncherApp expectedApp, int retriesLeft) {
        if (slot < 0 || slot >= MAX_WINDOWS || generation != embeddedSyncGenerations[slot]
                || embeddedSlotClosing[slot]) {
            return;
        }
        if (!shouldRunEmbeddedStart(startEpoch)) {
            return;
        }
        LauncherApp currentApp = windowApps[slot];
        if (currentApp == null || !currentApp.isSameInstance(expectedApp)) {
            return;
        }

        OneStepWindowView windowView = windowViews[slot];
        EmbeddedAppHost host = embeddedHosts[slot];
        if (windowView == null || host == null) {
            String reason = host == null ? "未创建嵌入宿主" : host.getUnavailableReason();
            Log.w(TAG, "Cannot embed " + currentApp.packageName + " in slot " + slot
                    + ": " + reason);
            showEmbeddingHintIfNeeded(reason);
            if (windowView != null) {
                windowView.setLiveAppVisible(false);
            }
            return;
        }

        View hostView = host.getView();
        boolean ready = windowView.getEmbeddedContentWidth() > 0
                && windowView.getEmbeddedContentHeight() > 0
                && hostView != null
                && hostView.getWidth() > 0
                && hostView.getHeight() > 0;
        boolean canStartBeforeLayout = host.canStartBeforeLayout();
        if (!ready && !canStartBeforeLayout && retriesLeft > 0) {
            windowView.postDelayed(() -> startEmbeddedSlotWhenReady(slot, generation,
                    startEpoch, expectedApp, retriesLeft - 1), EMBEDDED_START_RETRY_MS);
            return;
        }

        Rect frame = getWindowFrame(windowView);
        String hostSize = hostView == null ? "0x0"
                : hostView.getWidth() + "x" + hostView.getHeight();
        Log.i(TAG, "Start embedded slot " + slot
                + " main=" + isMainDisplaySlot(slot)
                + " app=" + currentApp.packageName
                + " frame=" + frame.width() + "x" + frame.height()
                + "@" + frame.left + "," + frame.top
                + " content=" + windowView.getEmbeddedContentWidth()
                + "x" + windowView.getEmbeddedContentHeight()
                + " host=" + hostSize
                + " type=" + host.getClass().getSimpleName());

        boolean live = (ready || canStartBeforeLayout) && host.start(currentApp);
        boolean revealPending = host instanceof RootVirtualDisplayHost
                && ((RootVirtualDisplayHost) host).isHostedSurfaceRevealPending(currentApp);
        windowView.setLiveAppVisible(live && !revealPending);
        if (!live) {
            String reason = ready ? host.getUnavailableReason() : "嵌入容器未完成布局";
            Log.w(TAG, "Cannot embed " + currentApp.packageName + " in slot " + slot
                    + ": " + reason);
            showEmbeddingHintIfNeeded(reason);
        }
    }

    private void clearHostedAppRevealState(int slot) {
        if (slot < 0 || slot >= MAX_WINDOWS) {
            return;
        }
        setHostedSurfaceAlpha(slot, 0f);
    }

    private void setHostedSurfaceAlpha(int slot, float alpha) {
        if (slot < 0 || slot >= MAX_WINDOWS) {
            return;
        }
        EmbeddedAppHost host = embeddedHosts[slot];
        if (host instanceof RootVirtualDisplayHost) {
            ((RootVirtualDisplayHost) host).setHostedSurfaceAlpha(alpha);
        }
    }

    private void logSystemPermissionState() {
        for (String permission : REQUIRED_EMBEDDING_PERMISSIONS) {
            int state = checkSelfPermission(permission);
            Log.i(TAG, permission + "="
                    + (state == PackageManager.PERMISSION_GRANTED ? "granted" : "denied"));
        }
        Log.i(TAG, "installMode=" + (isSystemAppInstall() ? "system" : "data"));
    }

    private boolean hasGrantedSystemEmbeddingPermission() {
        for (String permission : REQUIRED_EMBEDDING_PERMISSIONS) {
            if (checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED) {
                return true;
            }
        }
        return false;
    }

    private boolean isSystemAppInstall() {
        int flags = getApplicationInfo().flags;
        return (flags & ApplicationInfo.FLAG_SYSTEM) != 0
                || (flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0;
    }

    private void showEmbeddingHintIfNeeded(String reason) {
        if (embeddingHintShown) {
            return;
        }
        embeddingHintShown = true;
        String detail = TextUtils.isEmpty(reason) ? "" : "：" + reason;
        Toast.makeText(this, "当前环境未开放固定容器内活 App 嵌入" + detail, Toast.LENGTH_LONG).show();
    }

    private void showRootAuthorizationHintIfNeeded() {
        if (rootAuthorizationHintShown || activityDestroyed) {
            return;
        }
        rootAuthorizationHintShown = true;
        Toast.makeText(this, "请授权root权限，如已授权请重启OneStep重试",
                Toast.LENGTH_LONG).show();
    }

    private void startRunningTaskMonitoring() {
        if (activityDestroyed || runningTaskMonitoringActive) {
            return;
        }
        runningTaskMonitoringActive = true;
        runningTaskRefreshPending = false;
        runningTaskMonitorGeneration++;
        mainHandler.removeCallbacks(runningTaskMonitorRunnable);
        mainHandler.post(runningTaskMonitorRunnable);
    }

    private void stopRunningTaskMonitoring() {
        runningTaskMonitoringActive = false;
        runningTaskQueryInFlight = false;
        runningTaskRefreshPending = false;
        runningTaskMonitorGeneration++;
        mainHandler.removeCallbacks(runningTaskMonitorRunnable);
    }

    private void requestRunningTaskStatusRefresh() {
        if (!runningTaskMonitoringActive || activityDestroyed) {
            return;
        }
        if (runningTaskQueryInFlight) {
            runningTaskRefreshPending = true;
            return;
        }
        mainHandler.removeCallbacks(runningTaskMonitorRunnable);
        mainHandler.postDelayed(
                runningTaskMonitorRunnable, RUNNING_TASK_EVENT_REFRESH_DELAY_MS);
    }

    private void queryRunningTaskStatusesAsync() {
        if (!runningTaskMonitoringActive || activityDestroyed || runningTaskQueryInFlight) {
            return;
        }
        final int generation = runningTaskMonitorGeneration;
        final List<LauncherApp> apps = new ArrayList<>(launcherApps);
        runningTaskQueryInFlight = true;
        try {
            runningTaskExecutor.execute(() -> {
                Set<String> snapshot = queryTaskBackedAppInstances(apps);
                mainHandler.post(() -> finishRunningTaskStatusQuery(generation, snapshot));
            });
        } catch (RuntimeException e) {
            runningTaskQueryInFlight = false;
            scheduleNextRunningTaskStatusQuery(RUNNING_TASK_MONITOR_RETRY_INTERVAL_MS);
        }
    }

    private void finishRunningTaskStatusQuery(int generation, Set<String> snapshot) {
        if (!runningTaskMonitoringActive || activityDestroyed
                || generation != runningTaskMonitorGeneration) {
            return;
        }
        runningTaskQueryInFlight = false;
        if (snapshot != null && !taskBackedAppInstances.equals(snapshot)) {
            taskBackedAppInstances.clear();
            taskBackedAppInstances.addAll(snapshot);
            updateShortcutAppStatuses();
        }
        boolean refreshAgain = runningTaskRefreshPending;
        runningTaskRefreshPending = false;
        scheduleNextRunningTaskStatusQuery(refreshAgain
                ? RUNNING_TASK_EVENT_REFRESH_DELAY_MS
                : snapshot == null
                ? RUNNING_TASK_MONITOR_RETRY_INTERVAL_MS
                : RUNNING_TASK_MONITOR_INTERVAL_MS);
    }

    private void scheduleNextRunningTaskStatusQuery(long delayMs) {
        if (!runningTaskMonitoringActive || activityDestroyed) {
            return;
        }
        mainHandler.removeCallbacks(runningTaskMonitorRunnable);
        mainHandler.postDelayed(runningTaskMonitorRunnable, delayMs);
    }

    @SuppressWarnings("deprecation")
    private Set<String> queryTaskBackedAppInstances(List<LauncherApp> apps) {
        ActivityManager activityManager = getSystemService(ActivityManager.class);
        if (activityManager == null) {
            return null;
        }
        List<RunningTaskAppResolver.TaskIdentity> tasks = new ArrayList<>();
        Set<Integer> recentTaskIds = new HashSet<>();
        boolean querySucceeded = false;
        RuntimeException lastFailure = null;
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks =
                    activityManager.getRunningTasks(RUNNING_TASK_QUERY_LIMIT);
            if (runningTasks != null) {
                for (ActivityManager.RunningTaskInfo task : runningTasks) {
                    if (task != null) {
                        tasks.add(toTaskIdentity(task));
                        int taskId = readTaskId(task);
                        if (taskId > 0) {
                            recentTaskIds.add(taskId);
                        }
                    }
                }
            }
            querySucceeded = true;
        } catch (RuntimeException e) {
            lastFailure = e;
        }
        if (querySucceeded) {
            // Only consult the (expensive) recents list when the cheap
            // running-task scan found nothing task-backed at all; that covers
            // the corner case of an app that survives purely as a recent
            // entry, at a third of the previous poll frequency.
            List<RunningTaskAppResolver.AppIdentity> probe =
                    new ArrayList<>(apps.size());
            for (LauncherApp app : apps) {
                probe.add(new RunningTaskAppResolver.AppIdentity(
                        app.instanceKey(), app.componentKey(), app.packageName,
                        app.userId()));
            }
            Set<String> quick = RunningTaskAppResolver.resolve(probe, tasks);
            if (!quick.isEmpty()) {
                return quick;
            }
        }
        try {
            List<ActivityManager.RecentTaskInfo> recentTasks = activityManager.getRecentTasks(
                    RUNNING_TASK_QUERY_LIMIT, ActivityManager.RECENT_WITH_EXCLUDED);
            if (recentTasks != null) {
                for (ActivityManager.RecentTaskInfo task : recentTasks) {
                    if (task != null) {
                        tasks.add(toTaskIdentity(task));
                        int taskId = readTaskId(task);
                        if (taskId > 0) {
                            recentTaskIds.add(taskId);
                        }
                    }
                }
            }
            querySucceeded = true;
        } catch (RuntimeException e) {
            lastFailure = e;
        }
        if (!querySucceeded) {
            if (!runningTaskQueryFailureLogged) {
                runningTaskQueryFailureLogged = true;
                Log.w(TAG, "Unable to query system tasks for app status", lastFailure);
            }
            return null;
        }
        runningTaskQueryFailureLogged = false;
        List<RunningTaskAppResolver.AppIdentity> appIdentities =
                new ArrayList<>(apps.size());
        for (LauncherApp app : apps) {
            appIdentities.add(new RunningTaskAppResolver.AppIdentity(
                    app.instanceKey(), app.componentKey(), app.packageName, app.userId()));
        }
        return RunningTaskAppResolver.resolve(appIdentities, tasks);
    }

    private RunningTaskAppResolver.TaskIdentity toTaskIdentity(
            ActivityManager.RecentTaskInfo task) {
        return new RunningTaskAppResolver.TaskIdentity(
                readTaskUserId(task),
                componentKey(task.baseIntent == null ? null : task.baseIntent.getComponent()),
                componentKey(task.origActivity),
                componentKey(task.baseActivity),
                componentKey(task.topActivity));
    }

    private RunningTaskAppResolver.TaskIdentity toTaskIdentity(
            ActivityManager.RunningTaskInfo task) {
        return new RunningTaskAppResolver.TaskIdentity(
                readTaskUserId(task),
                componentKey(task.baseIntent == null ? null : task.baseIntent.getComponent()),
                "",
                componentKey(task.baseActivity),
                componentKey(task.topActivity));
    }

    private int readTaskUserId(Object taskInfo) {
        try {
            return taskInfo.getClass().getField("userId").getInt(taskInfo);
        } catch (ReflectiveOperationException | RuntimeException e) {
            return android.os.Process.myUserHandle().hashCode();
        }
    }

    private int readTaskId(Object taskInfo) {
        for (String fieldName : new String[]{"taskId", "id"}) {
            try {
                int taskId = taskInfo.getClass().getField(fieldName).getInt(taskInfo);
                if (taskId > 0) {
                    return taskId;
                }
            } catch (ReflectiveOperationException | RuntimeException ignored) {
                
            }
        }
        return -1;
    }

    private String componentKey(ComponentName componentName) {
        return componentName == null ? "" : componentName.flattenToString();
    }

    private void renderWindows() {
        for (int i = 0; i < MAX_WINDOWS; i++) {
            windowViews[i].bind(windowApps[i], i);
        }
        updateShortcutAppStatuses();
        requestRunningTaskStatusRefresh();
        scheduleSideInputProtectionSync();
    }

    private void updateShortcutAppStatuses() {
        updateTopAppStripOrder();
        for (AppShortcutView shortcutView : shortcutViews) {
            String instanceKey = shortcutView.getInstanceKeyValue();
            boolean taskPresent = taskBackedAppInstances.contains(instanceKey);
            boolean foreground = findSlot(instanceKey) >= 0;
            shortcutView.setActive(foreground);
            shortcutView.setPinned(topAppPinnedInstanceKeys.contains(instanceKey));
            shortcutView.setAppStatus(foreground
                    ? AppShortcutView.AppStatus.FOREGROUND
                    : taskPresent
                    ? AppShortcutView.AppStatus.BACKGROUND
                    : AppShortcutView.AppStatus.NONE);
        }
    }

    private boolean shouldShieldSideInput(int slot) {
        return activityResumed && !activityDestroyed
                && slot >= 0 && slot < MAX_WINDOWS
                && !isMainPaneSlot(slot)
                && isWindowSlotEnabled(slot)
                && !embeddedSlotClosing[slot]
                && (windowApps[slot] != null
                || isInternalSettingsSlot(slot)
                || isDesktopHomeSlot(slot));
    }

    private void suspendWindowInputRouting() {
        mainHandler.removeCallbacks(syncSideInputProtectionRunnable);
        if (sideInputShieldController != null) {
            sideInputShieldController.hideAll();
        }
    }

    private void restoreWindowInputRoutingAfterLayout() {
        scheduleSideInputProtectionSync();
    }

    private void scheduleSideInputProtectionSync() {
        if (workspace == null || activityDestroyed) {
            return;
        }
        mainHandler.removeCallbacks(syncSideInputProtectionRunnable);
        workspace.postOnAnimation(syncSideInputProtectionRunnable);
    }

    private void syncSideInputProtection() {
        if (activityDestroyed || isWindowAnimationRunning()) {
            return;
        }
        if (sideInputShieldController != null) {
            sideInputShieldController.update();
        }
    }

    private int findSlot(LauncherApp target) {
        if (target == null) {
            return -1;
        }
        return findSlot(target.instanceKey());
    }

    private int findSlot(String instanceKey) {
        for (int i = 0; i < MAX_WINDOWS; i++) {
            LauncherApp app = windowApps[i];
            if (app != null && TextUtils.equals(app.instanceKey(), instanceKey)) {
                return i;
            }
        }
        return -1;
    }

    private int findSlotByComponent(ComponentName componentName) {
        if (componentName == null) {
            return -1;
        }
        for (int slot = 0; slot < MAX_WINDOWS; slot++) {
            LauncherApp app = windowApps[slot];
            if (app != null && componentName.equals(app.componentName)) {
                return slot;
            }
        }
        return -1;
    }

    private int findEmptySideSlot() {
        for (int slot : sideSlotOrder) {
            if (isWindowSlotEnabled(slot) && windowApps[slot] == null
                    && !isInternalSettingsSlot(slot)
                    && !isDesktopHomeSlot(slot)
                    && !isPendingInternalSettingsSlot(slot)
                    && !isPendingDesktopHomeSlot(slot)
                    && !embeddedSlotClosing[slot]) {
                return slot;
            }
        }
        return -1;
    }

    private int findEmptyInactiveMainSlot() {
        int otherMainSlot = getOtherMainSlot(activeMainSlot);
        if (otherMainSlot < 0 || embeddedSlotClosing[otherMainSlot]
                || hasWindowContent(otherMainSlot)) {
            return -1;
        }
        return otherMainSlot;
    }

    private FrameLayout.LayoutParams matchFrame() {
        return new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private GradientDrawable makePanelBackground(int fillColor, int strokeColor, float radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(fillColor);
        drawable.setCornerRadius(radius);
        drawable.setStroke(dp(1), strokeColor);
        return drawable;
    }

    private GradientDrawable makeRoundedBackground(int fillColor, float radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(fillColor);
        drawable.setCornerRadius(radius);
        return drawable;
    }

    private GradientDrawable makeWindowPlaceholderBorder() {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(Color.TRANSPARENT);
        drawable.setCornerRadius(0f);
        drawable.setStroke(Math.max(1, dp(0.5f)), 0x40ffffff);
        return drawable;
    }

    private GradientDrawable makeWallpaperFallback() {
        return new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{
                0xff9bb68a,
                0xff78b089,
                0xff49a6a1
        });
    }

    private int dp(float value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private int getTopMediaAreaHeight() {
        if (!shouldShowTopComponentArea()) {
            return 0;
        }
        if (!pipActive) {
            return dp(TOP_MEDIA_AREA_MIN_HEIGHT_DP);
        }
        int pipHeight = pipRestoreBounds.height() > 0
                ? pipRestoreBounds.height() : dp(TOP_MEDIA_PLAYER_HEIGHT_DP);
        return Math.max(dp(TOP_MEDIA_AREA_MIN_HEIGHT_DP),
                getPipDockTopInset() + pipHeight + dp(8));
    }

    private int getPipDockTopInset() {
        return (statusBarSpacingEnabled ? 0 : getStatusBarHeight()) + dp(16);
    }

    private int getStatusBarSpacingHeight() {
        return statusBarSpacingEnabled ? getStatusBarSafeInsetHeight() : 0;
    }

    private int getStatusBarSafeInsetHeight() {
        int safeInsetHeight = Math.max(dp(24), getStatusBarHeight());
        WindowInsets windowInsets = getWindow().getDecorView().getRootWindowInsets();
        if (windowInsets == null) {
            return safeInsetHeight;
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            android.graphics.Insets topInsets = windowInsets.getInsetsIgnoringVisibility(
                    WindowInsets.Type.statusBars() | WindowInsets.Type.displayCutout());
            return Math.max(safeInsetHeight, topInsets.top);
        }
        safeInsetHeight = Math.max(safeInsetHeight, windowInsets.getStableInsetTop());
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P
                && windowInsets.getDisplayCutout() != null) {
            safeInsetHeight = Math.max(safeInsetHeight,
                    windowInsets.getDisplayCutout().getSafeInsetTop());
        }
        return safeInsetHeight;
    }

    private int getTopNavHeight() {
        return dp(getTopNavHeightDp());
    }

    private int getTopNavHeightDp() {
        int verticalSpacingDp = Math.round(TOP_NAV_VERTICAL_SPACING_DEFAULT_DP
                * topNavVerticalMarginScalePct / 100f);
        return TOP_NAV_BUTTON_SIZE_DP + verticalSpacingDp;
    }

    private int getTopAppStripHeight() {
        return dp(getTopAppStripHeightDp());
    }

    private int getTopAppStripHeightDp() {
        return getTopBarHeightDp(topAppStripVerticalPaddingScalePct);
    }

    private int getTopBarHeightDp(int scalePct) {
        int scaledHeightDp = Math.round(TOP_BAR_HEIGHT_DEFAULT_DP * scalePct / 100f);
        int contentBlockDp = Math.max(TOP_NAV_CONTENT_HEIGHT_DP, getTopAppIconSizeDp() + 6);
        int minHeightDp = contentBlockDp + getTopBarVerticalPaddingDp(scalePct) * 2;
        return Math.max(minHeightDp, scaledHeightDp);
    }

    private int getTopAppIconSizeDp() {
        return Math.max(1, Math.round(TOP_APP_ICON_SIZE_DEFAULT_DP * topAppIconScalePct / 100f));
    }

    private int getTopAppStripSidePaddingDp() {
        return Math.max(8, Math.round(16 * topAppStripSpacingScalePct / 100f));
    }

    private int getTopAppStripVerticalPaddingDp() {
        return getTopBarVerticalPaddingDp(topAppStripVerticalPaddingScalePct);
    }

    private int getTopBarVerticalPaddingDp(int scalePct) {
        return Math.max(0, Math.round(4 * scalePct / 100f));
    }

    private int getTopAppStripCellWidthDp(int iconSizeDp) {
        int baseWidthDp = iconSizeDp + 28;
        return Math.max(iconSizeDp + 12,
                Math.round(baseWidthDp * topAppStripSpacingScalePct / 100f));
    }

    private int getTopMediaPlayerTopMargin() {
        int centeredTop = (getTopMediaAreaHeight() - dp(TOP_MEDIA_PLAYER_HEIGHT_DP)) / 2;
        return centeredTop;
    }

    private int getStatusBarHeight() {
        int resourceId = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (resourceId <= 0) {
            return dp(24);
        }
        return getResources().getDimensionPixelSize(resourceId);
    }

    private ShellCommandResult runMainPrivilegedCommand(String command, String description,
                                                       boolean logOutput) {
        long startedAt = System.currentTimeMillis();
        ShellCommandResult result = runMainRootCommand(command);
        logMainShellResult(result, description, startedAt, logOutput);
        return result;
    }

    private void loadZygiskHookSettings(
            SettingsPanelController.HookSettingsResultCallback callback) {
        hookSettingsExecutor.execute(() -> {
            ShellCommandResult result = runMainPrivilegedCommand(
                    ZygiskHookConfig.readCommand(), "read Zygisk hook settings", false);
            ZygiskHookConfig.State state = result.isSuccess()
                    ? ZygiskHookConfig.parse(result.output) : null;
            String error = result.isSuccess() ? "Hook 设置数据无效" : "无法读取 Hook 设置";
            mainHandler.post(() -> {
                if (!activityDestroyed) {
                    callback.onResult(state, state == null ? error : null);
                }
            });
        });
    }

    private void requestRootAuthorization(
            SettingsPanelController.RootAuthorizationResultCallback callback) {
        hookSettingsExecutor.execute(() -> {
            ShellCommandResult result = runMainPrivilegedCommand(
                    "id -u", "request ROOT authorization", false);
            boolean granted = result.isSuccess()
                    && outputContainsLine(result.output, "0");
            SettingsPanelController.RootAuthorizationResult authorizationResult = granted
                    ? SettingsPanelController.RootAuthorizationResult.GRANTED
                    : findKernelSuManagerLaunchIntent() != null
                    ? SettingsPanelController.RootAuthorizationResult.KERNEL_SU_ACTION_REQUIRED
                    : SettingsPanelController.RootAuthorizationResult.FAILED;
            mainHandler.post(() -> {
                if (!activityDestroyed) {
                    callback.onResult(authorizationResult);
                }
            });
        });
    }

    private static boolean outputContainsLine(String output, String expected) {
        if (output == null) {
            return false;
        }
        for (String line : output.split("\\n")) {
            if (expected.equals(line.trim())) {
                return true;
            }
        }
        return false;
    }

    private void saveZygiskHookSettings(
            boolean secureWindowEnabled,
            boolean statusBarOverlayEnabled,
            boolean primaryHomeEnhancementEnabled,
            boolean imageDragSharingEnabled,
            SettingsPanelController.HookSettingsResultCallback callback) {
        hookSettingsExecutor.execute(() -> {
            ShellCommandResult result = runMainPrivilegedCommand(
                    ZygiskHookConfig.writeCommand(
                            secureWindowEnabled, statusBarOverlayEnabled,
                            primaryHomeEnhancementEnabled,
                            imageDragSharingEnabled),
                    "save Zygisk hook settings", false);
            ZygiskHookConfig.State state = result.isSuccess()
                    ? ZygiskHookConfig.parse(result.output) : null;
            String error = result.isSuccess() ? "Hook 设置数据无效" : "无法保存 Hook 设置";
            mainHandler.post(() -> {
                if (!activityDestroyed) {
                    callback.onResult(state, state == null ? error : null);
                }
            });
        });
    }

    private void rebootDeviceForHookSettings() {
        hookSettingsExecutor.execute(() -> runMainPrivilegedCommand(
                "svc power reboot || reboot", "reboot for Zygisk hook settings", false));
    }

    private ShellCommandResult runMainRootCommand(String command) {
        return persistentRootShell.run(command, MEDIA_ROOT_COMMAND_TIMEOUT_SECONDS);
    }

    private Intent findKernelSuManagerLaunchIntent() {
        PackageManager packageManager = getPackageManager();
        for (String packageName : KERNEL_SU_MANAGER_PACKAGES) {
            Intent launchIntent = packageManager.getLaunchIntentForPackage(packageName);
            if (launchIntent != null) {
                return launchIntent;
            }
        }
        return null;
    }

    private boolean openKernelSuManager() {
        Intent launchIntent = findKernelSuManagerLaunchIntent();
        if (launchIntent == null) {
            return false;
        }
        
        
        kernelSuAuthorizationReturnPending = true;
        launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        try {
            startActivity(launchIntent);
            return true;
        } catch (ActivityNotFoundException | SecurityException e) {
            kernelSuAuthorizationReturnPending = false;
            Log.w(TAG, "Unable to open KernelSU manager", e);
            return false;
        }
    }

    private void logMainShellResult(ShellCommandResult result, String description, long startedAt,
                                    boolean logOutput) {
        long elapsedMs = System.currentTimeMillis() - startedAt;
        String output = TextUtils.isEmpty(result.output) ? ""
                : logOutput ? " " + result.output : " <" + result.output.length() + " chars>";
        if (result.exitCode == 0) {
            Log.i(TAG, "Media root command ok(" + elapsedMs + "ms): " + description + output);
        } else {
            Log.w(TAG, "Media root command failed(" + result.exitCode + ", "
                    + elapsedMs + "ms): " + description + output);
        }
    }

    private String mainShellQuote(String value) {
        return "'" + value.replace("'", "'\"'\"'") + "'";
    }

    private static void setDpTextSize(TextView view, float value) {
        view.setTextSize(TypedValue.COMPLEX_UNIT_DIP, value);
    }

    private static final class RoutedAppLaunch {
        final int sourceSlot;
        final String sourcePackage;
        final LauncherApp targetApp;
        final Intent intent;
        final File sharedImageFile;

        RoutedAppLaunch(int sourceSlot, String sourcePackage,
                        LauncherApp targetApp, Intent intent, File sharedImageFile) {
            this.sourceSlot = sourceSlot;
            this.sourcePackage = sourcePackage;
            this.targetApp = targetApp;
            this.intent = intent;
            this.sharedImageFile = sharedImageFile;
        }
    }

    private static final class PendingImageSharePromotion {
        final int targetSlot;
        final String packageName;
        final String instanceKey;
        final int displayId;
        final ComponentName shareComponent;

        PendingImageSharePromotion(
                int targetSlot, String packageName, String instanceKey,
                int displayId, ComponentName shareComponent) {
            this.targetSlot = targetSlot;
            this.packageName = packageName;
            this.instanceKey = instanceKey;
            this.displayId = displayId;
            this.shareComponent = shareComponent;
        }
    }

    private static final class ImageDragShareEntry {
        final ImageDragShareTarget target;
        final LauncherApp app;

        ImageDragShareEntry(ImageDragShareTarget target, LauncherApp app) {
            this.target = target;
            this.app = app;
        }
    }

}
