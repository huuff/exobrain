---
tags: comparison
---

# Normalization vs Denormalization
In relational databases, data is usually *normalized*, which means that a special effort is made so that none of it is duplicated and it's thus stored once

### Normalization
* Complex joins are needed to retrieve the data, these queries touch on several tables and are harder to represent in a distributed environment

### Denormalization
* The fact that data is stored multiple times allows us to specify it closer to where it's used, and thus, thanks to locality, it's faster to retrieve it.
* You have to think more about your typical query patterns when designing a schema. With a normalized schema you can just compose a query that satisfies your needs, instead, with a denormalized schema the data must be already there when you're looking for it.
