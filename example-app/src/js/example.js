import { CapacitorNfcAccessibilityCheck } from 'capacitor-nfc-accessibility-check';

window.testEcho = async () => {
  try {
    const { supported } = await CapacitorNfcAccessibilityCheck.isSupported();
    console.log("NFC supported:", supported);
  } catch (error) {
    console.error("Error checking NFC support:", error);
  }
};
