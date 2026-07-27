package com.hyper.sidebar.lsp;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.hyper.sidebar.R;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Module configuration screen. Layouts and tokens live in res/ (Miuix-style skin borrowed
 * from SukiSU-Ultra); this class only inflates pages and wires up the existing logic, so the
 * LSP APK still needs no extra UI runtime. */
public class ModuleConfigActivity extends Activity {

    private static final int XIAOMI_LARGE_AREA_SENSOR_TYPE = 33171031;
    private static final String GITHUB_REPOSITORY_URL =
            "https://github.com/LAOBILAXI233/onestep_on_hyper";

    private static final String ACTION_ENTER_ONE_STEP =
            "com.hyper.sidebar.ACTION_ENTER_ONE_STEP";
    private static final String ACTION_EXIT_ONE_STEP =
            "com.hyper.sidebar.ACTION_EXIT_ONE_STEP";
    private static final String ACTION_TOGGLE_ONE_STEP =
            "com.hyper.sidebar.ACTION_TOGGLE_ONE_STEP";

    private static final int PAGE_COUNT = 4;

    private int mCurrentPage;
    private int mLastNavPage = -1;
    private ScrollView mScroll;
    private FrameLayout mPageContainer;
    private TextView mPageTitle;
    private TextView mPageSubtitle;
    private final LinearLayout[] mNavItems = new LinearLayout[PAGE_COUNT];
    private final ExecutorService mSettingsExecutor = Executors.newSingleThreadExecutor();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LSPLogger.initialize(this);
        LSPLogger.logBoot();
        LSPLogger.i("ModuleConfigActivity.onCreate: savedInstanceState=" + savedInstanceState);

        setContentView(R.layout.activity_module_config);

        mScroll = findViewById(R.id.miuix_scroll);
        mPageContainer = findViewById(R.id.miuix_page_container);
        mPageTitle = findViewById(R.id.miuix_page_title);
        mPageSubtitle = findViewById(R.id.miuix_page_subtitle);

        int[] navIds = {R.id.miuix_nav_control, R.id.miuix_nav_gesture,
                R.id.miuix_nav_log, R.id.miuix_nav_about};
        for (int i = 0; i < navIds.length; i++) {
            final int page = i;
            mNavItems[i] = findViewById(navIds[i]);
            mNavItems[i].setOnClickListener(v -> renderPage(page));
        }

