---
tags: tip
---

# Assign an `ImagePullSecret` to a `ServiceAccount` so you can avoid putting it in the pod specification
This way, the `ImagePullSecret` will be used by all pods that have that [[service-account]] associated without coupling your pod specification to the [[docker]] login secret. This can even be added to the `default` service account so all [[pod]]s in a [[namespace]] automatically get the image pull secret.

### Example
```sh
kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "«secret name»"}]}'
```
