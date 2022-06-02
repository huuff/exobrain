# Quality of Service (QoS)
A quality of service is associated to every [[pod]] based on its [[resources]]:

* *Best Effort*: A pod with no requests nor limits. Such a pod is considered as the lowest priority and it's killed as soon as necessary to reap system resources.
* *Burstable*: A pod whose limits are different to its requests. When resources are needed, it's killed if no other *Best effort* pods are available to kill.
* *Guaranteed*: Those pods that follow the [[limits-as-requests|setting limits as requests best practice]]. They are guaranteed not to be killed before any *Best effort* or *Burstable* pods.
