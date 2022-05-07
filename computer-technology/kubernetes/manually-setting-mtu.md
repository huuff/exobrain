---
tags: how-to
---

# Manually setting the [[mtu]]
A correct MTU size is critical to network performance. Some Kubernetes network plugins try to deduce the best MTU size, but there are many caveats:

* If a previous network interface such as the [[docker/default-network|Docker's `docker0` bridge]] sets a small MTU, then Kubernetes will reuse it
* [[ipsec]] requires lowering the MTU due to the extra overhead from encapsulation, but Kubernetes won't take into account.

In any case, it's best to experimentally determine the best MTU size and provide it to the plugin via the `--network-plugin-mtu` argument
