# OCI Runtimes
There are several OCI-compliant runtimes that can be used to run OCI images:

* [[runc]]
* Oracle's Railcar: Intends to be an exact drop-in replacement for `runc`. Intended to be an alternative to validate specifications.
* CoreOS `rkt`
* Intel's Clear Containers/Kata Containers: Very different to [[runc]] and Railcar since it uses [[virtualization-types|hardware virtualization]], so the isolation is much stronger than what [[linux/namespace]]s and [[cgroups]] can provide. It can actually run more than one container per VM so it natively supports features like Kubernetes' [[kubernetes/pod]]s.
* Google's gVisor: Runs in userspace and thus is isolated from the Kernel. Instead of directing system calls to the Kernel, it reimplements them. Since it's isolated from the Kernel, it provides stronger isolation and security than other runtimes. I've read somewhere that it performs much worse than native or VM-based solutions, but this might have changed. It's a good choice for running user-provided workloads.
