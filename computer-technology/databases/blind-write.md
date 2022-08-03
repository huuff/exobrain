---
tags: definition
---

# Blind Write
A write that does not cause a read. They are important for write-heavy workloads since these have some sort of [[amplification]] (or that's what I believe, does amplification exist across two different types of disk operations?)

I assume fully blind writes are impossible in [[b-tree|B-Trees]], since the modified page must be read to be written. For [[lsm-tree|LSM-Trees]], they might be possible since only appending the change to the log is necessary, however, this will cause some reads eventually at [[databases/compaction]]. [This source has a nice explanation on the topic](https://smalldatum.blogspot.com/2020/11/blind-writes-and-lsm.html)
