# `LimitRange`
Specifies default resource limits and maximum limits for containers or pods. It can be useful to use in tandem with a [[resource-quota]], so you don't always have to explicitly declare requests and limits every time.
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
