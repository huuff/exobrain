---
tags: tips
---

# Avoid putting logic in `describe` blocks.
* These can't be `async`.
* `beforeEach` and `afterEach` run for `it` blocks, not `describe`, so it might be hard setting up an environment for them, and also using them might pollute it.
