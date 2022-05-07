---
tags: comparison
---

# Helm 3 vs Helm 2
Probably the most important feature of it is that [[tiller]] was deprecated, and thus Helm stopped using a client-server architecture and only a client (Helm) was necessary.

* Apparently [[tiller]] was developed before RBAC before the official control access method for Kubernetes and it came with a very open profile to make it easier to use. This made it very hard to configure in order to harden it
* Helm 3 is more Kubernetes-native since instead of using Tiller it relies on using the Kubernetes API and [[crd]]s
