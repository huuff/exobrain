---
tags: advice, tip
---

# Always prefer `VARCHAR` over `CHAR`
There are usually several datatypes for representing strings in a relational database, such as

* `CHAR(n)`: A fixed-length string of `n` characters
* `VARCHAR(n)`: A varying-length string of maximum `n` characters.

You should always prefer using `VARCHAR` over `CHAR` because:

* `CHAR` comparisons of different lengths are padded with spaces. However, comparing them to `VARCHAR`s might or might not pad with spaces depending on the database system, therefore, using only `VARCHAR`s gives a more consistent behavior across database systems.
