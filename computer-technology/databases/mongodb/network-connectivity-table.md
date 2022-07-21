---
tags: tip
---

# Table of required network connections among MongoDB services
You might want to set up a firewall but wonder which services should be able to connect to which services. This table from [[mongodb-the-definitive-guide]] comes in handy:

(Columns are "from", rows are "to")

|         |`mongos`    |Shard       |Config server|Client         |
|---------|------------|------------|-------------|---------------|
|`mongos` |Not required|Not required|Not required |Required       |
|Shard    |Required    |Required    |Not required |Not recommended|
|Config server|Required|Required|Not required|Not recommended|
|Client|Not required|Not required|Not required|Not MongoDB related|

* Required: MongoDB will likely not work without this
* Not required: The components can never talk in that direction, so no connectivity is required
* Not recommended: Connectivity is possible, but unadvised, for example, a client should never connecto the [[config-server]]s or shards directly, only through [[mongos]].
