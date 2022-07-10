# `oplog`
MongoDB's mechanism for replication. Every operation the master performs is written to the `oplog` before. The secondaries query the `oplog` for any new data and write it to their own `oplog`. Since each secondary mantains its own `oplog` any of them can be used as a replication source.

## How it stores operations
Not every operation equates a single entry in the `oplog`. The operations in the `oplog` must be [[idempotency|idempotent]], therefore, operations that affect multiple documents are exploded into one operation for each document, so each of them can be replicated independently. 

## The size of the oplog
It's an important parameter into account. The size of the oplog determines for how much time can a single replica fall behind primary's replication.

The `oplog` is a [[capped-collection]], and it's thus limited in size. Older entries get deleted when new entries arrive after the limit is reached. If a replica is so far behind in the replication such that it doesn't get the oldest operations before they get deleted, then it won't be able to replicate anymore and will thus have to be shut-down and put into maintenance mode until a full-sync is performed.
