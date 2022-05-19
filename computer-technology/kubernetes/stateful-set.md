# `StatefulSet`
`StatefulSet`s have only a few distinguishing properties that make them suitable for deploying stateful applications:
* Pods are given sequential names, and started in order: only after one pod is live is the next one started.
* They are scaled down in reverse sequence.
* They can be addressed individually by name behind a [[headless-service]]
* Pods that require a [[persistent-volume]] need to have a `persistentVolumeTemplate`. This specifies the [[persistent-volume-claim]]s the stateful set will create for each pod. These volumes are not deleted when the pod is deleted, and if a pod is deleted and readded, the same exact volume will be attached.

A stateful set is usually used with a [[headless-service]]

## "replicas"
It's unfortunate that the number of members is called `replicas` just as in a [[deployment]] since in a `SatefulSet`, every member has its own identity and might not really be a replica.
