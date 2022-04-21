---
tags: caveat
---

# Fixing error `Pod sandbox changed`
I've spent two weeks debugging it and it was really dumb in the end: Kubernetes nodes need at least 2 vCPUs to function (or maybe you're short on any other resource). Otherwise this strange error pops up and restarts your containers constantly.
