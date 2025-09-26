export interface CapacitorNfcAccessibilityCheckPlugin {
  isSupported(): Promise<{ result: boolean }>;
}
