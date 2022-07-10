---
tags: definition
---

# `slowms`
The parameter the defines the threshold over which an operation is considered "slow", and thus it's recorded especially to debug it. This is configured through the [[profiler]].

It's important not to set `slowms` at a low value even with the profiler off, because it any operation that exceeds it will be logged, and thus decrease the system's performance.
