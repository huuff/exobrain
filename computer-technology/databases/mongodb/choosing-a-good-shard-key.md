---
tags: tip
---

# Choosing a good shard key
A good shard key should:

* Have high cardinality (wide range of possible values): So there are more possible chunks and shards to make out of it, increasing your possibilities of scaling.
* Have low frequency: So no key is much more usual than others, which would cause a [[hot-spot]] where a single server takes a higher load thant the rest
* Be non-monotonically changing: If a key changes monotonically (such as a timestamp), most writes in a single period of time would go to the same server, which is unpredictable, and also disallows parallelizing writes to shards

Reading can also be affected, a high-cardinality, low-frequency shard key can better be targeted by queries to a specific shard, while the opposite could result in [[scatter-gather]]
