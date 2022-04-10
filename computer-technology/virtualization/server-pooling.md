# Server pooling
A virtualization technique to ensure [[high-availability]]. Instead of installing virtual machines directly on virtualized hosts (for example, running a bare-metal [[hypervisor]]), these hosts are added to a cluster of virtualized hosts.

When a virtual machine is deployed on a server pool, some cluster management software decides which host is better suited for it and deploys in it, transparently to the user. This allows for some automated features such as:
* Replication of virtual machines and failover
* Load balancing of machines
