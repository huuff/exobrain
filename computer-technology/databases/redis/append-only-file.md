---
tags: definition, how-to
---

# Append-Only File (AOF)
This is Redis' [[databases/wal]]. All writes go to the AOF, so that in the case of an unclean shutdown, the operations can be replayed from the AOF to restore the previous state of the server.

### Through configuration
Some options you can put into your Redis configuration file:
* `appendonly «yes|no»`: Whether or not to enable the append-only file.
* `appendfsync «always|everysec|no»`: The interval at which Redis writes new operations to the AOF. This can be fine-tuned to balance [[databases/durability]] guarantees with performance:
  * `always`: Write all operations to the AOF. The must durable but also the least performant.
  * `everysec`: Write only every second of operations. A nice balance between durability and performance. In case of unclean shutdown, we can only lose at maximum a second's worth of operations.
  * `no`: Let the operating system manage the buffering and flushing to the disk. This is the most performant, but also unpredictable and not especially durable.

### Rewritting/compacting
Append-only files can get quite large. Every write to the database causes a write to it (even deletes!), so it grows constantly. Fortunately, there exists a process of rewritting/compacting AOFs so that any redundant operations are removed. Some ways to trigger it are:

* Through the `BGREWRITEAOF`, which, like `BGSAVE`, will fork the process and rewrite and compact the AOF.
* Through configuration, the `auto-aof-rewrite-percentage «percentage»` and the `auto-aof-rewrite-min-size «size»«unit»` will respectively automatically rewrite the AOF when it has grown by `«percentage»`% and only if it takes more than `«size»«unit»` 
