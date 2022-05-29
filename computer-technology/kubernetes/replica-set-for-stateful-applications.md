---
tags: caveat, antipattern
---

# Using a `ReplicaSet` for a stateful application
It's a bad idea:

* Since [[availability-over-consistency|Kubernetes favors availability over consistency]], you can't enforce "at most" semantics for replicas of a service. This means that even if you only set `replicas: 1`, more than one instance might be running at some point in time, which can be dangerous for maintaining consistency in database applications. [[stateful-set]]s solve this by orderly starting and shutting down pods.
* [[persistent-volume-claim]]s won't work as expected with a [[replica-set]]: if you declare three replicas with a volume claim, all of them would use the same `PersistentVolume` which is most likely not what you need. [[stateful-set]]s solve this by using a persistent volume claim template, so a new claim is created for each instance, instead of one for all of them.
