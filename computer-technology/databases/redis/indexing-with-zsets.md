---
tags: pattern
---

# Indexing with sorted sets
Redis does not have [[secondary-index|secondary indexes]], but data structures with operations for lookup with low complexity can be used as indexes. This is an approach unlike other databases, since the responsibility of maintaining and using indexes falls on the user.

A nice example is using [[sorted-set|sorted sets]] for indexing range queries. For example, if you store each country in a hash, with several fields such as "population", you can add an index for population by updating a sorted set that contains the hash's key as its member, and the population and score.

Then, querying by the top 4 countries with the most inhabitants you'd do: `ZREVRANGE -3 -1`. This would give you each country's hash, which you could query to get more information.
