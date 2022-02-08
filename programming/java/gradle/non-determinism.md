---
tags: caveats
---

# Gradle task ordering is non-deterministic for tasks that are not explicitly ordered
Not relying on some implicit ordering strategy allows Gradle to easily run tasks that are independent of each other in parallel.
