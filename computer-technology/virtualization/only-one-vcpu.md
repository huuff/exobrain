---
tags: caveat
---

# Use only one vCPU in most cases
Usually, the number of vCPUs a virtual machine can use is the only performance parameter that can be tuned for virtual machines regarding CPU usage. It's logical to think that adding more will make your VM faster but actually:

VMs with more than one vCPU need that the exact same number of physical CPUs be available in order to be scheduled, this means that, in a host with four CPUs (or a CPU with four cores) a VM with four vCPUs needs to be the only one running in order to be scheduled. This actually means that more vCPUs might mean your machine slower since it'll take longer to be scheduled.

A machine with many vCPUs might be starved by several machines with a single one since they never allow enough physical CPUs to be free for the multi-vCPU machine to be scheduled.

This issue seems to be less problematic now with the recent developments in virtualization, but apparently it still exists, so the recommendation is to only use one vCPU as a baseline, unless experimentation demonstrates more are needed.