        renderPage(0);
        LSPLogger.d("ModuleConfigActivity.onCreate: miuix settings screen ready");
    }

    @Override
    protected void onResume() {
        super.onResume();
        // 控制页与手势页都展示黑名单数量，从黑名单管理页返回时刷新
        if ((mCurrentPage == 0 || mCurrentPage == 1) && mPageContainer != null) {
            renderPage(mCurrentPage);
        }
    }

    @Override
    protected void onDestroy() {
        mSettingsExecutor.shutdown();
        super.onDestroy();
    }

    private void renderPage(int page) {
        mCurrentPage = page;
        if (mPageContainer == null) return;
        mPageSubtitle.setVisibility(page == 3 ? View.GONE : View.VISIBLE);
        mPageContainer.removeAllViews();
        LayoutInflater inflater = LayoutInflater.from(this);
        switch (page) {
            case 1:
                mPageTitle.setText(R.string.miuix_title_gesture);
                mPageSubtitle.setText(R.string.miuix_subtitle_gesture);
                inflater.inflate(R.layout.miuix_page_gesture, mPageContainer, true);
                bindGesturePage();
                break;
            case 2:
                mPageTitle.setText(R.string.miuix_title_log);
                mPageSubtitle.setText(R.string.miuix_subtitle_log);
                inflater.inflate(R.layout.miuix_page_log, mPageContainer, true);
                bindLogPage();
                break;
            case 3:
                mPageTitle.setText(R.string.miuix_title_about);
                inflater.inflate(R.layout.miuix_page_about, mPageContainer, true);
                bindAboutPage();
                break;
            default:
                mPageTitle.setText(R.string.miuix_title_control);
                mPageSubtitle.setText(R.string.miuix_subtitle_console);
                inflater.inflate(R.layout.miuix_page_control, mPageContainer, true);
                bindControlPage();
                break;
        }
        boolean pageChanged = page != mLastNavPage;
        mLastNavPage = page;
        updateNavState(pageChanged);
        if (mScroll != null) {
            mScroll.scrollTo(0, 0);
        }
        if (pageChanged) {
            playPageEnter();
        }
    }

    /** 分页切换：内容淡入 + 轻微上滑。 */
    private void playPageEnter() {
        float slide = 16f * getResources().getDisplayMetrics().density;
        mPageContainer.setAlpha(0f);
        mPageContainer.setTranslationY(slide);
        mPageContainer.animate()
                .alpha(1f)
                .translationY(0f)
                .setDuration(260)
                .setInterpolator(new DecelerateInterpolator())
                .start();
    }

    private void bindControlPage() {
        TextView statusVersion = findViewById(R.id.miuix_status_version);
        statusVersion.setText("v" + getModuleVersion());

        // 绿卡点击：大对勾弹跳一下，纯彩蛋反馈
        ImageView statusCheck = findViewById(R.id.miuix_status_check);
        findViewById(R.id.miuix_status_card).setOnClickListener(v ->
                statusCheck.animate()
                        .scaleX(1.18f).scaleY(1.18f).rotation(-10f)
                        .setDuration(130)
                        .setInterpolator(new DecelerateInterpolator())
                        .withEndAction(() -> statusCheck.animate()
                                .scaleX(1f).scaleY(1f).rotation(0f)
                                .setDuration(320)
                                .setInterpolator(new OvershootInterpolator(2.5f))
                                .start())
                        .start());

        // 黑名单计数：数字从 0 滚动到当前值；点卡片直达管理页
        TextView blacklistCount = findViewById(R.id.miuix_count_blacklist_value);
        int count = GestureSettings.read(this).blacklistedPackages.size();
        if (count > 0) {
            ValueAnimator counter = ValueAnimator.ofInt(0, count);
            counter.setDuration(600);
            counter.setInterpolator(new DecelerateInterpolator());
            counter.addUpdateListener(animation ->
                    blacklistCount.setText(String.valueOf(animation.getAnimatedValue())));
            counter.start();
        } else {
            blacklistCount.setText("0");
        }
        findViewById(R.id.miuix_count_blacklist_card).setOnClickListener(v ->
                startActivity(new Intent(this, GestureBlacklistActivity.class)));

        // 快捷切换卡：图标转一圈 + 发送切换广播
        ImageView toggleIcon = findViewById(R.id.miuix_quick_toggle_icon);
        findViewById(R.id.miuix_quick_toggle).setOnClickListener(v -> {
            toggleIcon.animate()
                    .rotationBy(360f)
                    .setDuration(450)
                    .setInterpolator(new DecelerateInterpolator())
                    .start();
            sendOneStepBroadcast(ACTION_TOGGLE_ONE_STEP);
        });

        findViewById(R.id.miuix_action_enter).setOnClickListener(
                v -> sendOneStepBroadcast(ACTION_ENTER_ONE_STEP));
        findViewById(R.id.miuix_action_exit).setOnClickListener(
                v -> sendOneStepBroadcast(ACTION_EXIT_ONE_STEP));
    }

    private void bindGesturePage() {
        GestureSettings.Snapshot settings = GestureSettings.read(this);

        TextView readySummary = findViewById(R.id.miuix_gesture_ready_summary);
        readySummary.setText(hasXiaomiLargeAreaClassifier()
                ? R.string.miuix_gesture_ready_summary_assist
                : R.string.miuix_gesture_ready_summary_pure);

        Switch hapticSwitch = findViewById(R.id.miuix_switch_haptics);
        hapticSwitch.setChecked(settings.dragHapticsEnabled);
        final boolean[] updatingHaptics = {false};
        hapticSwitch.setOnCheckedChangeListener((button, checked) -> {
            if (updatingHaptics[0]) return;
            button.setEnabled(false);
            mSettingsExecutor.execute(() -> {
                boolean saved = GestureSettings.setDragHapticsEnabled(
                        ModuleConfigActivity.this, checked);
                runOnUiThread(() -> {
                    if (isFinishing() || isDestroyed()) return;
                    button.setEnabled(true);
                    if (!saved) {
                        updatingHaptics[0] = true;
                        button.setChecked(!checked);
                        updatingHaptics[0] = false;
                        Toast.makeText(this, "无法保存拖拽触感开关",
                                Toast.LENGTH_LONG).show();
                    } else {
                        Toast.makeText(this, checked
                                        ? "拖拽触感已开启" : "拖拽触感已关闭",
                                Toast.LENGTH_SHORT).show();
                    }
                });
            });
        });

        View bigBangCompatGroup = findViewById(R.id.miuix_bigbang_compat_group);
        Switch bigBangSwitch = findViewById(R.id.miuix_switch_bigbang);
        bigBangSwitch.setChecked(settings.bigBangEnabled);
        setGroupEnabled(bigBangCompatGroup, settings.bigBangEnabled);
        final boolean[] updatingBigBang = {false};
        bigBangSwitch.setOnCheckedChangeListener((button, checked) -> {
            if (updatingBigBang[0]) return;
            button.setEnabled(false);
            mSettingsExecutor.execute(() -> {
                boolean saved = GestureSettings.setBigBangEnabled(
                        ModuleConfigActivity.this, checked);
                runOnUiThread(() -> {
                    if (isFinishing() || isDestroyed()) return;
                    button.setEnabled(true);
                    if (!saved) {
                        updatingBigBang[0] = true;
                        button.setChecked(!checked);
                        updatingBigBang[0] = false;
                        Toast.makeText(this, "无法保存 BigBang 开关",
                                Toast.LENGTH_LONG).show();
                    } else {
                        setGroupEnabled(bigBangCompatGroup, checked);
                        Toast.makeText(this, checked
                                        ? "BigBang 已开启" : "BigBang 已关闭",
                                Toast.LENGTH_SHORT).show();
                    }
                });
            });
        });

        Switch fallbackSwitch = findViewById(R.id.miuix_switch_fallback);
        fallbackSwitch.setChecked(settings.longPressFallbackEnabled);
        final boolean[] updatingSwitch = {false};
        fallbackSwitch.setOnCheckedChangeListener((button, checked) -> {
            if (updatingSwitch[0]) return;
            button.setEnabled(false);
            mSettingsExecutor.execute(() -> {
                boolean saved = GestureSettings.setLongPressFallbackEnabled(
                        ModuleConfigActivity.this, checked);
                runOnUiThread(() -> {
                    if (isFinishing() || isDestroyed()) return;
                    button.setEnabled(true);
                    if (!saved) {
                        updatingSwitch[0] = true;
                        button.setChecked(!checked);
                        updatingSwitch[0] = false;
                        Toast.makeText(this, "无法保存静止长按开关",
                                Toast.LENGTH_LONG).show();
                    } else {
                        Toast.makeText(this, checked
                                        ? "静止长按已开启" : "静止长按已关闭",
                                Toast.LENGTH_SHORT).show();
                    }
                });
            });
        });

        Switch twoFingerSwitch = findViewById(R.id.miuix_switch_two_finger);
        twoFingerSwitch.setChecked(settings.twoFingerLongPressEnabled);
        final boolean[] updatingTwoFinger = {false};
        twoFingerSwitch.setOnCheckedChangeListener((button, checked) -> {
            if (updatingTwoFinger[0]) return;
            button.setEnabled(false);
            mSettingsExecutor.execute(() -> {
                boolean saved = GestureSettings.setTwoFingerLongPressEnabled(
                        ModuleConfigActivity.this, checked);
                runOnUiThread(() -> {
                    if (isFinishing() || isDestroyed()) return;
                    button.setEnabled(true);
                    if (!saved) {
                        updatingTwoFinger[0] = true;
                        button.setChecked(!checked);
                        updatingTwoFinger[0] = false;
                        Toast.makeText(this, "无法保存双指长按开关",
                                Toast.LENGTH_LONG).show();
                    } else {
                        Toast.makeText(this, checked
                                        ? "双指长按已开启" : "双指长按已关闭",
                                Toast.LENGTH_SHORT).show();
                    }
                });
            });
        });

        TextView durationValue = findViewById(R.id.miuix_duration_value);
        durationValue.setText(settings.longPressDurationMs + " ms");

        TextView durationMin = findViewById(R.id.miuix_duration_min);
        durationMin.setText(GestureSettings.MIN_LONG_PRESS_DURATION_MS + " ms");
        TextView durationMax = findViewById(R.id.miuix_duration_max);
        durationMax.setText(GestureSettings.MAX_LONG_PRESS_DURATION_MS + " ms");

        SeekBar durationSlider = findViewById(R.id.miuix_duration_slider);
        int steps = (GestureSettings.MAX_LONG_PRESS_DURATION_MS
                - GestureSettings.MIN_LONG_PRESS_DURATION_MS)
                / GestureSettings.LONG_PRESS_DURATION_STEP_MS;
        durationSlider.setMax(steps);
        durationSlider.setProgress((settings.longPressDurationMs
                - GestureSettings.MIN_LONG_PRESS_DURATION_MS)
                / GestureSettings.LONG_PRESS_DURATION_STEP_MS);

        final int[] progressAtTouchStart = {durationSlider.getProgress()};
        durationSlider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                durationValue.setText(durationForProgress(progress) + " ms");
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
                progressAtTouchStart[0] = seekBar.getProgress();
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                int progress = seekBar.getProgress();
                int duration = durationForProgress(progress);
                seekBar.setEnabled(false);
                mSettingsExecutor.execute(() -> {
                    boolean saved = GestureSettings.setLongPressDurationMs(
                            ModuleConfigActivity.this, duration);
                    runOnUiThread(() -> {
                        if (isFinishing() || isDestroyed()) return;
                        seekBar.setEnabled(true);
                        if (!saved) {
                            seekBar.setProgress(progressAtTouchStart[0]);
                            Toast.makeText(ModuleConfigActivity.this,
                                    "无法保存长按时间", Toast.LENGTH_LONG).show();
                        }
                    });
                });
            }
        });

        Button manageBlacklist = findViewById(R.id.miuix_manage_blacklist);
        manageBlacklist.setText(getString(R.string.miuix_blacklist_manage_fmt,
                settings.blacklistedPackages.size()));
        manageBlacklist.setOnClickListener(v -> startActivity(
                new Intent(this, GestureBlacklistActivity.class)));
    }

    private static void setGroupEnabled(View view, boolean enabled) {
        if (view == null) return;
        view.setEnabled(enabled);
        view.setAlpha(enabled ? 1f : 0.45f);
        if (!(view instanceof ViewGroup)) return;
        ViewGroup group = (ViewGroup) view;
        for (int i = 0; i < group.getChildCount(); i++) {
            setDescendantEnabled(group.getChildAt(i), enabled);
        }
    }

    private static void setDescendantEnabled(View view, boolean enabled) {
        view.setEnabled(enabled);
        if (!(view instanceof ViewGroup)) return;
        ViewGroup group = (ViewGroup) view;
        for (int i = 0; i < group.getChildCount(); i++) {
            setDescendantEnabled(group.getChildAt(i), enabled);
        }
    }

    private void bindLogPage() {
        TextView logPath = findViewById(R.id.miuix_log_path);
        logPath.setText(shortenPath(LSPLogger.getLogFilePath()));

        TextView logSize = findViewById(R.id.miuix_log_size);
        logSize.setText(formatBytes(LSPLogger.getLogFileSize()));

        Switch loggingSwitch = findViewById(R.id.miuix_switch_logging);
        loggingSwitch.setChecked(LSPLogger.isEnabled());
        final boolean[] updatingSwitch = {false};
        loggingSwitch.setOnCheckedChangeListener((button, checked) -> {
            if (updatingSwitch[0]) return;
            if (!LSPLogger.setEnabled(checked)) {
                updatingSwitch[0] = true;
                button.setChecked(!checked);
                updatingSwitch[0] = false;
                Toast.makeText(this, "无法写入日志开关", Toast.LENGTH_LONG).show();
                return;
            }
            if (checked) {
                LSPLogger.logDeviceSnapshot(this, "enabled_from_gui");
            }
            Toast.makeText(this, checked ? "诊断日志已开启" : "诊断日志已关闭",
                    Toast.LENGTH_SHORT).show();
        });

        findViewById(R.id.miuix_copy_path).setOnClickListener(v -> {
            ClipboardManager clipboard = (ClipboardManager) getSystemService(
                    Context.CLIPBOARD_SERVICE);
            if (clipboard != null) {
                clipboard.setPrimaryClip(ClipData.newPlainText(
                        "OneStep log", LSPLogger.getLogFilePath()));
                Toast.makeText(this, "日志路径已复制", Toast.LENGTH_SHORT).show();
            }
        });

        findViewById(R.id.miuix_clear_log).setOnClickListener(v -> {
            LSPLogger.clear();
            logSize.setText(formatBytes(LSPLogger.getLogFileSize()));
            Toast.makeText(this, "日志已清空", Toast.LENGTH_SHORT).show();
        });
    }

    private void bindAboutPage() {
        TextView version = findViewById(R.id.miuix_about_version);
        version.setText(getString(R.string.miuix_about_version_fmt, getModuleVersion()));
        findViewById(R.id.miuix_about_github).setOnClickListener(v -> openGitHubRepository());
    }

    private void openGitHubRepository() {
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(GITHUB_REPOSITORY_URL));
        intent.addCategory(Intent.CATEGORY_BROWSABLE);
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException | SecurityException error) {
            LSPLogger.w("ModuleConfigActivity: GitHub navigation failed", error);
            Toast.makeText(this, R.string.miuix_about_github_unavailable,
                    Toast.LENGTH_SHORT).show();
        }
    }

    private void updateNavState(boolean animateSelection) {
        int accent = getColor(R.color.miuix_accent);
        int muted = getColor(R.color.miuix_text_secondary);
        for (int i = 0; i < mNavItems.length; i++) {
            LinearLayout item = mNavItems[i];
            if (item == null) continue;
            boolean selected = i == mCurrentPage;
            item.setSelected(selected);
            ImageView icon = (ImageView) item.getChildAt(0);
            icon.setImageTintList(ColorStateList.valueOf(selected ? accent : muted));
            if (selected && animateSelection) {
                // 选中图标从缩小状态弹出来
                icon.setScaleX(0.6f);
                icon.setScaleY(0.6f);
                icon.animate()
                        .scaleX(1f).scaleY(1f)
                        .setDuration(280)
                        .setInterpolator(new OvershootInterpolator(2f))
                        .start();
            }
            TextView label = (TextView) item.getChildAt(1);
            label.setTextColor(selected ? accent : muted);
            label.setTypeface(Typeface.DEFAULT, selected ? Typeface.BOLD : Typeface.NORMAL);
        }
    }

    private int durationForProgress(int progress) {
        return GestureSettings.clampDuration(
                GestureSettings.MIN_LONG_PRESS_DURATION_MS
                        + progress * GestureSettings.LONG_PRESS_DURATION_STEP_MS);
    }

    private boolean hasXiaomiLargeAreaClassifier() {
        try {
            SensorManager manager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
            if (manager == null) return false;
            Sensor sensor = manager.getDefaultSensor(XIAOMI_LARGE_AREA_SENSOR_TYPE);
            if (sensor != null) return true;
            for (Sensor candidate : manager.getSensorList(Sensor.TYPE_ALL)) {
                if (candidate.getType() == XIAOMI_LARGE_AREA_SENSOR_TYPE
                        || "xiaomi.sensor.large_area_detect".equals(
                                candidate.getStringType())) {
                    return true;
                }
            }
        } catch (Throwable t) {
            LSPLogger.d("ModuleConfigActivity: classifier probe failed: " + t);
        }
        return false;
    }

    private void sendOneStepBroadcast(String action) {
        try {
            Intent intent = new Intent(action);
            intent.setPackage("com.android.systemui");
            sendBroadcast(intent);
            LSPLogger.i("ModuleConfigActivity: sent broadcast " + action);
            Toast.makeText(this, "已发送 OneStep 操作", Toast.LENGTH_SHORT).show();
        } catch (Throwable t) {
            LSPLogger.e("ModuleConfigActivity: send broadcast failed", t);
            Toast.makeText(this, "操作失败: " + t.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private String getModuleVersion() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "unknown";
        }
    }

    private static String shortenPath(String path) {
        if (path == null || path.length() < 38) return path;
        return "..." + path.substring(path.length() - 35);
    }

    private static String formatBytes(long bytes) {
        if (bytes < 1024L) return bytes + " B";
        if (bytes < 1024L * 1024L) {
            return String.format(java.util.Locale.US, "%.1f KB", bytes / 1024f);
        }
        return String.format(java.util.Locale.US, "%.1f MB",
                bytes / (1024f * 1024f));
    }
}
