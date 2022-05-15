# `kube-scheduler`
The scheduler is only responsible of selecting what node should a [[pod]] run on. It only does this in a very simple manner at node creation time:

* Watch the API for [[pod]]s creation
* Selects a node by following some criteria
* Updates the `nodeName` field

And that's all. Acutally the scheduler only populates the `nodeName` field. I assume that, based on this, it's the [[kubelet]] who is responsible of actually running the pod.

The process of selecting a node consists of two phases:
1. Filters any nodes that are not capable of running the pod (due to lack of resources, taints or whatever)
2. Ranks the remaining nodes in order of which one is the most suitable
