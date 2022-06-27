---
tags: best-practice
---

# Have a default deny-all `NetworkPolicy`
Then, add separate [[network-policy|network policies]] to allow the kinds of traffic you need to allow. This way the only allowed traffic must be explicitly specified.

### Example
```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: default-deny-all
  namespace: default
spec:
  podSelector: {}
  policyTypes:
    - Ingress
    - Egress

```

## Allowing DNS
The default deny-all policy is maybe too strict to be useful. Pods will be unable to contact control plane pods such as DNS. You can add at the bare minimum a policy that allows all pods to contact DNS services:

```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-dns-access
  namespace: default
spec:
  podSelector:
    matchLabels: {}
  policyTypes:
  - Egress
  egress:
  - to:
    - namespaceSelector:
        matchLabels:
          kubernetes.io/metadata.name: kube-system
      podSelector:
        matchLabels:
          k8s-app: kube-dns
    ports:
    - protocol: UDP
      port: 53
```
