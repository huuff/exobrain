---
tags: comparison
---

# B-Trees vs LSM-Trees
A comparison of [[b-tree|B-Trees]] an [[lsm-tree|LSM-trees]] from [[designing-data-intensive-applications]].

The general rule of thumb is that LSM-Trees are faster for writes while B-Trees are faster for reads.

### Advantages of [[lsm-tree]]s
* They have lower [[amplification|write amplification]], in B-Trees everything must be written twice: once to the [[wal]] and another to the B-Tree (==Isn't this also true for LSM-Trees? Don't they use a [[wal]]?==). Also, there's performance overhead to writing several [[page]]s at the same time.
* They write [[sstable|SSTables]] sequentially, which is especially good for magnetic disks, where sequential writes are much faster.
* SSTables can be better compressed on disk, also [[compaction]] ensures they are not [[fragmentation|fragmented]], which is not true of B-Trees

### Downsides of LSM-Trees
* [[compaction]] might interfere with ongoing reads and writes in some corner cases, leading to B-Trees having more predictable performance.
* At high write throughput, [[compaction]] and writes might have to compete for disk bandwith. In extreme cases, writes can come faster than compaction can handle, which can end in the disk usage growing unbounded.
* In B-Trees, a key appears in exactly one place, while in a LSM-Tree, they can appear in several [[segment]]s. This means we may have to look many segments before finding our value, and also, having a single value for a key makes it easier to implement concurrency control through locking.
