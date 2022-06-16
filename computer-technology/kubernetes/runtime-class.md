# `RuntimeClass`
This is the way Kubernetes allows for using different [[container/runtime|runtimes]] to be used.

### Example
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  runtimeClassName: firecracker
```
