# Split storm
When a [[shard-chunk]] has to be splitted, all [[config-server]]s must be online and reachable. If one is unreachable, MongoDB will be unable to update the metadata and the split will fail, but as long as `mongod` keeps receiving writes, it will keep trying to split the chunk, which can cause pressure on the process and the involved shard. This is called a *split storm*.
