# `LoadBalancer`
A `type` of [[service]]. Creating a service of this type makes the [[cloud-controller]] provision an external load balancer (this might incur additional costs). The load balancer distributes load at the node level evenly, no matter how many pods are on each node.
