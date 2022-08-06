---
tags: partitioning
---

# Partitioning
The canonical scalability solution: it consists of spreading data across different servers, where some specific characteristic of it (such as the hash of the key) decides on what server that piece of data ends. This helps in many cases:

* More data can be stored, since more lower-end drives are cheaper than a single, bigger, higher-end drive. [[mongodb]] recommends sharding only when data gets above 5TB.
* Access to data is load-balanced since the data itself is distributed.
* It might allow putting data closer to its user: we can shard all data pertaining to american users in servers in america while european users get their data from servers in europe, thus reducing latency.
* For the same reason, this can help with regulatory compliance.
* It also can alleviate the load on the networking, since the data goes to several different servers instead to a single one.

### Other Names
* Sharding
