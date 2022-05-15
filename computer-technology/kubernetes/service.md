---
tags: index
---

# Service
An object that describes load-balances traffic to all [[pod]]s that provide some service. It manages what pods are available through [[endpoint]] objects. Pods are registered to the service through a `labelSelector`. It only performs load-balancing only at the [[osi-networking-model|layer 4]] level, so if you want more complex application-level features, you have to use an [[ingress]].

The available service types are:
* [[cluster-ip]]
* [[node-port]]
* [[load-balancer]]
* `ExternalName` for when you want to point a resource outside of the cluster.
