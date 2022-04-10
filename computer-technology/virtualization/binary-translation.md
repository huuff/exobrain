# Binary translation
A technique for enable [[virtualization-types|hardware virtualization]], where calls for physical resources from the guest OS are translated on-the-fly by the [[hypervisor]] in binary code to calls to the actual resources.

This enables virtualization without modifying the guest OS, which might be impossible for closed-source OSes.

I'm not sure this is still used, given there are [[virtualization-enabled-chips]], but maybe this is the way video game consoles are emulated?
