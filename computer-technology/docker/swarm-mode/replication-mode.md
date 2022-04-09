# Service replication mode
There are two modes:

* `replicated`: Creates the specified number of replicas and distributes them evenly across the cluster.
* `global`: A replica is run on every single node of the cluster.

Even in `replicated` mode, all services are reachable from any node through the [[ingress]]
