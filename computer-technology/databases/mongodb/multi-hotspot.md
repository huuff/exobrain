---
tags: pattern
---

# Multi-hotspot
A standalone `mongod` server is most efficient when writes are ascending, which conflicts with [[sharding]], where writes must be evenly distributed. This pattern creates several [[hotstpot]]s, so that writes are evenly distributes across shards, but increasing within one.

## Implementation
We have to use a compound [[shard-key]]:

* The first part of the key is a random value with low-ish cardinality. You can roughly identify each value of the key as a [[chunk]], and this makes writes distributed across shards.
* The second part is an ascending value, making these writes ascending within the shard.
