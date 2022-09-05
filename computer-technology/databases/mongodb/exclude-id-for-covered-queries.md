---
tags: tip
---

# Exclude `_id` to get covered queries
Even if your [[databases/index]] contains all the fields you're matching for, you must exclude `_id` (unless your index contains it already), or else the query won't be [[covered-query|covered]]
