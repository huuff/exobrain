# Amazon Firecracker
An open source virtual machine monitor (a [[hypervisor]]?) by Amazon for their [[faas]] offering. It has some features that allow running lightweight VMs that start-up as fast as a container. (See [[containerization-vs-virtualization]]):

* It removes most of the kernel functionality that's not needed for the VM: It has no BIOS and very stripped down virtualized device drivers: No PCI drivers, virtual block I/O device driver, clock, serial console and a keyboard driver that only simulates sending `Ctrl-Alt-Del` to the VM to restart it.
* It implements its own memory management instead of relying on the host OS Kernel
* It can save a snapshot of the virtual machine that's perfectly ready for booting up: all packages installed, all necesary services already started. This makes startup really fast.

[Learn more in this article](https://webapp.io/blog/github-actions-10x-faster-with-firecracker/)
