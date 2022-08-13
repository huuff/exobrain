---
tags: definition
---

# Stale read
A [[time-travel-anomaly]]. A write goes to a master, but reads go to a different replica. Since replication takes some time to happen, it's possible to read old data from the replica, at least until the write is replicated from the master. This happens in single-master distributed systems where all writes go to a master and reads can go to any replica.
