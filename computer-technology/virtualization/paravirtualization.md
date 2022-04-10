# Paravirtualization
This is the type of virtualization [[xen]] uses. Instead of implementing an emulation layer on top of the hardware, a *privileged guest* (Domain0 in [[xen]]) is given full privilege to access the underlying hardware, and the rest of the guests contact it to acquire the resources they need.

Paravirtualization usually requires the modifying of the guest OSes (no longer true since [[virtualization-enabled-chips]]?) to use *stub drivers* instead of real drivers to access the hardware resources, the stub drivers only call the *privileged guest* for resources.

Communication between guest OSes and the privileged guest is especially fast because it happens through [[shared-memory]]
