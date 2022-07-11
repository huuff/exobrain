---
tags: definition
---

# Write-Ahead Log (WAL)
A commonly used technique for ensuring [[durability]] in databases: We write any changes to be made to the database to a data structure on a durable medium (i.e. a disk) before committing it to the database. This way, if the system experiments a failure before the write can be effected, it can then be restored from the WAL.

In some databases, the WAL is also used to provide [[atomicity]].
