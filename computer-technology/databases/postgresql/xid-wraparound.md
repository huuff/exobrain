# XID Wraparound
One of the most insidious [[postgresql]] issues: Each transaction has an associated ID (XID), when the maximum value is reached it goes back to 0 and thus, XIDs begin to be reused and transactions made in the past seem to be made in the future, [[mvcc]] semantics no longer work and subtle bugs appear:

* Deleted rows reappearing
* Updated rows reverting to previous values
* Constraint violations

The [[vacuum]] process seems to clean XIDs to avoid this disaster, but this means that it must be actively monitored or auto-vacuum must be working well. Some mitigations are in place:

* When the XID wraparound is about to be reached, writes are prevented. This prevents the bugs but the database is still unusable.
* PostgresSQL 14 introduces an emergency vacuum mode that prioritizes cleaning XIDs to avoid the issue. It doesn't completely solve the problem but decreases the risk of it.
