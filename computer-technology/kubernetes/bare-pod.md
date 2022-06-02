---
tags: antipattern
---

# Bare pod
A bare pod is a pod that's directly, manually created, without a backing [[replica-set]], or [[deployment]]. This is an antipattern and discouraged, since in the case the pod fails, it won't be recreated, and thus lacks any self-healing capabilities.
