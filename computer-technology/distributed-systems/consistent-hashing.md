---
tags: definition
---

# Consistent Hashing
When distributing data across [[database/partitioning|database partitions]], we have to find a strategy that evenly distributes it across the different partitions to prevent a [[distributed-systems/hot-spot]]. Hashed keys are usually used to guarantee that the key distribution is even, even though newly generated keys might be monotonically increasing. This, however, has some issues:

* When a node is added or removed or becomes unavailable, all partitions must be moved to other nodes.
==TODO: Why? Explain it. Are there more reasons?==

Consistent hashing was developed by MIT to solve the issues with hash partitioning: In consistent hashing all nodes are spread across a circle, and a modulo of the hash is used to select which server in the circle is the appropriate for a specific key. This is not an exact match, instead, the closest node in the circle is chosen, so if a node becomes unavailable, its partition is just moved to the closest one.

Consistent hashing warrants that, given $K$ keys and $n$ servers, only $K/n$ keys must be moved when the amount of servers changes.
