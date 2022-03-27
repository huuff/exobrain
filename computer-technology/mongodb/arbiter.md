# Arbiter
Arbiter's sole purpose is to act as a tie-breaker in elections. They are a lightweight process that can be spawned in a lower-end machine that prevents triggering multiple re-elections when the amount of nodes is even. The variant of the [[raft-protocol]] MongoDB uses is modified to accommodate for arbiters.

## When are they recommended to use
Usually, they are advised against. There are some cases which might have a justification for using them:

* It's prohibitively expensive to run 3 nodes. 1 is too few, and 2 is against the rule of [[always-odd-nodes]]. Therefore you can use an arbiter in a lower-end machine. But also consider [[budget-backup-replication]]
* You have a large even number of nodes, an arbiter can be used to break ties and prevent re-elections. However, it's recommended to instead add another replica to make the number odd, even if it's a [[hidden-replica-set-member]]

However, it may be prohibitive for you to run 3 replicas, running 2 is dangerous since it might trigger many re-elections and are prone to [[split-brain]] conditions. Therefore your best choice is to use a cheap third location to run an arbiter.

## Example
You can add an arbiter with:

```js
rs.addArb("server-5:27017")
```

Alternatively:

```js
rs.add({ "_id": 4, "host": "server-5:27017", "arbiterOnly": true})
```
