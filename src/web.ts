import { WebPlugin } from '@capacitor/core';

import type { CapacitorNfcAccessibilityCheckPlugin } from './definitions';

export class CapacitorNfcAccessibilityCheckWeb extends WebPlugin implements CapacitorNfcAccessibilityCheckPlugin {
  async isSupported(): Promise<{ result: boolean }> {
    console.warn('NFC is not supported in this environment');
    return { result: false };
  }
}
