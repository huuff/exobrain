---
tags: how-to
---

# How to disable firewall with `iptables`
Not really a solution for anything, but useful enough for experimenting with Kubernetes:

```
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
```
