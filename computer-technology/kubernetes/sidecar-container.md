---
tags: pattern
---

# Sidecar container
An extemely common pattern in kubernetes that uses a container that runs alongside the main pod's container to provide some continuous utility to it. Some high-level tools like [[istio]] actually provide their functionality through injecting sidecar containers into all pods they manage.

There seems to be a proposal to actually elevate it from a pattern to a built-in Kubernetes features. It seems pretty reasonable considering how ubiquitous it is, and also, sometimes adding sidecar containers make pods more hard to manage (such as seeing logs, maybe kubernetes should be aware of what's the main container instead of forcing you to choose which one you want to see logs from every time)
