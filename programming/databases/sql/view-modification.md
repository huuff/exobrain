# Modifying a view
Usually [[relational-model/tuple]]s in a `VIEW` might be updated (inserted, deleted, updated). This requires that only one relation is involved in the view.

For `INSERT` the columns not appearing in the view would be set as [[null]

Usually, it's preferred to use an `INSTEAD OF` trigger to allow updating views.
