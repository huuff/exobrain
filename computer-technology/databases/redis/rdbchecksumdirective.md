# `rdbchecksumdirective`
A configuration which enables the addition of a CRC64 checksum at the end of every RDB [[snapshotting|snapshot]]. This checksum increases the size of the snapshot by 10%.

I suppose this is used by the [[redis-check-aof]] command for restoring a corrupted snapshot.
