---
tags: comparison
---

# Kotlin vs Java
Kotlin improves so much on Java:

* [[dsl-vs-java|Kotlin's DSLs are better than Java's]]
* Aliased imports: Java has all kinds of issues with classes that are named the same (e.g. "This class is already defined in the compilation unit", i.e., you can't import a class that it's named the same as the current class). For me it's usual to have all sorts of different variants of a model (e.g. `PersonDTO`, `PersonDAO` ...) having to add a suffix to each one so they don't clash is bothersome and noisy. Kotlin allows to name them all the same and just distinguish when importing.
* Named arguments: Not only do these clarify the meaning of each parameter in a function call, but also make refactorings much easier since changing the order of arguments in a function requires no changes to the rest of the code if you've used them. I try to use them everywhere except on functions where the argument order is revealing enough (e.g. `random(min, max)`) ==TODO: my usage of named arguments belongs somewhere else==
* Closures!! So absurdly useful. In Java every variable used in a lambda must be "effectively final" which means that the stuff you can do inside a lambda is very limited
* [[reified-generic]]s: A lot of stuff in java cannot be done without the ugly workaround of passing the class of some element as a parameter to a function, this mixes the type space with the variable space. Also, since it's generic, this allows inferring that parameter.
* The `Nothing` type, a [[bottom-type]] that represents code that should never be reached. It allows cool stuff like the [[kotlin/todo]] function, that allows stubbing methods to do [[tdd]] without the compiler complaining constantly.

==TODO: Give a couple of real examples for closures and reified generics==
