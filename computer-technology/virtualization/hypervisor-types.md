# Hypervisor types
* **Type 1** or **Bare-metal**: Run directly on the system hardware. Examples: VMware ESXi, KVM
* **Type 2** (or **application level**?): Require a host operating system, which gives support for for I/O devices and memory management.

The line is somewhat blurred by [[kvm]]. Since KVM runs as a kernel module, it interacts directly with the underlying hardware without passing through the host OS. It's generally considered a type 1 hypervisor, but it's also generally managed through [[qemu]], a type 2 hypervisor.
