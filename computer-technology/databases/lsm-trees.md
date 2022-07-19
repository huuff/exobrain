---
tags: definition
---

# LSM-Trees
A type of [[log-structured-storage-engine]] where data is kept in [[segment]]s sorted by key (a [[sstable]]) on disk, and any current writes go to an in-memory sorted data structure (such as an [[avl-tree]] or [[red-black-tree]]), called a [[memtable]]. When the memtable grows beyond a certain size, it's dumped to the disk as a [[segment]].

### Advantages
* [[compaction]] is very simple and efficient, just read every [[segment]] side by side and for each key, copy to the output the lowest one. Also for keys that appear in multiple segments, keep only the most recent values.
* You don't need to keep an index of all keys. If you know that your key `C` is between `A`, and `B`, you only need to keep indexes to `A` and `B` and scan the space in-between to find the key you look for
* Since you'll need to scan ranges of keys for reads, you can compress all space between two keys, and each key be the offset of the start of the block. This lowers disk-usage and consumed I/O bandwidth.
