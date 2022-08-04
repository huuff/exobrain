---
tags: pattern
---

# Master-Slave chain
Sometimes, servers are unable to keep up with [[redis/replication]], especially over the public internet. A nice pattern to improve this is to set master-slave chains or hierarchies: since slaves can be slaves to other slaves, they can replicate from these instead of from the master, thus alleviating the load on the master.

Besides, since transferring through the public internet is usually an issue, this also allows setting a sort of "master slave" inside a datacenter, that replicates from the actual master and from whom all other slaves in the datacenter replicate, so this replication is faster.
