# `LimitRange`
Specifies default resource limits and maximum limits for containers of pods. It's like a [[resource-quota]] but on the container/pod level.

### Example
`defaultRequest` defines the request (a.k.a. minimum reserved resource at all times) and `default` specifies the limit ==I find this confusing==

```yaml
apiVersion: v1
kind: LimitRange
metadata:
  name: limits
spec:
  limits:
    - default:
        cpu: 400m
        memory: 5Mi
      defaultRequest:
        cpu: 400m 
        memory: 5Mi
      type: Container
```
