# `DaemonSet`
These are used to deploy system daemons that provide node-wide capabilities. Conceptually they are similar to a [[replica-set]] but they also ensure that there is exactly one pod for every node.

## Ignored by the [[kube-scheduler]]
Interestingly, since these pods will be deployed always one to each node, a `DaemonSet` completely bypasses the scheduler. I think this means that they won't care about [[taints-and-tolerations|taints]] or [[node-affinity|node affinities]]. ==but I'm not sure==
