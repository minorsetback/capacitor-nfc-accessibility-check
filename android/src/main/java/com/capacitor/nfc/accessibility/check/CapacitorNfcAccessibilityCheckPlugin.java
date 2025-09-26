package com.capacitor.nfc.accessibility.check;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "CapacitorNfcAccessibilityCheck")
public class CapacitorNfcAccessibilityCheckPlugin extends Plugin {

    private CapacitorNfcAccessibilityCheck implementation;

    @Override
    public void load() {
        implementation = new CapacitorNfcAccessibilityCheck(getContext());
    }

    @PluginMethod
    public void isSupported(PluginCall call) {
        boolean supported = implementation.isSupported();

        JSObject ret = new JSObject();
        ret.put("result", supported);
        call.resolve(ret);
    }
}
