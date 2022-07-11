# Isolation levels
These are provided to relax or strengthen isolation. Higher isolation levels have performance penalties since in [[2pl]] it introduces contention, and in [[mvcc]] it might make too many transactions to be rolled back.

SQL-92 introduces 4 isolation levels depending on which standard [[phenomenon|phenomena]] it prevents:

* Read uncommitted: Only [[dirty-write]]s are prevented.
* Read committed: Also [[dirty-read]]s are prevented
* Repeatable read: Also [[non-repeatable-read]] is prevented
* Serializable: Also [[phantom-read]] is prevented (See [[serializable]])
