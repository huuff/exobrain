---
tags: sucks
---

# What sucks about using Spring with Kotlin
* Controller methods' `@RequestParam` do not work with Kotlin's default/optional arguments. The only option is to use the parameters to the annotation itself, which is a lost opportunity for clean integration between both. This issue seems hard to solve however[^1]
* Lack of Kotlin DSLs for a lot of features. `MockMVC` has a nice one, but not `WebTestClient`, sadly.

[^1]: https://github.com/spring-projects/spring-framework/issues/21139
