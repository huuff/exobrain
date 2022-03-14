---
tags: comparison
---

# Kotlin DSLs vs Java DSLs
DSLs in Java are done in a much more traditional way, such as using [[fluent-interface]]s and method chaining. These are some reasons I collect on why Kotlin's DSLs are better

* Java DSLs understandably rely a lot on static method imports. These however are obscure and have issues:
  * There is no autocompletion from the get-go. That is, you have to start typing it (or just type it entirely) and then import it. Even then, the IDE might suggest a thousand of similarly named methods (this is especially true for DSLs of REST APIs that use a `get` method). In Kotlin, instead, a good amount of these are available automatically in the context, and you just type `this.` or `it.` to autocomplete for which methods are available
  * You have to check import paths to know where these come from, and actually import them to use them. The same argument as above applies, in a Kotlin DSL where the invoked methods are on the `this` instance are just part of that context, and you can just check `this` to see what's available.
