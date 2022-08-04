---
tags: caveat
---

# Ensure you have spare memory for snapshots
When saving a [[snapshotting|snapshot]] in the background, Redis forks its process, in this situation, the child process might need as much memory as the parent. So it's not hard to get into a situation where snapshotting is impossible because you don't have enough spare memory.
