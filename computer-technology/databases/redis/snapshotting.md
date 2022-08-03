---
tags: how-to
---

# Snapshotting
Saving a snapshot of the database to the disk, so that it can be restored later.

### Through configuration
These are some options you can put in your redis configuration file

* `save «interval» «writes to save»`: Save every `«interval»` seconds, if `«writes to save»` writes happened in that interval.
* `stop-writes-on-bgsave-error «yes|no»`: Stop serving writes if we can't save a snapshot
* `rdbcompression «yes|no»`: Compress the snapshot file
* `dbfilename «filename».rdb`: Target filename of the snapshot

### Through commands
You can use either `SAVE` or `BGSAVE` to trigger a snapshot. `BGSAVE` is much preferred to `SAVE` since `SAVE` blocks the Redis server and it won't be able to serve any reads or writes until it finishes. `BGSAVE` on the other hand, [[unix/fork|forks]] the process and saves on the background.

### Implicit snapshots
Redis also does snapshots in some situations by itself, for example, when issuing `SHUTDOWN` or it receives a `SIGTERM` [[unix/signal]], if snapshotting is enabled, Redis makes a snapshot before closing. Also, when a [[databases/replication|replica]] server connects to its master and issues a [[redis/sync]] command, the master creates a snapshot to send it to the replica.
