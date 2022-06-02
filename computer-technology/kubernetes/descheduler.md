# Kubernetes descheduler
An optional feature that runs as a [[job]]. It can be used to tidy up and defragment a cluster. It comes with a predefined set of policies such as:

* `RemoveDuplicates`: Ensures that only a singe [[pod]] from a [[replica-set]] is running in a single node. That is, that pods are as spreaded and distributed as much as possible.
* `LowNodeUtilization`: Evicts pods from overutilized nodes so they might be scheduled to less utilized ones.
* `RemovePodsViolatingInterPodAntiAffinity`: Evict pods violating [[pod-affinity]] rules, this can happen when these are changed after the pod is scheduled.
* `RemovePodsViolatingNodeAffinity`: Same as the previous one, but for [[node-affinity]]
