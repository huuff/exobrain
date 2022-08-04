---
tags: definition
---

# Sorted Set (ZSET)
A particularly unique data structure of redis. It's like a [[redis/set]] in that its elements are unique, but it's also like a [[redis/list]] in that it's sorted.

In a `ZSET` each *member* is accompanied by a *score*. They can be accessed by the elements (the members), but also in sorted order by the score (the main sort order is increasing, but can be reversed with `ZSETREV*` commands)

Some interesting properties:
* [[combining-zsets]]
* [[combining-zsets-and-sets]]

### Operations
* `ZADD «key-name» «score» «member» [«other-score» «other member»...]`: Adds the members with the given score
* `ZREM «key-name» «member» [«other member»]`: Remembers the given member
* `ZCARD «key-name»`: Returns the [[set-theory/cardinality]] of the set. (i.e. the amout of elements in it)
* `ZINCRBY «key-name» «member» «increment»`: Increment `«member»`'s score by `«increment»`
* `ZCOUNT «key-name» «min» «max»`: Counts the number of members with scores between the provided minimum and maximum
* `ZRANK «key-name» «member»`: Returns the position of the member in the set
* `ZSCORE «key-name» «member»`: Returns the score of the member
* `ZRANGE «key-name» «start» «stop» [WITHSCORE]`: Returns the members with ranks between `«start»` and `«stop»`, optionally also returning their scores.
* `ZRANGEBYSCORE «key-name» «min» «max» [WITHSCORES] [LIMIT «offset count»]`: Returns all members with scores between `«min»` and `«max»`, with an optional limit, and optionally with scores
* `ZREMRANGEBYRANK «key-name» «start» «stop»`: Removes all members with ranks between `«start»` and `«stop»`
* `ZREMRANGEBYSCORE «key-name» «min» «max»`: Removes all members with scores between `«min»` and `«max»`

Also, most commands that operate on ranks, can also be used in reverse mode to operate in the set sorted in the reverse order, for example `ZREVRANK`, `ZREVRANGE`, `ZREVRANGEBYSCORE`, etc.
