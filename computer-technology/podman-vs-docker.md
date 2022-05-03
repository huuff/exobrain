---
tags: comparison
---

# Podman vs Docker
[[podman]] is actually much better than Docker

* Podman is daemonless. This has several benefits:
  * [[docker/docker-build-dangers|Can build containers without superuser privileges]]
  * User actions can be audited better since they are not performed by the daemon but by individual users
  * Attack surface is reduced since there is one less server constantly running
* Podman is rootless. In docker [[docker/root-default|containers are run as root by default]] and [[docker/user-id-space-is-shared|user namespaces are not used]]. A whole range of dangerous exploits are mitigated by this.
* It's much less monolithic than docker and doesn't contain the associated bloat with, for example, [[docker/swarm-mode]]
* Not really all that important, but podman supports [[pod]]s natively, which makes for less of an impedance when making the switch to [[kubernetes]]
* Also not really an improvement over docker but: podman's interface is fully compatible with docker's. You can even just alias `docker` to `podman` and reap all of the benefits seamlessly.
