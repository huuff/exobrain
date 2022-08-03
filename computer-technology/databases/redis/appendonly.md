# Append-Only File (AOF)
This is Redis' [[databases/wal]]. All writes go to the AOF, so that in the case of an unclean shutdown, the operations can be replayed from the AOF to restore the previous state of the server.

### Through configuration
Some options you can put into your Redis configuration file:
* `appendonly «yes|no»`: Whether or not to enable the append-only file.
* `appendfsync «always|everysec|no»`: The interval at which Redis writes new operations to the AOF. This can be fine-tuned to balance [[databases/durability]] guarantees with performance:
  * `always`: Write all operations to the AOF. The must durable but also the least performant.
  * `everysec`: Write only every second of operations. A nice balance between durability and performance. In case of unclean shutdown, we can only lose at maximum a second's worth of operations.
  * `no`: Let the operating system manage the buffering and flushing to the disk. This is the most performant, but also unpredictable and not especially durable.
