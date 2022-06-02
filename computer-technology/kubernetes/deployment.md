# Deployment
One of the most important resource kinds in Kubernetes. A deployment builds on top of a [[replica-set]] and adds some "rollout" features. It allows deploying a new version incrementally, and using probes to check that the deployment of a new version is going fine. Likewise, it allows seamlessly rolling back to a previous version.

## Strategies
The `.spec.strategy` allows specifying a rollout strategy from the following options:

### `Recreate`
The simplest one. It just removes all pods and then creates them using a new version. Obviously this will cause downtime.

### ![[rolling-update]]
