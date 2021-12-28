---
tags: caveat
---

# Beware of iterator issues with Typescript, solve with `downlevelIteration` or targeting something above `es5`
Typescript has issues with iterators when targeting a version of EcmaScript too old. To solve them:

* Use `downlevelIteration` (has some performance costs)
* Target something above `es5`

The worst version of this I've suffered is about iterator-related errors that happen in node (especifically, using jest) and not in the browser. This means that jest is not picking up the correct `tsconfig.json` so do so by appending to `jest.config.js`:

```js
module.exports = {
  // [...]
  globals: {
    'ts-jest': {
      tsconfig: '<path to tsconfig.json>',
    },
  },
}
```
