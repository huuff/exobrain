# Ballooning
It's usual for VMs to take all the memory they can for various kinds of optimizations such as disk cache. This can ensure a better hardware utilization in a physical environment, but actually be detrimental in virtualized environments, since it precludes [[memory-overcommitment]]

*Ballooning* is a technique used by the [[hypervisor]] to reclaim memory from a VM. The hypervisor artificially fills up the VM machine to its limit, forcing it to page the least recently used data to the disk. Usually this process only happens when there is contention for memory.
