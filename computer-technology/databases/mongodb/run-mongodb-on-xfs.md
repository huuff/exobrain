---
tags: caveat
---

# You must run MongoDB on an XFS filesystem
You can use [[wired-tiger]] on [[ext4]] but there are some performance issues (it stalls on checkpoints ==What does this mean?==), so the only recommended filesystem is [[xfs]]
