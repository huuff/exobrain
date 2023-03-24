---
tags: how-to
---

# Set up a direct connection through layer 2 bridge using IP
Needed hard it for connecting a virtual machine with an IP on a different subnet than the host.

```
ip route add <gateway network IP>/<mask> dev <interface on which it should be reachable>
```


(Where the interface is configured with the appropriate virtual mac)  
Then:

```
ip route add default via <gateway ip>
```

Do not forget to also set the subnet mask! Since, if you're doing this, it's likely that the gateway is in another subnet, then it's probably `/32`

[Source](https://serverfault.com/a/1046004/785043)

## For Hetzner
You can see the gateway IP by hovering the IP in robot. You can also see the netmask there (though you have to convert it to the `/«postfix»` notation). Note that when adding the route (first command above) you must add the IP of the network (which is surely the IP of the gateway minus one?)
