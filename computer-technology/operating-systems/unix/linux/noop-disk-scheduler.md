---
tags: tip
---

# NoOp Disk Scheduler
This [[disk-scheduler]] just passes all disk operations to the underlying hardware as quickly as they come. This can improve performance in some situations:

* On SSDs this is usually the best option since they don't have the locality issues spinning disks usually have
* In a [[hardware/raid]] controler with caching, this is the best option because the cache acts as an SSD.
