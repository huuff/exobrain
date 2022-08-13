# Isolation levels
These are provided to relax or strengthen isolation. Higher isolation levels have performance penalties since in [[2pl]] it introduces contention, and in [[mvcc]] it might make too many transactions to be rolled back.

SQL-92 introduces 4 isolation levels depending on which standard [[phenomenon|phenomena]] it prevents:

* Read uncommitted: Only [[dirty-write]]s are prevented.
* Read committed: Also [[dirty-read]]s are prevented.
* Repeatable read: Also [[non-repeatable-read]] is prevented.
* [[serializable]]: Also [[phantom-read]] is prevented.

Additionally there are other, more pragmatic isolation levels that database vendors introduce such as:

* [[snapshot-isolation]]: Ensures all of a transacion happens on a stable (unchanging) snapshot of the database.

This is usually considered all there is to transaction isolation in single-node systems. However, in [[distributed-systems]], new types of anomalies can appear ([[time-travel-anomaly|time-travel anomalies]]), which warrant new classifications:
* [[one-copy-serializability]]: Is an extension of serializability for distributed systems.
* [[strong-session-serializability]]: This provides [[strict-serializability]] but only for operations in the same database session (even if they are through different transactions). ==Is this equivalent in some way to [[databases/read-your-own-writes]]? at least this is how [[mongodb]] achieves [[mongodb/read-your-own-writes.md|read-your-own-writes]]
* [[strong-write-serializable]]: Guarantee [[strict-serializability]] for writes, but only [[one-copy-serializability]] for reads.
* [[strong-partition-serializable]]: Guarantee [[strict-serializability]] but only on operations on a single [[databases/partition]]
* [[strict-serializability]]: The maximum isolation level, that prevents both single-node and time-travel anomalies. It's both [[serializable|serializable]] and [[linearizability|linearizable]]
