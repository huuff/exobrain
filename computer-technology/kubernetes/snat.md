# Source address translation in Kubernetes
In a [[service]] using a [[node-port]] type, the source IP address will get NAT'd to that of the node. Otherwise, when the request is forwarded to another node, there'll be no way to return the response to the appropriate node that forwarded it. 

## Solutions
* Use a [[load-balancer]]? I think this should solve it correctly (but it's pricey)
* Use an [[ingress]]? I'm unsure whether this actually fixes it, in any case, the ingress might add the `X-Forwarded-For` header
* Use `externalTrafficPolicy: Local` on the service. This will ensure that a request will only be routed to a pod running on the same node. This however, will mean that you might have to ensure that pods are running on each node, such as through a [[daemon-set]]
