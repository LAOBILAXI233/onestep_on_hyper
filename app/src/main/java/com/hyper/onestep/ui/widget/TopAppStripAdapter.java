package com.hyper.onestep.ui.widget;

import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;

import com.hyper.onestep.model.LauncherApp;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class TopAppStripAdapter
        extends ListAdapter<LauncherApp, TopAppStripAdapter.Holder> {
    public interface Callbacks {
        void bind(AppShortcutView view, LauncherApp app);
        void attached(AppShortcutView view);
        void detached(AppShortcutView view);
    }

    private static final DiffUtil.ItemCallback<LauncherApp> DIFF =
            new DiffUtil.ItemCallback<LauncherApp>() {
                @Override
                public boolean areItemsTheSame(@NonNull LauncherApp oldItem,
                                               @NonNull LauncherApp newItem) {
                    return oldItem.isSameInstance(newItem);
                }

                @Override
                public boolean areContentsTheSame(@NonNull LauncherApp oldItem,
                                                  @NonNull LauncherApp newItem) {
                    return oldItem == newItem;
                }
            };

    private final int iconSizeDp;
    private final int cellWidthPx;
    private final Callbacks callbacks;
    private List<LauncherApp> requestedApps = Collections.emptyList();

    public TopAppStripAdapter(int iconSizeDp, int cellWidthPx, Callbacks callbacks) {
        super(DIFF);
        this.iconSizeDp = iconSizeDp;
        this.cellWidthPx = cellWidthPx;
        this.callbacks = callbacks;
    }

    public void submitApps(List<LauncherApp> apps) {
        if (!requestedApps.equals(apps)) {
            requestedApps = new ArrayList<>(apps);
            submitList(requestedApps);
        }
    }

    @NonNull
    @Override
    public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        AppShortcutView shortcut = new AppShortcutView(parent.getContext(), false, iconSizeDp, 0);
        shortcut.setStatusIndicatorEnabled(true);
        shortcut.setLayoutParams(new RecyclerView.LayoutParams(
                cellWidthPx, ViewGroup.LayoutParams.MATCH_PARENT));
        return new Holder(shortcut);
    }

    @Override
    public void onBindViewHolder(@NonNull Holder holder, int position) {
        holder.shortcut.recycle();
        LauncherApp app = getItem(position);
        holder.shortcut.bind(app);
        holder.shortcut.setTag(app);
        callbacks.bind(holder.shortcut, app);
    }

    @Override
    public void onViewAttachedToWindow(@NonNull Holder holder) {
        callbacks.attached(holder.shortcut);
    }

    @Override
    public void onViewDetachedFromWindow(@NonNull Holder holder) {
        callbacks.detached(holder.shortcut);
    }

    @Override
    public void onViewRecycled(@NonNull Holder holder) {
        callbacks.detached(holder.shortcut);
        holder.shortcut.recycle();
    }

    static final class Holder extends RecyclerView.ViewHolder {
        final AppShortcutView shortcut;

        Holder(AppShortcutView shortcut) {
            super(shortcut);
            this.shortcut = shortcut;
        }
    }
}
