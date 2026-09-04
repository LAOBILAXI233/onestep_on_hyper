package smartisanos.app;

import android.content.Context;
import android.content.DialogInterface;

public class MenuDialog extends android.app.AlertDialog {

    public MenuDialog(Context context) {
        super(context);
    }

    public void setPositiveButton(int textId, DialogInterface.OnClickListener listener) {
        setButton(BUTTON_POSITIVE, getContext().getString(textId), listener);
    }

    public void setPositiveButton(CharSequence text, DialogInterface.OnClickListener listener) {
        setButton(BUTTON_POSITIVE, text, listener);
    }

    public void setNegativeButton(int textId, DialogInterface.OnClickListener listener) {
        setButton(BUTTON_NEGATIVE, getContext().getString(textId), listener);
    }

    public void setNegativeButton(CharSequence text, DialogInterface.OnClickListener listener) {
        setButton(BUTTON_NEGATIVE, text, listener);
    }
}
