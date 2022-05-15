# Default scheduling behavior
By default, the [[kube-scheduler]] takes into account:
* Split pods from the same [[replica-set]] or [[stateful-set]] across nodes.
* Schedule [[pod]]s to nodes that have enough resources to satisfy their requirements
* Balance out the overall node resource usage.
