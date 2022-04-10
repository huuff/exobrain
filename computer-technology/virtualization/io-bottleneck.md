---
tags: caveat
---

# I/O throughput bottleneck
A very easy bottleneck to bump into when running heavily virtualized workloads is I/O throughput. For most applications, I/O throughput is no issue, but this can quickly change when many guest OSes are running on a single host. Also, virtualization has its own throughput overhead since creating new virtual machines is such a quick and common process. Some suggestions:

* Many smaller disks are preferable to fewer bigger disks, since these tend to be slower and also having many disks enable higher paralellization.
* Disk stripping ([[raid|RAID 0]]) enables better write and read parallelization
* Disk morroring ([[raid|RAID 1]]) enables better parallelization since data can be found on any mirror.
