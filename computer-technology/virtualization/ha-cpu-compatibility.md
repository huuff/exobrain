---
tags: caveat
---

# Considerations of different CPU brands for HA features
Most virtualization products provide HA features such as vMotion for ESXi to enable moving a virtual machine across different hosts in a cluster with no downtime. It's important to note that this is only possible if all machines use fairly similar CPUs, that is, only if all CPUs are Intel or all are AMD. Otherwise, downtime will be needed as the machine will have to be shut down.
