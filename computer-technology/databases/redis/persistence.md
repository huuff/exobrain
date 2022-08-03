---
tags: index
---


# Persistence
There are two main ways of persisting data in Redis:

* [[snapshotting]]: Saving a whole copy of the database to disk at specific times. Useful to make backups of the database.
* [[appendonly|append-only file]]: Saving all operations to disk, like a [[databases/wal]]. Provides better [[databases/durability]] guarantees.
