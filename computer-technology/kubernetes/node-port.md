# `NodePort`
A `type` of [[service]]. It exposes a port on each node of the cluster to direct the traffic to the pods selected by the service. It's probably the easiest way of exposing [[pod]]s to the internet from the cluster.

### How it works
The [[kube-proxy]] on each node is responsible for receiving traffic and load balancing it across all pods of the service. There are two types of [[nat]] in action in the process:

* The node's IP and port are DNAT'd to the pod's IP and service port
* The original client IP is SNAT'd into the node's IP (See [[kubernetes/snat]])
