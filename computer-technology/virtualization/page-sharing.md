# Page sharing
In a virtualization host with many virtual machines that use the same operating system, a lot of in-memory structures necessary for it might be exactly the same. [[hypervisor]]s can optimize this memory usage by only storing one copy of these structures and sharing it between all machines.

When the structures are modified, they are copied to the individual VM and modified for their own version.
