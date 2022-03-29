---
tags: antipattern
---

# Monotonically changing shard key
A *monotonically changing shard key* is one that always changes in the same direction, such as a timestamp, which is always increasing with every write. These keys are usually undesirable because:

* All writes go to the some shard, so it is the only one growing and splitting so it places an uneven amount of stress on that shard.
* It's harder to keep balanced shards and the effort of balancing is continuous. Instead of correcting small imbalances, MongoDB will be constantly taking chunks of the same shard.

## MongoDB 4.2 improvements to alleviate the issue
There's some improvement in this version for the issue, but I really don't understand the description of the solution given in [[mongodb-the-definitive-guide]], so I'll just copy-paste it here:

> In MongoDB 4.2 the move of the autosplit functionality to the shard primary `mongod` added top chunk optimization to address the ascending shard key pattern. The balancer will decide in which other shard to place the top chunk. This helps avoid a situation in which all new chunks are created on just one shard
