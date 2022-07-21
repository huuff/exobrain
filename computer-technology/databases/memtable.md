---
tags: definition
---

# Memtable
A sorted in-memory data structure where all writes go in an [[lsm-trees]]-based storage engine. When it grows beyond a certain size, it's dumped to disk to form a [[segment]] (a [[sstable]]). When a read comes, the memtable must be checked first to see if the key is there, and resort to the [[sstable]]s if not.

Some advantages:
* Keeping this data structure sorted in memory is much more efficient than doing so on-disk.
* Writing all data to the memtable allows us to keep sequential writes even if the keys are sorted, since the whole memtable is written in one go.
