---
tags: caveat
---

# `CascadeType.REMOVE` is slow
It might delete a collection (`OneToMany` association) when the parent is deleted, but it does this by deleting each item individually. This is because Hibernate can't know whether there are some other tables with references to the rows that are being deleted. A single `DELETE FROM table WHERE parent_id = ?` would fail for the whole query if there were, while a `DELETE` for each row will only fail for the referenced rows.

If the collections were of [[embeddable]] instances instead, a single `DELETE` would be used, since there could be no more references to the embedded components.
