# `PersistentVolumeClaim`
A request from a [[pod]] to allocate a [[persistent-volume]]. Kubernetes tries to find a matching [[persistent-volume]] that can satisfy the requested resources by taking into account:
* It will try match the smallest persistent volume that can satisfy the claim
* A specific [[storage-class]] can be requested
* Labels also allow further specification

Note that there is no way to allocate a specific persistent volume by name.
