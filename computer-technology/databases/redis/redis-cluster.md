# Redis Cluster
Redis' own solution for automatically sharding data across several Redis servers using a full mesh network topology. A normal Redis server can be launched in cluster mode and so it uses two ports to operate:

* Its normal port for client applications to use (e.g. `6379`)
* A port for cluster communication that's 10000 more than te previous one (e.g. `16379`)

The high port is used for failure detection, resharding, failover, etc.


