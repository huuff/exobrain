# Horizontal Pod Autoscaler (HPA)
A resource that allows specifying some CPU and memory thresholds so more replicas of a [[pod]] are created when needed. The HPA requires the [[metrics-server]] to monitor the required metrics to decide whether to scale.

## Scaling up and down delays
Kubernetes doesn't immediately scale up and down when thresholds are reached, instead there are delays before making a decision in order to prevent scaling up and down too many times in a row when utilization is around the threshold.

Kubernetes can figure out how much to wait before scaling up, but the delay for scaling down is left to the cluster administrator through the `--horizontal-pod-autoscaler-downscale-stabilization` flag of [[controller-manager]].

## Caveats
You should set appropriate values for `minReplicas` and `maxReplicas`:
* If there is no `minReplicas`, when there is a lull in activity all pods might get terminated and thus have to get recreated an re-scheduled when requests come again
* If there is no `maxReplicas`, a surge in requests (or a DDoS attack) will make the HPA keep creating pods until depriving the cluster of resources. This might also end in additional costs if using a cloud provider.
