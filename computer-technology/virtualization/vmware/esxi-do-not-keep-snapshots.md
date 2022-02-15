---
tags: caveat
---

# Only keep snapshots for the minimal amount of time (Usually, the duration of a backup or update)
Apparently, keeping snapshots around means that ESXi writes any changes both to the VM disk and to the snapshot. This means I/O performance is impacted, but also, that the space taken by the VM increases linearly with the number of snapshots and the time they are kept. This can really be a huge amount of space.

Also even deleting snapshots takes storage (though I've read somewhere is not that bad since ESX4), which means that you might get locked out of deleting a snapshot because you have not enough space, which will get even worse since that snapshot is still taking more and more space. So yeah, delete old snapshots
