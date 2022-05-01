# Storage drivers
==There might be considerable overlap between the categories here and the [[union-filesystem]]s, but I'm not entirely sure which ones of these are full filesystems on their own or just abstraction over existing filesystems to support Docker's necessities==

* *OverlayFS*: The currently most recommended driver for Docker containers, it's pretty fast and integrated into the kernel since Linux 4.0
* *AuFS*: The original Docker's filesystem driver. It's no longer recommended. It's never been officially accepted in the mainline kernel but some distributions offered it. AFAIK, these stopped doing it since it was too buggy, which forced Docker developers to work on *OverlayFS* (==TODO: citation needed==)
* *Btrfs*: It's fundamentally a copy-on-write filesystem so it's a good fit for docker. It's the second most-recommended filesystem after *OverlayFS* and decently mature and widely supported.
* *Device Mapper*: Originally developed by Red Hat to support their distributions which lacked *AuFS*. It's been into the kernel for a long time but Docker uses it in an unconventional way. It's not recommended unless it's your only choice.
* *VFS (Virtual FileSystem)*: It's the simplest and slowest implementation. It doesn't really support copy-on-write, it just creates a new directory and copies all the data. It was intended for testing purposes so maybe it's useful for experimentation.
* *[[zfs]]*: The most advanced open-source filesystem. Licensing makes it hard to use in Linux, but if you're already running ZFS in production, this might be your best choice.
