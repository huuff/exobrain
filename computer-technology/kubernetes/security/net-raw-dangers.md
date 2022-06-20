---
tags: caveat
---

# Dangers of `CAP_NET_RAW`
This [[linux/capability]] allows opening raw sockets. [[runc]] has it enabled by default. There are some associated dangers:

* It allows generating UDP traffic which bypasses TCP [[service-mesh|service meshes]] like [[istio]], so its network policies might not be effective.
* There's already a [found vulnerability that enables DNS poisoning](https://blog.aquasec.com/dns-spoofing-kubernetes-clusters) that, as far as I know, won't get fixed.
