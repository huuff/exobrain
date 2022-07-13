---
tags: definition
---

# RAID (Redundant Array of Inexpensive Disks)
A hardware or software mechanisms that allows treating multiple disks as if they were a single one. There are several variants:

* RAID0: Also called disk stripping. Each disk holds part of the data, since there are several disks, writes can be sped up by being parallelized. However, a single disk failure makes the whole array unusable
* RAID1: Also called mirroring. An identical copy of the data is written on another disk. This can slow writes as they are limited to the speed of the slowest disk, but increases reliability since failure of a single disk doesn't lose any data.
* RAID5: Disk stripping, plus keeping an extra piece of redundant data to prevent data loss on a server failure. It can prevent some data loss, but calculating that extra data is slow, so this is the slowest of all and unadvised for any use-cases.
* RAID10: A combination of RAID0 and RAID1, data is both stripped for speed and mirrored for reliability. Looks like the best of them. But maybe you're gonna need more disks with it?
