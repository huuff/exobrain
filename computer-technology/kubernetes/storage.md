---
tags: index
---

# Storage in Kubernetes
There are three main resource `Kind`s related to storage in Kubernetes

* [[persistent-volume]] is an actual storage allocated for usage by [[pod]]s.
* [[persistent-volume-claim]] is a request by a pod for storage
* [[storage-class]] allows clasifying persistent volumes, and also as an abstraction to a cloud provider volume provisioning API for automatic creation of persistent volumes

## Why `PersistentVolume` and `PersistentVolumeClaim`?
This decouples the pod from the actual volume. There can be many types of volumes such as different cloud-provided variations or on-prem versions, a pod could specify it directly inline, but that would couple it to that specific kind of volume.
