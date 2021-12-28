---
tags: how-to
---

# Set up a direct connection through layer 2 bridge using IP
Needed hard it for connecting a virtual machine with an IP on a different subnet than the host.

```
ip route add <gateway IP> dev <interface on which it should be reachable>
```

(Where the interface is configured with the appropriate virtual mac)  
Then:

```
ip route add default via <gateway ip>
```

[Source](https://serverfault.com/a/1046004/785043)
