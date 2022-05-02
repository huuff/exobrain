# Hardware virtualization
Seems like an overloaded term. First there's the [[virtualization-types|hardware virtualization type]] that emulates a virtual hardware. (Maybe the correct name is hardware-level virtualization?). But there's also the set of features CPU provide to support virtualization, such as Intel's VT-x.

This allows [[hypervisor]]s to run in a special privileged mode known as *VMX root mode*, which is essentially [[protection-ring|ring -1]]. This allows the guest OSes to run in ring 0 and thus emulate [[non-virtualizable-instructions]].
