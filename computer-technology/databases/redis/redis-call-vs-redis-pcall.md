---
tags: comparison
---

# `redis.call()` vs `redis.pcall()` in a Lua script
The difference is on error handling:
* `redis.call()` just returns the error directly to Redis, and then Redis sends it to the client.
* `redis.pcall()` converts the error to a Lua type. ==Can this error be handled inside the Lua script? I've read around that it's just returned directly so the client, so I don't see any benefit==
