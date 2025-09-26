import { registerPlugin } from '@capacitor/core';

import type { CapacitorNfcAccessibilityCheckPlugin } from './definitions';

const CapacitorNfcAccessibilityCheck = registerPlugin<CapacitorNfcAccessibilityCheckPlugin>(
  'CapacitorNfcAccessibilityCheck',
  {
    web: () => import('./web').then((m) => new m.CapacitorNfcAccessibilityCheckWeb()),
  },
);

export * from './definitions';
export { CapacitorNfcAccessibilityCheck };
