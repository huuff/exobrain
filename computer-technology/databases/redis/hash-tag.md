---
tags: definition
---

# Hash-tag
In redis, you can specify which part of the key you actually want to determine the hash. This is done by wrapping it in braces (`{ }`). This means that the following:

```
{user1000}.following
{user1000}.followers
```

Both of these keys will get the same hash, and thus will always go to the same node in a redis cluster.
