# `kubectl-wait`
A nice command to wait for a condition to be true

### Example
```sh
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app-kubernetes.io/component=controller \
  --timeout=90s 
```
