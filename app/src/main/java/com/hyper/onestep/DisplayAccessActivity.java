package com.hyper.onestep;

import android.app.Activity;
import android.os.Bundle;

public final class DisplayAccessActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        finish();
        overridePendingTransition(0, 0);
    }
}
