package com.hyper.onestep.lsp;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;

/** Stable input contract shared by extraction hooks and the module Activity. */
public final class TextBoomContract {
    public static final String MODULE_PACKAGE = "com.hyper.onestep";

    public static final String EXTRA_TOUCH_INDEX = "boom_index";
    public static final String EXTRA_TOUCH_X = "boom_startx";
    public static final String EXTRA_TOUCH_Y = "boom_starty";

    private TextBoomContract() {}

    public static Intent createIntent(CharSequence text, Uri imageUri,
            int touchIndex, int touchX, int touchY) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(MODULE_PACKAGE, TextBoomActivity.class.getName()));
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS);
        if (text != null) intent.putExtra(Intent.EXTRA_TEXT, text);
        intent.putExtra(EXTRA_TOUCH_INDEX, touchIndex);
        intent.putExtra(EXTRA_TOUCH_X, touchX);
        intent.putExtra(EXTRA_TOUCH_Y, touchY);
        if (imageUri != null && "content".equals(imageUri.getScheme())) {
            // The extraction hook launches our own Activity from system_server. HyperOS refuses
            // to let uid 1000 issue a grant for a URI owned by this module, and no grant is needed
            // because TextBoomActivity and BigBangImageProvider share the same uid. The Activity
            // creates the real temporary grant later when the user shares or globally drags it.
            intent.putExtra(Intent.EXTRA_STREAM, imageUri);
        }
        return intent;
    }
}
