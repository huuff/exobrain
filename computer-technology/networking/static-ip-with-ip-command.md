---
tags: how-to
---

# Setting up an static IP with the `ip` command
First, add the static IP

```
sudo ip addr add <ip> dev <interface>
```

Then add the gateway

```
sudo ip route add default via <gateway ip>
```

Or check using [[ip-layer2-bridge]].  

Now you should be able to ping the gateway

```
ping <gateway ip>
```
