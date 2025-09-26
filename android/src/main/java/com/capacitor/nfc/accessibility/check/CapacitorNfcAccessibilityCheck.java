package com.capacitor.nfc.accessibility.check;

import android.nfc.NfcAdapter;
import android.content.Context;
import com.getcapacitor.Logger;

public class CapacitorNfcAccessibilityCheck {

    private final Context context;

    public CapacitorNfcAccessibilityCheck(Context context) {
        this.context = context;
    }

    // Check if NFC is supported
    public boolean isSupported() {
        NfcAdapter adapter = NfcAdapter.getDefaultAdapter(context);
        boolean supported = adapter != null;
        Logger.info("NFC Support Check", "Supported: " + supported);
        return supported;
    }
}
