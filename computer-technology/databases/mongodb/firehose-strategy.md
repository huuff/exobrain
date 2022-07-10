---
tags: pattern
---

# Firehose strategy
Suppose you have a server in your cluster that is much more powerful than the others, so you want it to handle proportionally more load than the rest. You could make it handle all inserts and make the balancer move older chunks to other clusters. This would give lower-latency writes. To do it:

1. Pin the highest chunk to the more powerful shard:
```js
sh.addShardToZone(«shard-name», "10x")
```

2. Pin the current value of the ascending key through infinity to that shard, so all new writes go to it:
```js
sh.updateZoneKeyRange(«db.collection», { "_id": ObjectId() }, { "_id": MaxKey }, "10x")
```

However, that will make all reads from now to infinity to go to that shard. We can solve that by writing a regularly-scheduled job that updates the range such as:

```js
use config;
var zone = db.tags.findOne({"ns": «db.collection, "max": { «shard-key»: MaxKey }})
zone.min.«shard key» = ObjectId()
db.tags.save(zone)
```
