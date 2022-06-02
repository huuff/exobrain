# `kubectl logs --previous`
Hugely useful. When you run `kubectl logs` you only get them from the currently running [[pod]]. However, since Kubernetes self-heals, if a previous container failed, a new one will be started and you won't be able to troubleshoot what happened. Adding the `--previous` flag, returns the logs from the last pod.
