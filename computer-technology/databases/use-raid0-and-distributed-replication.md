---
tags: tip
---

# Use RAID0 for speed and your database's distributed replication mechanism for reliability
You might wonder which [[hardware/raid]] type to use, RAID0 for speed, RAID1 for reliability, full RAID10? Actually, it's best to use distributed replication since that also protects against full node failures (having more disks won't help if the whole node fails), and then you can just devote to RAID0 to get the fastest speed.
