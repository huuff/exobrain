---
tags: how-to
---

# `maxmemory`
This configuration allows setting a maximum amount of memory for the Redis instance. The most interesting part of this configuration is that it enables using Redis as an [[lru]] cache, thus removing oldest elements in the database when `maxmemory` is reached.
