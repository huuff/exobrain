---
tags: index
---

# Kubernetes' Security
==This file can act as a TODO for the stuff I need notes about==

(As of 1.24) It has really lame defaults:

* [[encrypt-secrets]]: Secrets are by default stored unencrypted in `etcd`.
* [[disable-automount-service-account-token]]: This is always enabled though it can be dangerous for a compromised container and almost never needed.
* Containers run as root by default (like in [[docker/root-default|in docker]])
* [[pod-security-policy]] was one way of preventing bad defaults and it got deprecated [in a careless way](https://www.macchaffee.com/blog/2022/psp-deprecation/)
* As kubernetes changes rapidly and is complex I'm unsure how current this is but: Kubernetes used no default [[seccomp]], [[apparmor]] or [[selinux]] policies, even though [[docker]] did, and you were using it as a runtime (but that's now deprecated)
