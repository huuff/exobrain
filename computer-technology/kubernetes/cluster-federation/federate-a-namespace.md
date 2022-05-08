---
tags: how-to
---

# Federating a namespace
Since [[namespace]]s are resources like any other, they can also be federated. This is especially useful since namespaces are generally used to organize groups of resources that belong together, so they are good targets to federation.

The process is slightly different to [[federate-a-resource]], since namespaces are the only resources that contain other resources. The key is using the `--content` flag to also federate all of the namespace's contents. You can also use the `--skip-api-resources` to prevent federating some specific reosurce types.

### Example
```sh
kubefedctl federate namespace awesome-namespace --contents --skip-api-resources "secrets,apps"
```
