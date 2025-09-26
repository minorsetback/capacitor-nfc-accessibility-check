import Foundation
import CoreNFC

@objc public class CapacitorNfcAccessibilityCheck: NSObject {

    @objc public func isSupported() -> Bool {
        if #available(iOS 11.0, *) {
            return NFCNDEFReaderSession.readingAvailable
        } else {
            return false
        }
    }
}
