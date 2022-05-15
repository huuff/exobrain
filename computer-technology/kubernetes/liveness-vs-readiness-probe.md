---
tags: comparison, caveat, tip
---

# Liveness vs Readiness probes
Kubernetes provides both [[liveness-probe]]s and [[readiness-probe]]s, so you should know which one to use:

* A failed liveness probe restarts the [[pod]]
* A failed readiness probe removes the [[pod]]'s endpoint from any [[service]] that uses it.

You should be very careful with liveness probes, since a pod that's failing its liveness probes due to load will likely not improve the situation at all if restarted. So most of the time readiness probes are a safer option.
