package com.hyper.onestep.dragshare;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;

import com.hyper.onestep.MainActivity;

public final class HyperDragEntryReceiver extends BroadcastReceiver {
    public static final String ACTION_HYPERDRAG_TEXT =
            "com.hyper.onestep.action.HYPERDRAG_TEXT";

    private static final String SENDER_PORTAL = "com.miui.contentextension";
    private static final String SENDER_SELF = "com.hyper.onestep";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !ACTION_HYPERDRAG_TEXT.equals(intent.getAction())) {
            return;
        }
        String text = intent.getStringExtra(Intent.EXTRA_TEXT);
        if (TextUtils.isEmpty(text) || !isTrustedSender()) {
            return;
        }
        if (MainActivity.acceptHyperDragText(text)) {
            return;
        }
        
        ClipboardManager clipboard = context.getSystemService(ClipboardManager.class);
        if (clipboard != null) {
            clipboard.setPrimaryClip(ClipData.newPlainText("onestep-paste", text));
            Toast.makeText(context, "已复制到剪贴板", Toast.LENGTH_SHORT).show();
        }
    }

    private boolean isTrustedSender() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            return true;
        }
        String sender = getSentFromPackage();
        return SENDER_PORTAL.equals(sender) || SENDER_SELF.equals(sender);
    }
}
