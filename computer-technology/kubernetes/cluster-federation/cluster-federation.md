# Cluster federation
The art of managing several different clusters and treating them as a single unit.

There is a federation control plane that will present a single unified view of the system. The federated controller manager will redirect requests to the individual clusters' [[controller-manager]]s.

In practice, cluster federation is a very complex topic and it can't be entirely abstracted away. Without careful planning and configuration, a single request may incur in huge unexpected increases in latency.

The key to federated cluster management (least using the KubeFed API) is the `kubefedctl` command, usually aliased to `kf`
