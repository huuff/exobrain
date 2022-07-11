# Durability
Part of [[acid]]. A constrain that requires that any commited transaction stays committed even in the case of a power outage or system crash.

To enable it, database systems use a data structure known as the [[wal]]

## Why not the [[undo-log]]?
The [[undo-log]] also contains information pertaining to uncommitted transactions to enable rolling back, therefore it is not suitable for ensuring durability.
