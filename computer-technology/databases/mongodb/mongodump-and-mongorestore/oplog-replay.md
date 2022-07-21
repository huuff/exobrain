---
tags: how-to
---

# Include all recent writes in a back-up with oplog replaying
Since `mongodump` is not instantaneous, it takes a snapshot of data at a specific point in time, and the data might have changed from that point to the point of completion.

You can provide the `--oplog` flag to `mongodump` to also copy all operations written to the [[oplog]], and then restore it with the `--replayOplog` flag at `mongorestore` to include all writes made after the backup started.
