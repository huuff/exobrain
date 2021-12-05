# `NULL`
`NULL`'s existence presents a special type of problem in relational operations. It converts the boolean logic of SQL into a Three-Valued Logic. This means that boolean logic is really overcomplicated by the existence of `NULL`, some examples are:

* Since `NULL` can appear in a boolean expression such as `1 < NULL`, this expression can't be true or false (we don't know what `NULL` is) and thus, a new value, `UNKNOWN` is introduced.
* The comparison `NULL = NULL` returns `UNKNOWN`
* However, when using the `DISTINCT` operator, comparisons such as `('A', null) = ('A', null)` return true, not `UNKNOWN`, and thus only one of these tuples appears in the final relation.
* All [[aggregation-function]]s except `COUNT` ignore `NULL` on their input.
* `UNIQUE` is defined to fail if and only if the relations contains two tuples $t_1$ and $t_2$ such that $t_1 = t_2$. Since this test fails if any of the two contains `NULL` in any of its attributes, it's possible for `UNIQUE` to be true even if there are multiple copies of a tuple, as long as any of its attributes is `NULL`
* A `CHECK` clause is satisfied if not false, therefore a comparison with `NULL` that produces an `UNKNOWN` is considered as satisfying it
