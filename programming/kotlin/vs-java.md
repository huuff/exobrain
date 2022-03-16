---
tags: comparison
---

# Kotlin vs Java
* [[dsl-vs-java|Kotlin's DSLs are better than Java's]]
* Aliased imports are really a much much needed improvement. Java has all kinds of issues with classes that are named the same (e.g. "This class is already defined in the compilation unit", i.e., you can't import a class that it's named the same as the current class). For me it's usual to have all sorts of different variants of a model (e.g. `PersonDTO`, `PersonDAO` ...) having to add a suffix to each one so they don't clash is bothersome and noisy. Kotlin allows to name them all the same and just distinguish when importing.
