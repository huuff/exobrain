---
tags: tip
---

# Use indexes for high-cardinality fields
In general, a field gets the most benefit out of an index when it has a high cardinality, that is, when the number of allowed values the field can take is bigger. This is because an index scan can narrow the results of the query to a much smaller result set.

Also try to use high-cardinality fields first in [[compound-index]]es
