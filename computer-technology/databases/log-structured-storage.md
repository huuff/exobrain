---
tags: definition
---

# Log-structured storage
In these storage engines, all data is appended to a [[log]]. Data is not removed, but "marked for deletion" (by adding a [[tombstone]]). All data is appended to a current *segment*, until it's full, at which point it's switched for a new one.

This means that only the most recent appended data for some key is the valid one. This could be wasteful of space, but background process called *compaction* is used to regularly, discard old values and merge

The canonical implementation is the [[lsm-tree]]

### Advantages
* Appending data to the end of a file is much more performant than adding it at a random point, especially for magnetic disks.
* Concurrency control is much easier when all writes are sent to a single segment. We could have just one concurrent writer thread to avoid any concurrency issues.
* The periodic compaction of segments prevents the issue of data getting fragmented over time.
