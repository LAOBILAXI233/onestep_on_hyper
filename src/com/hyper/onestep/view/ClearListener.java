package com.hyper.onestep.view;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.hyper.onestep.R;
import com.hyper.onestep.util.Tracker;
import smartisanos.app.MenuDialog;
// 清空历史确认对话框的点击监听器
public class ClearListener implements View.OnClickListener {
    private Runnable action;
    private int mTitleResId;
    private MenuDialog mDialog;
    public ClearListener(Runnable action, int titleResId) {
        this.action = action;
        mTitleResId = titleResId;
    }
    @Override
    public void onClick(View v) {
        if (mDialog == null) {
            mDialog = new MenuDialog(v.getContext());
            mDialog.setTitle(mTitleResId);
            mDialog.setPositiveButton(R.string.clear, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    action.run();
                }
            });
            mDialog.setNegativeButton(android.R.string.cancel,
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                        }
                    });
            mDialog.getWindow().getAttributes().type = WindowManager.LayoutParams.TYPE_APPLICATION_SUB_PANEL;
            mDialog.getWindow().getAttributes().token = v.getWindowToken();
        }
        if (!mDialog.isShowing()) {
            mDialog.show();
        }
        fitDialogToContent(v);
        if (mTitleResId == R.string.title_confirm_delete_history_photo) {
            Tracker.onClick(Tracker.EVENT_CLEAN, "source", "0");
        } else if (mTitleResId == R.string.title_confirm_delete_history_file) {
            Tracker.onClick(Tracker.EVENT_CLEAN, "source", "1");
        } else if (mTitleResId == R.string.title_confirm_delete_history_clipboard) {
            Tracker.onClick(Tracker.EVENT_CLEAN, "source", "2");
        }
    }
    private void fitDialogToContent(View anchor) {
        View root = anchor.getRootView();
        int rootWidth = root == null ? 0 : root.getWidth();
        int margin = (int) (16 * anchor.getResources().getDisplayMetrics().density + 0.5f);
        int width = rootWidth - margin * 2;
        Window window = mDialog.getWindow();
        if (window != null && width > 0) {
            window.setGravity(Gravity.CENTER);
            window.setLayout(width, WindowManager.LayoutParams.WRAP_CONTENT);
        }
    }
    public void dismiss() {
        if (mDialog != null && mDialog.isShowing()) {
            mDialog.dismiss();
        }
    }
    public void onConfigurationChanged(Configuration newConfig) {
        dismiss();
        mDialog = null;
    }
}
