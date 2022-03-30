# Location-based shard key
A shard key that depends on the user location, such as an IP, or address information. Not only a physical location, but also any other kind of key that would group related data together.

In comparison to [[monotonically-changing-shard-key]] and [[randomly-distributed-shard-key]], this one might be the best option:

### Pros
* Allows putting data nearer to the users, reducing latency
* Might be required to comply with some regulations (i.e. store EU users in a more privacy-oriented cluster)
* Queries are much more likely to be [[targeted-query|targeted]]
