---
tags: caveat
---

# Dangers of hosting `etcd` as pods in the cluster
`etcd` can be run in several ways:
* A separate cluster
* A systemd service on the control plane nodes
* [[pod]]s inside the cluster

Running it as pods inside the cluster seems like a sensible choice because that makes it manageable through the Kubernetes API and streamlines it with all other managed services.

This, however, has the highest risk profile, since running `etcd` inside the cluster exposes its pods through the [[cni]] network. An attacker that gets into the cluster that can then exploit a vulnerability on `etcd` could compromise the entire cluster through `etcd` tampering.

## Mitigations
* Run `etcd` outside of the cluster
* Firewall `etcd` (Through [[network-policy|network policies]]?) so that it's only accessible for the [[api-server]].
* [[encrypt-data-at-rest]]: Can prevent exfiltration of secrets and [[reduce-the-blast-radius]]
