---
tags: how-to
---

# Running as non-root
As of 1.24, Kubernetes does not support [[linux/user-namespace|user namespaces]] (targeted for 1.25, I believe), but offers some tools to run containers as non-root under [[security-context]]:

* Set `runAsNonRoot` to `true`
* Set `runAsUser` to a nonzero value.
* Set `runAsGroup` to nonzero.
* Set `fsGroup` to nonzero.
* Set `allowPrivilegeEscalation` to `false`. Without this, the settings for running as non-root won't work.
