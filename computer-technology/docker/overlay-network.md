# Overlay Network
A type of network (a driver?) for containers that allows seamless communication between containers running on different hosts. Under the covers, an overlay network cleverly takes advantage of [[vxlan]]s.

You can simply create an overlay network by doing:

```
docker network create -d overlay «network name»
```

## Lazy joining
In [[swarm-mode]] when a node is attached to an overlay network, it isn't immediately joined to it, only when a task is required to run on that node. This allows to reduce network gossip.

## Encryption
By default, Docker encrypts [[control-plane-vs-data-plane|control plane]] traffic only, but data plane traffic is unencrypted unless explicitly specified (at a performance cost)
