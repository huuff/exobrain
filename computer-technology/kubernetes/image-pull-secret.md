# Image pull secret
A [[secret]] that's used to login to a [[docker]] registry. They can be specified in a [[pod]] manifest with the `spec.imagePullSecrets` field.

### Example
```sh
kubectl create secret docker-registry my-image-pull-secret \
  --docker-username=«username» \
  --docker-password=«password» \
  --docker-email=«email»
```
