package com.hyper.onestep.lsp;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.hyper.onestep.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
// 手势黑名单应用选择界面
public final class GestureBlacklistActivity extends Activity {
    private final ExecutorService mWorker = Executors.newSingleThreadExecutor();
    private final ArrayList<AppEntry> mAllApps = new ArrayList<>();
    private final ArrayList<AppEntry> mVisibleApps = new ArrayList<>();
    private final Set<String> mSelectedPackages = new HashSet<>();
    private AppAdapter mAdapter;
    private TextView mSelectionSummary;
    private TextView mLoadingState;
    private TextView mSaveButton;
    private boolean mDirty;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mSelectedPackages.addAll(GestureSettings.read(this).blacklistedPackages);
        setContentView(R.layout.activity_gesture_blacklist);
        findViewById(R.id.blacklist_back).setOnClickListener(v -> onBackPressed());
        mSaveButton = findViewById(R.id.blacklist_save);
        mSaveButton.setOnClickListener(v -> saveAndFinish());
        mSelectionSummary = findViewById(R.id.blacklist_summary);
        mLoadingState = findViewById(R.id.blacklist_loading);
        updateSelectionState();
        EditText search = findViewById(R.id.blacklist_search);
        search.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }
            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                filterApps(s == null ? "" : s.toString());
            }
            @Override
            public void afterTextChanged(Editable s) {
            }
        });
        findViewById(R.id.blacklist_clear).setOnClickListener(v -> {
            if (mSelectedPackages.isEmpty()) return;
            mSelectedPackages.clear();
            mDirty = true;
            updateSelectionState();
            mAdapter.notifyDataSetChanged();
        });
        ListView list = findViewById(R.id.blacklist_list);
        mAdapter = new AppAdapter();
        list.setAdapter(mAdapter);
        loadApps();
    }
    @Override
    protected void onDestroy() {
        mWorker.shutdown();
        super.onDestroy();
    }
    @Override
    public void onBackPressed() {
        if (!mDirty) {
            super.onBackPressed();
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("保存黑名单？")
                .setMessage("你修改了手势黑名单。")
                .setPositiveButton("保存", (dialog, which) -> saveAndFinish())
                .setNegativeButton("放弃", (dialog, which) -> finish())
                .setNeutralButton("继续编辑", null)
                .show();
    }
    @SuppressWarnings("deprecation")
    private void loadApps() {
        mWorker.execute(() -> {
            ArrayList<AppEntry> loaded = new ArrayList<>();
            try {
                PackageManager packageManager = getPackageManager();
                Intent launcher = new Intent(Intent.ACTION_MAIN)
                        .addCategory(Intent.CATEGORY_LAUNCHER);
                List<ResolveInfo> resolved = packageManager.queryIntentActivities(
                        launcher, PackageManager.MATCH_ALL);
                Map<String, AppEntry> unique = new LinkedHashMap<>();
                for (ResolveInfo info : resolved) {
                    if (info.activityInfo == null || info.activityInfo.packageName == null) {
                        continue;
                    }
                    String packageName = info.activityInfo.packageName;
                    if (unique.containsKey(packageName)) continue;
                    CharSequence labelValue;
                    Drawable icon;
                    try {
                        labelValue = info.loadLabel(packageManager);
                        icon = info.loadIcon(packageManager);
                    } catch (Throwable ignored) {
                        labelValue = packageName;
                        icon = packageManager.getDefaultActivityIcon();
                    }
                    String label = labelValue == null ? packageName : labelValue.toString();
                    unique.put(packageName, new AppEntry(packageName, label, icon));
                }
                loaded.addAll(unique.values());
                Collator collator = Collator.getInstance(Locale.getDefault());
                Collections.sort(loaded, Comparator.comparing(entry -> entry.label, collator));
            } catch (Throwable t) {
                LSPLogger.e("GestureBlacklistActivity: app query failed", t);
            }
            runOnUiThread(() -> {
                if (isFinishing() || isDestroyed()) return;
                mAllApps.clear();
                mAllApps.addAll(loaded);
                mVisibleApps.clear();
                mVisibleApps.addAll(loaded);
                mLoadingState.setVisibility(loaded.isEmpty() ? View.VISIBLE : View.GONE);
                if (loaded.isEmpty()) mLoadingState.setText(R.string.miuix_blacklist_empty);
                mAdapter.notifyDataSetChanged();
            });
        });
    }
    private void filterApps(String queryValue) {
        String query = queryValue == null ? ""
                : queryValue.trim().toLowerCase(Locale.ROOT);
        mVisibleApps.clear();
        if (query.isEmpty()) {
            mVisibleApps.addAll(mAllApps);
        } else {
            for (AppEntry entry : mAllApps) {
                if (entry.label.toLowerCase(Locale.ROOT).contains(query)
                        || entry.packageName.toLowerCase(Locale.ROOT).contains(query)) {
                    mVisibleApps.add(entry);
                }
            }
        }
        if (mLoadingState != null) {
            mLoadingState.setVisibility(mVisibleApps.isEmpty() ? View.VISIBLE : View.GONE);
            if (mVisibleApps.isEmpty()) {
                mLoadingState.setText(R.string.miuix_blacklist_no_match);
            }
        }
        if (mAdapter != null) mAdapter.notifyDataSetChanged();
    }
    private void saveAndFinish() {
        mSaveButton.setEnabled(false);
        mSaveButton.setText(R.string.miuix_blacklist_saving);
        Set<String> snapshot = new HashSet<>(mSelectedPackages);
        mWorker.execute(() -> {
            boolean saved = GestureSettings.setBlacklist(
                    GestureBlacklistActivity.this, snapshot);
            runOnUiThread(() -> {
                if (isFinishing() || isDestroyed()) return;
                if (saved) {
                    mDirty = false;
                    Toast.makeText(this, "手势黑名单已保存", Toast.LENGTH_SHORT).show();
                    finish();
                } else {
                    mSaveButton.setEnabled(true);
                    mSaveButton.setText(R.string.miuix_blacklist_done);
                    Toast.makeText(this, "无法保存手势黑名单",
                            Toast.LENGTH_LONG).show();
                }
            });
        });
    }
    private void updateSelectionState() {
        mSelectionSummary.setText(getString(
                R.string.miuix_blacklist_selected_fmt, mSelectedPackages.size()));
    }
    private final class AppAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return mVisibleApps.size();
        }
        @Override
        public AppEntry getItem(int position) {
            return mVisibleApps.get(position);
        }
        @Override
        public long getItemId(int position) {
            return getItem(position).packageName.hashCode();
        }
        @Override
        public boolean hasStableIds() {
            return true;
        }
        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            RowHolder holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(GestureBlacklistActivity.this)
                        .inflate(R.layout.miuix_blacklist_row, parent, false);
                holder = new RowHolder(
                        convertView.findViewById(R.id.row_icon),
                        convertView.findViewById(R.id.row_title),
                        convertView.findViewById(R.id.row_package),
                        convertView.findViewById(R.id.row_check));
                convertView.setTag(holder);
            } else {
                holder = (RowHolder) convertView.getTag();
            }
            AppEntry entry = getItem(position);
            holder.icon.setImageDrawable(entry.icon);
            holder.title.setText(entry.label);
            holder.packageName.setText(entry.packageName);
            holder.selected.setOnCheckedChangeListener(null);
            holder.selected.setChecked(mSelectedPackages.contains(entry.packageName));
            holder.selected.setOnCheckedChangeListener((button, checked) -> {
                if (checked) {
                    mSelectedPackages.add(entry.packageName);
                } else {
                    mSelectedPackages.remove(entry.packageName);
                }
                mDirty = true;
                updateSelectionState();
            });
            CheckBox rowCheckBox = holder.selected;
            convertView.setOnClickListener(v -> rowCheckBox.performClick());
            convertView.setContentDescription(entry.label + "，"
                    + (holder.selected.isChecked() ? "已加入黑名单" : "未加入黑名单"));
            return convertView;
        }
    }
    private static final class AppEntry {
        final String packageName;
        final String label;
        final Drawable icon;
        AppEntry(String packageName, String label, Drawable icon) {
            this.packageName = packageName;
            this.label = label;
            this.icon = icon;
        }
    }
    private static final class RowHolder {
        final ImageView icon;
        final TextView title;
        final TextView packageName;
        final CheckBox selected;
        RowHolder(ImageView icon, TextView title, TextView packageName, CheckBox selected) {
            this.icon = icon;
            this.title = title;
            this.packageName = packageName;
            this.selected = selected;
        }
    }
}
