# Cluster federation
The art of managing several different clusters and treating them as a single unit.

There is a federation control plane that will present a single unified view of the system. The federated controller manager will redirect requests to the individual clusters' [[controller-manager]]s.

In practice, cluster federation is a very complex topic and it can't be entirely abstracted away. Without careful planning and configuration, a single request may incur in huge unexpected increases in latency.

Some solutions to this are:
* [[kubefed]]: It's the official (I think) solution for cluster federation, it's managed through the `kubefedctl` command, usually aliased to `kf`. KubeFed is not necessarily about cluster management, but more about increasing availability through [[federated-api-type|federated API types]]
* [[gardener]]: A very mature solution from SAP to federate clusters, aimed at cloud providers.
