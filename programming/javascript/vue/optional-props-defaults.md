---
tags: caveat
---

# Some types of props don't default to undefined when optional!
This hit me bad and lost a couple hours:

* A boolean defaults to `false`: [Source](https://github.com/vuejs/vue/issues/8704)
* A number defaults to `NaN`
