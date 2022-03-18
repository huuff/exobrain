---
tags: sucks
---

# What sucks about Kotlin
* I'd really like it if there where a `then` keyword fo the true branch of an `if`, `if (<cond>) <true expression> else <false exression>` feels cluttered for me
* The differences between `equal` and `compareTo` semantics in [[java]] are more confusing in Kotlin. One would expect that if `a.compareTo(b) == 0` then `a.equals(b)`, but this is not enforced (`BigDecimal`, for example, does not satisfy this). Therefore you'll find that in Kotlin it's possible that neither `a > b` nor `a < b` but still `a != b`. ==Theres some principle in order theory for this, isn't it? Find out what it's named==
