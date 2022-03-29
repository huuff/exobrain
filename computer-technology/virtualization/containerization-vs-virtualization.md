---
tags: comparison
---

# Containerization vs Virtualization
* Containers run on top of an operating system, on the user space.
* Virtual machines run on virtual, emulated hardware.

For this reason, container virtualization is also called *operating system-level virtualization*. There are some important differences

* Containers are inherently faster, since they don't have to emulate the whole operating system.
* Virtual machines are inherently more secure, since they have more, thicker layers that separate the virtualized software from the host.
* Containers cannot run architectures or kernels different to the host (that is, you can't run a Windows container on a Linux machine)
