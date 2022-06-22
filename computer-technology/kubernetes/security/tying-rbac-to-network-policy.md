---
tags: how-to
---

# Tying RBAC to network policies
Since [[pod]]s can have a [[service-account]] associated to them, you can control a [[network-policy]] based on the labels associated to a service account, and use [[rbac]] to limit which users can set labels on service accounts. It's a two step process:

* RBAC can be used to control label assignments to service accounts
* A label-based service account selector controls network access

This allows a clean split of responsibilities between a security team and individual microservice teams. For example:

* You could give the security team RBAC permissions to manage network policies at a cluster-wide scope, so they can define high-level policies such as a [[deny-all-network-policy]].
* Give each microservice team RBAC permissions to define network policies inside their own namespace, so they can define their own fine-grained policies.

### Example
In this example, pods with the `intern` service account can only communicate with pods labeled with `role: intern`. (This example uses calico's network policies, which are more powerful than the standard ones)

```yaml
apiVersion: projectcalico.org/v3
kind: NetworkPolicy
metadata:
  name: restrict-intern-access
  namespace: prod-engineering
spec:
  serviceAccountSelector: 'role == "intern"'
  ingress:
    - action: Allow
      source:
        serviceAccounts:
          selector: 'role == "intern"'
  egress:
    - action: Allow
      destination:
        serviceAccounts:
          selector: 'role == "intern"'
```
