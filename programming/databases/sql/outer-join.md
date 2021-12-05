# `OUTER JOIN`
A [[join]] that also returns all tuples from one relation that doesn't have a match in the other. The values for the attributes of the resulting tuple that belong to the unmatched one are filled with [[null]]s.

There are several types:

* `A LEFT OUTER JOIN B`: Produces all tuples in `A` with their matching tuple `B`, if any, or `NULL`s otherwise
* `B LEFT OUTER JOIN A`: Produces all tuples in `B` with their matching tuple `A`, if any, or `NULL`s otherwise
* `A FULL OUTER JOIN B`: Produces all tuples both in `A` and `B`, with their matching tuples or `NULL`s otherwise

Note that the `OUTER` keyword can be omitted, so a `LEFT JOIN` is the same as a `LEFT OUTER JOIN`

## [[mysql]] `FULL OUTER JOIN`
MySQL has no `FULL OUTER JOIN` and thus its effect is achieved by doing a `LEFT OUTER JOIN` and a `RIGHT OUTER JOIN` and them `UNION` them together.

