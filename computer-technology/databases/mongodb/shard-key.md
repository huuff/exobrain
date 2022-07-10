# Shard key
Data in collections that use [[sharding]] are distributed according to the **shard key**, so documents with different values for the shard key are likely to end in different nodes. All shard keys must also be indexes.

## Types of shard keys
* [[monotonically-changing-shard-key]]
* [[randomly-distributed-shard-key]]
* [[location-based-shard-key]]

## Tips
* [[choosing-a-good-shard-key]]

## Patterns
* [[sharding-gridfs]]
* [[firehose-strategy]]

## Techniques
* [[hashed-shard-key]]
