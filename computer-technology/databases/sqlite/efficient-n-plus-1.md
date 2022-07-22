---
tags: tip
---

# N+1 Queries are efficient in SQLite
Even though [[n-plus-1]] queries is usually considered a terrible performance issue for most database engines, SQLite does not incur the overhead of the network roundtrip, since it's only accessed locally. This means that this access pattern is actually perfectly fine.

[Source](https://sqlite.org/np1queryprob.html)

### Advantages
* The code for fetching the parent row and the one for fething all of its child rows can be perfectly decoupled from each other.

### Disadvantages
* This pretty much couples you to SQLite forever, since any other database system will be too slow with this access pattern.
