---
tags: best-practice
---

# Have a default deny-all `NetworkPolicy`
Then, add separate [[network-policy|network policies]] to allow the kinds of traffic you need to allow. This way the only allowed traffic must be explicitly specified.

## Example
```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: default-deny-all
  namespace: {{ . | quote }}
spec:
  podSelector: {}
  policyTypes:
    - Ingress
    - Egress

```
