---
tags: comparison
---

# Kotlin vs Java
Kotlin improves so much on Java:

* [[dsl-vs-java|Kotlin's DSLs are better than Java's]]
* Aliased imports: Java has all kinds of issues with classes that are named the same (e.g. "This class is already defined in the compilation unit", i.e., you can't import a class that it's named the same as the current class). For me it's usual to have all sorts of different variants of a model (e.g. `PersonDTO`, `PersonDAO` ...) having to add a suffix to each one so they don't clash is bothersome and noisy. Kotlin allows to name them all the same and just distinguish when importing.
* Named arguments: Not only do these clarify the meaning of each parameter in a function call, but also make refactorings much easier since changing the order of arguments in a function requires no changes to the rest of the code if you've used them. I try to use them everywhere except on functions where the argument order is revealing enough (e.g. `random(min, max)`)
