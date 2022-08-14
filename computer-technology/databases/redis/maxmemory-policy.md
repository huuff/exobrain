# `maxmemory-policy`
This is Redis' [[lru]] configuration that allows automatically expiring keys when memory reaches a certain threshold. Some options are:

* `noeviction`: Redis just refuses any further writes when `maxmemory` is reached.

Some that use Redis [[redis/lru-algorithm|algorithm for LRU]]:
* `volatile-lru`: Keys are removed only if they have a set TTL.
* `allkeys-lru`: Like `volatile-lru`, but may expire any key, not only those with TTL. However, it takes keys' TTL into consideration

Some that are just random:
* `volatile-random`: Like `volatile-lru`, but removes randomly, not using Redis' algorithm
* `allkeys-random`: Like `allkeys-lru`, but random.
