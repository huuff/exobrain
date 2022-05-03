# Taints and tolerations
A *taint* on a node prevents pods from being scheduled to it, unless that pod has a specific *toleration* for that taint. A taint is a triplet of key, value and effect. The key and value identify the taint, and the effect can be one of:
* `NoSchedule`: No pods will be scheduled to this node unless they tolerate it
* `PreferNoSchedule`: The scheduler will attempt not to schedule pods that don't tolerate the taint on this node
* `NoExecute`: No new pods will be scheduled but also the existing ones will get evicted.
