# Elvis operator (null-coalescing operator) `?:`
In languages that have it, the elvis operator produces the left-hand side of the expression if not null, and, if null, then produces the right-hand side. It's named that way because from it's syntax: `?:`, if you look at it sideways it looks like Elvis.

Some benefits we get from it:
* In languages where `throw` or `return` are expressions, we can have them as a right side to get handy, concise, condition checking.
* In languages with a unit type such as `Never` in [[typescript]] or `Nothing` in [[kotlin]], we can use them on the right side (as in the previous point) and the compiler would know to narrow the type to a non-nullable type after the check
