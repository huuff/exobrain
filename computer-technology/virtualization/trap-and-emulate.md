# Trap-and-emulate
Some CPU instructions are privileged and such can only run in [[protection-ring|ring 0]]. If they are tried to run in a higher ring, they produce a *trap*, which will cause a handler to run on ring 0.

Generally, as the [[hypervisor]] runs in a lower ring than the guest OS, this means that the hypervisor can control this handler and take an appropriate action to emulate the privileged instruction for the guest OS.
