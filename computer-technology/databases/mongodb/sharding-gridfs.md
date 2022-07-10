# Sharding GridFS
GridFS collections seem like a good fit for sharding since they contain a lot of data, but the default indexes created on `fs.chunks` are not very good candidates at being [[shard-key]]s:

* `{"_id": 1}` is [[monotonically-changing-shard-key|monotonically ascending]]
* `{ "files_id": 1, "n": 1}` is also monotonically ascending

However, you can create a [[hashed-shard-key]] on the `"files_id"` field to reap some benefits:
* Each file will be randomly distributed across the cluster, so writes are distributed
* All of a file will be in the same chunk, so reads are [[targeted-query|targeted queries]]
