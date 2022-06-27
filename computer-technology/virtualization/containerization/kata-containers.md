# Kata Containers
Wraps containers in a lightweight VM that contains the container engine and it's optimized for running containers. It's the oldest of [[sandboxing]] technologies.

It wraps containers in a dedicated [[kvm]] virtual machine and device emulation comes from a pluggable backend such as [[qemu]], QEMU-lite, NEMU or [[firecracker]].

It's an [[oci-runtime]].
