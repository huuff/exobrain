---
tags: how-to
---

# How to easily find slow queries
The `mloginfo` package of `mtools` provides great help with this. Just run it on the log file with `mloginfo --queries --no-progressbar «log file»` and it shows a nice table with the query, the number of times it has been observed, and the time it took.
