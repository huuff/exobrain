---
tags: tip, pattern
---

# Enabling persistence only on replicas
To prevent overloading your master with the costs of [[redis/persistence|persistence processes]], you can disable persistence in your master and enable it only in your [[redis/replication|replicas]] so, [[databases/durability]] is guaranteed while not making it a responsibility of the master.

==Of course, I guess this widens the window of time where writes are lost, since any writes that couldn't be replicated will definitely not be persisted==
