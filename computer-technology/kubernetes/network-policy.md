# `NetworkPolicy`
A kind of firewall for Kubernetes [[pod]]s. With it you can specify explicitly which paths can be followed (i.e. which services can communicate with which other services and in which ways). Its main parts are

* `podSelector`: To specify what pods does this policy affect (such as with a `labelSelector`)
* `ingress`: List of rules to apply to traffic entering the pod
* `egress`: List of rules to apply to traffic exiting the pod
* `policyTypes`: List of policies that are to be applied (`ingress`, `egress` or both). This must include `egress` for `egress` policies to work. I don't know why this is necessary instead of just considering each list.
