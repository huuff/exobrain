---
tags: how-to
---

# How to create a docker repository secret
Cast the following incantation in your `.docker` repository to upload your secrets:

```
kubectl -n «namespace» create secret generic «secret name» --from-file=.dockerconfigjson=$PWD/config.json --type=kubernetes.io/dockerconfigjson
```
