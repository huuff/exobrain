# `topologyKey`
I always wonder was this property means for [[pod-affinity]]. Basically, when this property is provided, the [[pod]]s are scheduled only to nodes that share the given label with the same value (as the pod)

### Example
In the following example, pods with the `confidential: high` label will have a `security-zone` label, and will be scheduled to nodes with the same label and value.

```yaml
podAffinity:
  requiredDuringSchedulingIgnoredDuringExecution:
    - labelSelector:
        matchLabels:
          confidential: high
      topologyKey: security-zone
```
