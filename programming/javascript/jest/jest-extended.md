---
tags: how-to
---

# Additional matchers for `jest` with `jest-extended`
I can barely live without these:

1. Install `jest-extended` with `npm i -D jest-extended`
2. Add `setupFilesAfterEnv": ["jest-extended/all"]` to `jest.config.js`
3. Add `import 'jest-extended'` to `global.d.ts`
4. Add `"files": [ "global.d.ts" ]` to `tsconfig.json`
