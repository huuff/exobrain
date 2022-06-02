# `ClusterIP`
A `type` of [[service]]. Provides load balancing, but contrary to [[load-balancer]], it distributes the load evenly but inside the cluster.

When a service is declared of this type, it will get a stable virtual IP. This IP is, however, not associated to any network interface, and is only routed to pods through the [[kube-proxy]]. This means that it cannot be reached by ICMP (the proxy won't set rules for routing ICMP) and thus you cannot `ping` it. Of course you can always connect to your service through TCP.
