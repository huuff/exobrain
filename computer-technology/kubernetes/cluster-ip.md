# `ClusterIP`
A `type` of [[service]]. Provides load balancing and service discovery for pod-to-pod traffic inside the cluster.

When a service is declared of this type, it will get a stable virtual IP. This IP is, however, not associated to any network interface, and is only routed to pods through the [[kube-proxy]]. This means that it cannot be reached by ICMP (the proxy won't set rules for routing ICMP) and thus you cannot `ping` it. Of course you can always connect to your service through TCP.

### How it works
For `ClusterIP` services, `kube-proxy` uses [[networking/nat|DNAT]] to map connections to the service's Cluster IP to the pods backing it. The mapping is then reversed for return packets. 

The mapping is done without changing the source IP address, and thus, the destionation pod sees that the packed has originated from the client pod.
