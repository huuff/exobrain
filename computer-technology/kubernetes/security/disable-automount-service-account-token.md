---
tags: tip, caveat
---

# Disable `automountServiceAccountToken`
This setting is set to `true` by default in Kubernetes. Every pod is associated to a [[service-account]]. If none is provided, then the `default` one for the [[namespace]] is used. There are a lot of issues with this:
* Since most containers have no need for access to the [[kube-apiserver]], a service account is usually not specified and a lot of containers end up with the `default` service account, providing no isolation.
* Furthermore, this service account has read-write privileges on its namespace's resources and read-only privileges on all resources.
* The worst of all, is that with `automountServiceAccountToken` enabled, a token valid for exercising any of this' account privileges is mounted to `/var/run/secrets/kubernetes.io/serviceaccount`!

The conclusion is: with this option enabled, any compromised container can gain full read-write privileges on all of its namespace's resources and read privileges on all cluster resources.
