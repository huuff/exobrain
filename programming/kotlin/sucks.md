---
tags: sucks
---

# What sucks about Kotlin
As of Kotlin 1.6

* I'd really like it if there where a `then` keyword fo the true branch of an `if`, `if (<cond>) <true expression> else <false exression>` feels cluttered for me
* The differences between `equal` and `compareTo` semantics in [[java]] are more confusing in Kotlin. One would expect that if `a.compareTo(b) == 0` then `a.equals(b)`, but this is not enforced (`BigDecimal`, for example, does not satisfy this). Therefore you'll find that in Kotlin it's possible that neither `a > b` nor `a < b` but still `a != b`. ==Theres some principle in order theory for this, isn't it? Find out what it's named==
* Overloaded operators cannot be used when there are newlines between the operators. Forces you to put all operations in a single line. Also, the `+` operator on strings can be used in that way (though that comes from Java)
* Forced [[implicit-return]] in functions with expression body. Why can't I just put a `return`? It makes it clearer that the last line is not a command (i.e. modifies some state and returns an `Unit`).
