---
tags: how-to
---

# How to find out whether a query is a [[covered-query]]
When you run `.explain()` on a query that is covered you'll find that:

* The result has an `IXSCAN` stage that is *not* a descendant of a `FETCH` stage
* The value of `totalDocsExamined` inside `executionStats` is `0`
