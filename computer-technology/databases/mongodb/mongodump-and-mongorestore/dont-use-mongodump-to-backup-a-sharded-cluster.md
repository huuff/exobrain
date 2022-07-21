---
tags: caveat
---

# Don't use `mongodump` to backup a sharded cluster
That won't work from MongoDB 4.2 onwards. `mongodump` cannot keep the [[atomicity]] needs of distributed transactions.
