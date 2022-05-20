---
tags: comparison
---

# Kubernetes vs OpenShift
OpenShift is a commercial distribution of Kubernetes, there are some differences to take into account:

* A Kubernetes' [[namespace]] is called a **project** in OpenShift
* A Kubernetes' [[ingress]] is called a **routes** object in OpenShift. OpenShift's routes are always implemented by HAProxy, while there are a variety of ingress [[controller]]s for Kubernetes, and actually, OpenShift's routes predate Kubernetes' ingresses
* OpenShift is more secure by default than Kubernetes (check [[security]]). For example, OpenShift forces all workloads to run as non-root by default.
* OpenShift has an internal, centralized image registry, that helps to integrate some security best practices.
