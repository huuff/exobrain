---
tags: how-to
---

# Use [[coroutine]]s from Java
Feels a bit hacky, but also the most comfortable:

1. Declare a non-suspend function that will wrap yours
2. Wrap a call to the suspended function in a `GlobalScope.async { <your-function>() }`
3. Convert it to a `CompletableFuture` by using `GlobalScope.async { <your-function() }.asCompletableFuture()`

The `CompletableFuture` way is more like we're accustomed to in Java so it works nicely. You'll have to add the dependency `implementation("org.jetbrains.kotlinx:kotlinx-coroutines-jdk8:<version>")` in your Kotlin code (I don't think you need any dependency for the Java code but I'm not sure)
