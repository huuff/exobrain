# `kubectl rollout`
A very useful subcommand of `kubectl` for managing [[deployment]]s. It has features like:

* `kubectl rollout history «deployment»`: See the history of rollouts for a deployment
* `kubectl rollout status «deployment»`: See the status of the current deployment
* `kubectl rollout restart «deployment»`: Just restart the deployment with the current setting.
* `kubectl rollout pause «deployment»`: Stop the current deployment
* `kubectl rollout undo «deployment»`: Rollback the previous rollout
