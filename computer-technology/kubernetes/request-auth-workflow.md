# Request auth. workflow
A request that arrives at the API server passes through several steps before being admitted into the cluster:

* Authentication, either by a [[service-account]]'s token, or a [[certificate-authentication]], for example.
* Authorization, which main mechanism is now [[rbac]]
* Validation or mutation through [[admission-controller]]s
