---
tags: caveat
---

# Task actions are defined in `doFirst` and `doLast` blocks
Any code outside of these blocks is actually a *configuration* and thus run during the [[build-phases|configuration phase]], so they're always run before the actual task is run. Actions defined in the `doFirst` and `doLast` blocks runs in the [[build-phases|execution phase]]
