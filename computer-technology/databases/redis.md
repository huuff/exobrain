---
tags: index
---

# Redis
Redis is a primarily in-memory database. It's main definitory features are:

* It has a pretty simple interface through the [[redis/resp]] protocol. So simple it can be very ergonomically used through `telnet`
* It allows easy [[key-expiration]] and also using it as an LRU cache with [[redis/maxmemory]].
* It's single-threaded and thus trivially [[serializable]] (for a single database). For scaling it, it's even a nice idea to run several instances on the same computer to take advantage of extra cores.
* I alreay mentioned it, but really, how simple it is it's a very powerful asset.
* It's also very fast, although being in-memory is kind of cheating for a database, Redis also has very configurable [[databases/durability]] options that make it very fast but not very durable.
