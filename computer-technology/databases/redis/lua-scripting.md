# Lua Scripting in Redis
Redis can execute Lua scripts, this can be done in two ways primarily ==though I think there is some new, better way for Redis 7? (functions), haven't investigated these much tho==

Lua scripts are especially useful because they run entirely in the server and in an isolated way (a single script runs until completion, without interleaving any other commands). This allows us to program Redis to do complex operations that might need some read-decide-write sequences that we can't do from the client without interleaving other commands inbetween.

### Usage
* `EVAL «script»` sends the whole script over the wire and instantly run it.
* `SCRIPT LOAD «script»` loads the script in the server and returns a SHA1 code that identifies it. Then, you can just run it with `EVALSHA «sha code»`. This spares us from having to send it over the wire every time we run it.

Scripts take two arrays (tables, in Lua): `KEYS` and `ARGS`. `KEYS` are the names of the keys of the database that the script interacts with and `ARGS` are the arguments passed to the script.

To invoke Redis commands from a Lua script, it can be done by using the functions `redis.call("«command name»", «arguments»)`, or `redis.pcall`. Check out [[redis-call-vs-redis-pcall|the difference between the two here]].

### Caveats
* Lua scripts in Redis are in strict mode, which means they cannot access global variables and all variables must be declared `local`.
* Lua scripts must be passed the keys that they will use, and can't interact with keys that aren't passed ==but can they create new temporary keys?==. This is because Lua script cannot be executed in a distributed way, and must ensure that all keys it interacts with are within the same shard.
