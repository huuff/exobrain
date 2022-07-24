---
tags: definition
---

# Sorted Set (ZSET)
A particularly unique data structure of redis. It's like a [[redis/set]] in that its elements are unique, but it's also like a [[redis/list]] in that it's sorted.

In a `ZSET` each *member* is accompanied by a *score*. They can be accessed by the elements (the members), but also in sorted order by the score (the main sort order is increasing, but can be reversed with `ZSETREV*` commands)

Some interesting properties:
* [[combining-zsets]]
* [[combining-zsets-and-sets]]
