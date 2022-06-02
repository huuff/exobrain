# Kubernetes favors availability over consistency
Kubernetes primitives such as [[replica-set]] favor availability over consistency. This means that the `ReplicaSet` runs with "at least" semantics rather than "at most", this means that when a node becomes unhealthy and the pods running on it are uncommunicated, Kubernetes will decide to start a new one in a different node without really confirming whether the old one is actually running.

When we configure a [[replica-set]] with a `replicas: 1` property, kubernetes only ensures that there is at least one replica at all times, but occassionally, there can be two. This same kind of issue can happen when doing [[rolling-update]]s, during the deployment there can be more than the intended number of replicas to ensure availability.
