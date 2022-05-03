# Local volume
A local volume is like a `HostPath` volume, but it's persistent across restarts. They provide [[node-affinity]] annotations to simplify binding specific pods to them, so it's a nice feature to support [[stateful-set]]s.

==Actually I think that what makes a local volume is specifying the `provisioner: kubernetes.io/no-provisioner?`? not sure tho==

### Example
You'll need a [[storage-class]] to provision local volumes:

```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: local-storage
provisiones: kubernetes.io/no-provisioner
volumeBindingMode: WaitForFirstConsumer
```

