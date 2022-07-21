---
tags: definition
---

# Log-Structured Storage Engine
In these storage engines, all data is appended to a [[log]], called a [[segment]]:

==TODO: Use the same format as for B-Tree, starting with writing since it's best to understand.==

* Data is never deleted from the log (that's why it's a log), so only new writes are appended to the end of the log.
* When reading, we need to traverse all segments from the latest one until we find the first one that contains the value.
* Instead of deleting a value, a special entry is added (a [[tombstone]]), that marks that value for deletion.
* To avoid wasting space, a process runs in the background, (the [[compaction]]) that regularly merges segments by taking only the last value, and discarding any values previous to a tombstone.

The canonical implementation is the [[lsm-tree]]

### Advantages
* Appending data to the end of a file is much more performant than adding it at a random point, especially for magnetic disks.
* Concurrency control is much easier when all writes are sent to a single segment. We could have just one concurrent writer thread to avoid any concurrency issues.
* The periodic compaction of segments prevents the issue of data getting fragmented over time.

