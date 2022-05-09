---
tags: how-to, best-practice
---

# Make containers and mounts immutable
This will improve security.

* For `volumeMount`s, add `readOnly: true`
* For containers, add `readOnlyRootFilesystem: true` under `securityContext`
