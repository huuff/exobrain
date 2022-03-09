---
tags: how-to
---

# Count the results of an aggregation pipeline
For a normal query you just put `.count()` at the end, but for whatever reason, this isn't possible with an aggregation pipeline. But you can if you simply use `.itcount()`
