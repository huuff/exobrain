# `mongodump` and `mongorestore`
`mongodump` is a tool for creating dumps of a MongoDB database which can then be used to restore it in another machine.

You can use with a running server:

`mongodump -p «port»`

Or even with an offline server, by just pointing to the database file:

`mongodump --dbpath /data/db`

### `--oplog` option
Note that `mongodump` is not instantaneous, and takes a snapshot at a specific point in time, and the data might have changed a lot from that at the point of completion. You can provide the `--oplog` flag to also replicate all changes that are written to the [[oplog]]. 

You need to then use the `--replayOplog` flag at `mongorestore` to restore that dump.
