# Pod
The unit of workload in Kubernetes. A pod is composed of several containers which share the same [[linux/namespace|network namespace]] (therefore, they have the same IP) and UTS namespace (therefore, they can communicate through inter-process communication). All containers in a pod are deployed together to the same node.

Actually, behind the scenes, the pod is composed of the [[pause-container]] and any other containers provided in the pod's manifest.

### Why pods?
Makes it easy to separate into several containers applications that are meant to be together but that have different operational requirements, for example, their resource requirements might be very different and thus we want to isolate them and specify each one, so a [[sidecar-container]] cannot starve from resources its main container.

### When to put several containers in a pod?
Only when these containers have a truly simbiotic relationship. They make no sense separated, must share information such as [[persistent-volume|volume]]s and must be scaled together.

For example, it makes no sense to run an application together with its database in a pod. The database doesn't need to be in the same node and it doesn't make sense to scale it always to the same number of replicas as the main application.

In general, a good heuristic is to question yourself whether these applications can work when running in different nodes. If the answer is no, then they belong in the same pod.
