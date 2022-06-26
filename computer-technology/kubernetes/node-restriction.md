# `NodeRestriction`
An [[admission-controller]] that ensures that a [[kubelet]], even though authorized through [[node-authorization]], can only access resources running on the node, limiting the dangers of a compromised node. The elements running on the node that the `kubelet` will be able to access are:

* [[pod]]s
* Secrets (these are already mounted on the node)

## Node relabeling prevention
Even though a compromised kubelet won't be able to access workloads not running on itself, it could always relabel itself to try to attract more sensible workloads by restarting with different command-line flags.

Usually, labels are used to set security requirements on nodes, so a node in a less-sensitive security zone could relabel it as a more secured one to attract pods with sensitive information.

Fortunately, the `NodeRestriction` plugin prevents this through enforcing an immutable label format.
