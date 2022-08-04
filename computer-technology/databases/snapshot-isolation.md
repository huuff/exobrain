# Snapshot Isolation
An [[isolation-level]] that ensures that a transaction only sees a consistent, unchanging snapshot of the database. Even if some data changes during the transaction, it'll only see the data at the point when the transaction began.

Note that snapshot isolation is, by definition, not [[linearizability|linearizable]].

### Reasoning
Snapshot isolation was introduced to support long-lived reads that couldn't work with changing data, such as backups.

### Implementation
Seems like [[optimistic-locking]] such as [[mvcc]] is the usual implementation. A transaction on a snapshot only sees the versions of rows that were written before it began.
