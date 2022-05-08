# Cluster Autoscaler (CA)
An interesting feature: when it notices that [[pod]]s can no longer be scheduled (they are in `pending` state), it automatically provisions a new node to run them. It can likewise remove nodes if there are more than necessary. It works especially well in cloud environments, where this can be done programmatically.

Some caveats are:
* More nodes might be needed even though usage is not at its limit because of [[taints-and-tolerations]], [[node-affinity]], [[pod-affinity]] or pod priorities
* There will be a significant delay to provisioning a new node
* There might be subtle interactions between the cluster autoscaler and the [[hpa]]
