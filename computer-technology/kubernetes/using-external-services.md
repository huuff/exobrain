---
tags: how-to
---

# Using external services
There are some approaches to this

### Selector-less services for stable IP addresses
This means that the [[service]] won't point to any [[pod]]s, but you can manage the [[endpoint]] objects yourself to point to external resources.

#### Example
The service:

```yaml
apiVersion: v1
kind: Service
metadata:
  name: external-service
spec:
  ports:
    - protocol: TCP
      port: 3306
      targetPort: 3306
```

The endpoints:
```yaml
apiVersion: v1
kind: Endpoints
metadata:
  name: external-service # This has to match the service name!
subsets:
  - addresses:
      - ip: 1.2.3.4
    ports:
      - port: 3306
```

### [[cname]]-based services for stable DNS names
You can point a service to an external address using the `ExternalName` type

```yaml
apiVersion: v1
kind: Service
metadata:
  name: external-service
spec:
  type: ExternalName
  externalName: external.service.com
```
