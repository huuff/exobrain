---
tags: tip
---

# Disable Access Time Tracking
The operating system usually stores the last time a file was accessed in its metadata. MongoDB has a very high traffic so this might incur some overhead, and disabling it can improve performance. To do so, change `atime` to `noatime` on the disk in `/etc/fstab`:

```
/dev/sda7 /data xfs rw,noatime 1 2
```

You must remount the device for the changes to take effect.
