---
tags: tip
---

# Equality, Sort, Range
A nice rule of thumb for choosing a good order for our fields in our [[compound-index|compound indexes]]: These should be in this order:

* Equality: The first field should be the key is most likely to be queried for equality.
* Sort: The next field, should be one that is going to be used for sorting the results.
* Range: The final field should be the one most likely to be used by range queries.
