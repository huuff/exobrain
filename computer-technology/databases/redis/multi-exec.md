# `MULTI` ... `EXEC`
Sort-of transactions for Redis. This just groups a series of commands so they are executed always together. This means that no other process can run commands whose execution gets interleaved with those we declare in `MULTI` ... `EXEC`. This takes advantage of Redis single-threaded nature.

### Example
```redis
MULTI
SET a 10
INCRBY a 1
GET a
EXEC
```

`a` is guaranteed to be `11` since no commands can get between the `SET`, `INCRBY` and `GET`.

### Caveats
* Note that there is no way of making any decisions inside the `MULTI`. Check [[redis/watch]] for optimistic transactions.
* Note that since these commands are all run in a sequence by Redis at the same time, there's no way for us to make any decisions in between them (Unless we use [[redis/lua-scripting]]). This means that we may check (in application code) wether a value is above `0` to decrease it, and then decrease it. But nobody can guarantee that a vale
* Also, Redis `MULTI ... EXEC` operations don't preserve [[databses/acid|atomicity]], which means that, if during the transaction a single command fails, Redis will blissfully keep executing the rest of commands after it.
