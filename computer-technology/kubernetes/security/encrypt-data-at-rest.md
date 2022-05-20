---
tags: best-practice
---

# Enable at-rest data encryption on `etcd`
By default, any secrets and data are stored in plaintext in `etcd`. To enable encryption at rest you have to pass an `--encryption-provider-config` flag to the API server.

### Example configuration
```yaml
apiVersion: apiserver.config.k8s.io/v1
kind: EncryptionConfiguration
resources:
  - resources:
      - secrets
    providers:
      - aescbc:
          keys:
            - name: key1
              secret: $(head -c32 /dev/urandom | base64)
      - identity: {}
```
