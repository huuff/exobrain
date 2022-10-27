# `kubectl rollout`
A very useful subcommand of `kubectl` for managing [[deployment]]s. It has features like:

* `kubectl rollout history deploy «deployment»`: See the history of rollouts for a deployment
* `kubectl rollout status deploy «deployment»`: See the status of the current deployment
* `kubectl rollout restart deploy «deployment»`: Just restart the deployment with the current setting.
* `kubectl rollout pause deploy «deployment»`: Stop the current deployment
* `kubectl rollout undo deoloy «deployment»`: Rollback the previous rollout
