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
