---
tags: how-to
---

# `WATCH`
When using [[redis/multi]] it's important to note that since these commands are all run in a sequence by Redis at the same time, there's no way for us to make any decisions in between them (Unless we use [[redis/scripting]]). This means that we may check (in application code) wether a value is above `0` to decrease it, and then decrease it. But nobody can guarantee that a different process hasn't changed the value to be under `0` between the moment we checked and the moment we set it.

The way of doing this is by using `WATCH`. `WATCH` implements [[optimistic-concurrency-control]] by preventing the execution of a `MULTI` ... `EXEC` if some `WATCH`ed value has changed between the `WATCH` and the `EXEC`

==TODO: An example==
