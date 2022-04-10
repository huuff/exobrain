# Hypervisor
An emulation layer that sits between the guest OS and the hardware for [[virtualization-types|harware virtualization]]. It is in charge of:
* Translating calls for physical resources from the virtual drivers of the guest OS to the actual resources ([[binary-translation]]?)
* Coordinating access to these resources by several machines
* Imposing limits on these resources

And actually many more virtual machine management features.
