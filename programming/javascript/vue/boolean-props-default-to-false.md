---
tags: caveat
---

# Boolean props default to false
This hit me bad and lost a couple hours. Even if a boolean prop is typed as optional, when not provided, it defaults to false, not undefined.

[Source](https://github.com/vuejs/vue/issues/8704)
