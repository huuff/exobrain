---
tags: caveat
---

# Don't connect directly to config servers
You cannot take the chance of accidentaly changing or removing data from them, as it's pretty important. You should always connect through `mongos` and access the configuration through the `config` database. This way, `mongos` protects you from silly mistakes and ensures any changes are properly propagated to all replicas.
