---
tags: how-to
---

# Set up a direct connection through layer 2 bridge using IP
Needed hard it for connecting a virtual machine with an IP on a different subnet than the host.

```
ip route add <gateway IP>/<mask> dev <interface on which it should be reachable>
```

(Where the interface is configured with the appropriate virtual mac)  
Then:

```
ip route add default via <gateway ip>
```

Do not forget to also set the subnet mask! Since, if you're doing this, it's likely that the gateway is in another subnet, then it's probably `/32`

[Source](https://serverfault.com/a/1046004/785043)
