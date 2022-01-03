---
tags: tips
---

# Avoid putting logic in `describe` blocks.
* These can't be `async`.
* `beforeEach` and `afterEach` run for `it` blocks, not `describe`, so it might be hard setting up an environment for them, and also using them might pollute it.
* Seriously I can't stress this enough because it always bites me again. Even if it means repeating logic in every `test` block, just do it. It's baffling how much jest can miss by putting logic in `describe` and how much time I've lost debugging these issues.
