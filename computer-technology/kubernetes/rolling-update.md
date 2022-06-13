# `RollingUpdate`
It updates a few pods at a time, creating new pods in the updated version while removing older ones little by little. It has a few important settings:

* `maxUnavailable` the maximum number of pods that will be unavailable during the rollout. The rollout will scale the old [[replica-set]] to remove the `maxUnavailable` pods until all pods are replaced.
* `maxSurge` the maximum number of pods that can be above the specified replica number. The rollout will scale the new [[replica-set]] by this amount until all pods are replaced.
* `minReadySeconds` allows specifying some delay to wait after a pod has become ready (as per the [[readiness-probe]]) to ensure it won't crash soon after
* `progressDeadlineSeconds` sets a maximum duration in seconds for the deployment so it gets marked as failed if it exceeds this time. It's important to note that this is the timeout for each step in the deployment, not the whole process.

### Example
A deployment with `maxUnavailable` set to `1` and `maxSurge` to `2` can have one pod more than the specified number of `replicas`. Two of these pods will be on the newer version, while, during the process, pods from the older version will be removed one by one.

## Percentages
It's important to note that `maxUnavailable` and `maxSurge` can take either absolute numbers of percentages. It's generally preferred to use percentages since there will keep being proportional to the `replicas` number if that changes.

But there are some cases where absolute number will be preferred, such as specifying only `1` `maxUnavailable` pod.

## Deployment strategies with `RollingUpdate`
* The `Recreate` [[deployment]] strategy is the same as setting `maxUnavailable: 100%`
* Setting `maxSurge: 100%` is equivalent to a [[blue-green-deployment]]. All of the new pods will be created, and then the older ones will be removed.

## HA by default
Kubernetes will always try to make the system as available by default which means that `maxSurge` will be created before `maUnavailable` are removed.

## A caveat for databases
Obviously, if two instances of two different versions are running at the same time and using the same database, it means that the database schema must support both versions of the application.
