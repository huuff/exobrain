---
tags: comparison
---

# Vertical vs Horizontal Scaling in Redis
* Horizontal scaling consists on using [[redis/replication]] or [[databases/partitioning]]. Adding more machines to scale.
* Vertical scaling is special in Redis, since due to its single-threaded nature, it's not a bad idea to run several Redis instances on the same server and partition keys across these.
