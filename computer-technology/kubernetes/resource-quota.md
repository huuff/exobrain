# `ResourceQuota`
Allows defining resource limits for a [[namespace]]. The presence of a `ResourceQuota` prevents creating objects that might violate it. Having a resource quota means that all created resources must have specified limits. You can provide defaults through a [[limit-range]].

It allows limiting the maximum number of some resources, such as [[service]]s, [[persistent-volume-claim]]s, etc. This might be useful to prevent unexpected costs from the cloud provider.

## Example
```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: compute-quota
spec:
  hard: 
    pods: 2
    requests.cpu: 1
    requests.memory: 20Mi
    limits.cpu: 2
    limits.memory: 2Gi
```
