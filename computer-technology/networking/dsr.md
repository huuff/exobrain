# Direct Server Return
It allows load-balanced traffic to flow directly back to the client without passing through the load balancer. It has several benefits:

* The overall network latency is decreased since there's one less hop
* The CPU load on the load balancer since it doesn't have to deal with return traffic
* In a cluster, [[east-west-vs-north-south|east-west traffic]] is reduced due to less forwarding.
