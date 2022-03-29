# `mongos`
A `mongos` is a process that we use to access MongoDB data that makes [[sharding|sharded clusters]] transparent to the user. `mongos` knows which node contains each shard (through the [[config-server]]s) and routes our requests to the appropriate ones.
