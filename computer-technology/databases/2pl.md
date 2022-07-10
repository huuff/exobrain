# Two-phase locking
A transaction acquires locks on resources to prevent these from being modified from another transactions and releases them on commit. Its two phases are:

* Expanding phase (locks are acquired and none is released)
* Shrinking phase (locks are released and none is acquired)

## Optimizations and challenges
* Optimization: Locks can be made as coarse-grained as needed. For example, a whole table can be locked, or just a single editing row.
* Challenge: [[deadlock]]s might appear.
