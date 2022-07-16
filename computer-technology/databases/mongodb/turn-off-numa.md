---
tags: caveat
---

# Disable NUMA
[[numa]] allows CPUs to take some amount of "local" memory. This works well for a lot of applications, but databases have memory access patterns that are very different to all other types of applications. MongoDB especially, takes huge amounts of memory and might very well need to take memory associated to other CPUs.

In a system with NUMA hardware, it must be configured in *interleave policy* which behaves mostly as non-NUMA. If MongoDB detects a NUMA configuration that might degrade performance, it'll print a warning on startup.
