# Source address translation in Kubernetes
In a [[service]] using a [[node-port]] type, the source IP address will get NAT'd to that of the node. Otherwise, when the request is forwarded to another node, there'll be no way to return the response to the appropriate node that forwarded it, so the receiving node would return packets directly to the client, who would drop them since they didn't initiate a connection with that node.

## Problems
* Obviously, your application running in a pod might want to know the IP of the real client, but it can't be known when using SNAT
* Since the origin IP is always that of a node, you can't write [[network-policy|network policies]] that filter on the origin.

## Solutions
* Use a [[load-balancer]]? I think this should solve it correctly (but it's pricey)
* Use an [[ingress]]? I'm unsure whether this actually fixes it, in any case, the ingress might add the `X-Forwarded-For` header
* Use `externalTrafficPolicy: Local` on the service. This will ensure that a request will only be routed to a pod running on the same node. This however, will mean that you might have to ensure that pods are running on each node, such as through a [[daemon-set]]
* Use a network plugin that supports node-port-aware extensions.
