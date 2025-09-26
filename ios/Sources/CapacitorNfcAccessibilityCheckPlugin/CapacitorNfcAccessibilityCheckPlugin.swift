import Foundation
import Capacitor
import CoreNFC

@objc(CapacitorNfcAccessibilityCheckPlugin)
public class CapacitorNfcAccessibilityCheckPlugin: CAPPlugin, CAPBridgedPlugin {

    public let identifier = "CapacitorNfcAccessibilityCheckPlugin"
    public let jsName = "CapacitorNfcAccessibilityCheck"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "isSupported", returnType: CAPPluginReturnPromise)
    ]

    private let implementation = CapacitorNfcAccessibilityCheck()

    @objc func isSupported(_ call: CAPPluginCall) {
        let supported = implementation.isSupported()
        call.resolve([
            "result": supported // JS receives boolean in "value"
        ])
    }
}
