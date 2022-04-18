---
tags: how-to
---

# `imagePullSecrets`
This is the recommended way of specifying a private Docker registry for cloud providers: Since the node is provisioned by the provider, you can't configure it to add the Docker credentials, but with `imagePullSecrets` you can specify the credentials for each [[pod]].

## How-to
First, create a secret with your credentials
```bash
kubectl create secret docker-registry --docker-server=«docker registry server» --docker-username=«username» --docker-password=«password»
```

Then, specify that secret as an `imagePullSecrets` property in the [[pod]] [[manifest]]:
```yaml
imagePullSecrets:
  - name: docker-registry
```
