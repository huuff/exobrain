# Resources
This field in a containers `spec` allows specifying which hardware resources it uses or can use, there are two types:

* `requests`: These resources are always guaranteed to the pod and reserved for it
* `limits`: These are the maximum resources it can take

A container that exceeds its memory limits is restarted.

### Example

```yaml
resources:
  requests:
    cpu: "200m"
    memory: "10Mi"
  limits:
    cpu: "500m"
    memory: "25Mi"
```
