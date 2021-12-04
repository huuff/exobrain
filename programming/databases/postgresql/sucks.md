# What sucks in PostgreSQL

* [[xid-wraparound]] (Mitigated in PostgreSQL 14 but can still be an issue)
* No [[hints]] dogma: PostgreSQL refuses to implement query hints because they are supposed to be dangerous. It seems weird to me to have an opinionated approach on this, considering relational databases are pretty much feature kitchen sinks. Query performance is highly unpredictable in [[sql]] and hints are the only way out of it, so with [[postgresql]] we're slave to the [[query-planner]]
