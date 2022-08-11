---
tags: definition
---

# The Oversized-Attribute Storage Technique (TOAST)
PostgreSQL doesn't allow a tuple (row) to span more than a single [[databases/page]], which are fixed in sizes of 8kB. To store large rows, PostgreSQL uses TOAST, which consists of splitting the row in smaller 2kB chunks and storing them in a separate TOAST table, storing only pointers to that table in the original table. Some things to note:

* TOAST is more efficient than storing the whole row in the table because this way it's only fetched when actually retrieved by a query, so it doesn't bloat the original table.
* TOAST is completely transparent and requires no action from the user.
* TOAST records are still limited to 1GB
* TOAST also transparently enables compression
* Every table has an associated TOAST table, whether it's used or not.
