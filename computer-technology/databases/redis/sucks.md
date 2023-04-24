---
tags: sucks
---

# What sucks about Redis
True as of Redis 7.0.6

* If you're thinking about operating on JSON with LUA scripting, think again:
  * The built-in library for JSON, cjson [has been unmantained since 2016](https://github.com/mpx/lua-cjson)
  * There's no option but to fully decode and encode objects every time you want to use them, even when you want to retrieve only one property
  * LUA is uncapable of distinguishing between an empty array and an empty object (both are just "tables") so it defaults to an empty object. Yeah, that's right: using Redis' LUA there's no way of representing an empty array in JSON.
  * All of these issues are solved by RedisJSON, which isn't much relief as to how bad the built-in way is.
  * Worst of all LUA is only capable of returning simple number-indexed results in redis, so you can't return any complex objects.
