# `NULL`
`NULL`'s existence presents a special type of problem in relational operations. It converts the boolean logic of SQL into a Three-Valued Logic. These are some of the implications of its existence:

* Since `NULL` can appear in a boolean expression such as `1 < NULL`, this expression can't be true or false (we don't know what `NULL` is) and thus, a new value, `UNKNOWN` is introduced.
* The comparison `NULL = NULL` returns `UNKNOWN`
* However, when using the `DISTINCT` operator, comparisons such as `('A', null) = ('A', null)` return true, not `UNKNOWN`, and thus only one of these tuples appears in the final relation.
