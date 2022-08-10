---
tags: index
---

# Consistency levels
*For [[consistency-cap]] as in [[cap-theorem]]*

==TODO: Must fix this, as my explanation of causal consistency and sequential consistency are almost the same, and also I must fill each note referenced==

* Eventual consistency: No guarantees are made to any order of operation. The only guarantee is that if there are no writes to the database for a "long" time, eventually all clients will be able to see the latest writes.
* Causal consistency: Order might be established among some operations, but not all. For example if a thread reads a value X and then writes a value Y, any thread after it cannot see Y without X.
* Sequential consistency: There must exist a global order to all operations. If a thread sees operation X, and then operation Y, no other thread can see operation Y without seeing operation X. Enforces a total order for all operations in the database.
* Strict consistency: There is a real time requirement on the order of the writes. Every thread must agree on the exact time the operation happened, the order of the writes must be the real order in which they were written, and any read always reads the latest write. Since it's pretty much impossible to get a distributed system to agree on precise time, this consistency level is unreachable.
* [[linearizability]]: An actually attainable version of strict consistency. Acknowledges the fact that several writes can overlap in time, and thus no *happened-before* relation can be established among them, but any other write must be ordered. 

[Source](https://dbmsmusings.blogspot.com/2019/07/overview-of-consistency-levels-in.html?m=1)
