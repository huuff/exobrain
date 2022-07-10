---
tags: definition
---

# Reified generic parameter
In Kotlin, type parameters can be *reified* only inside an [[inline-function]]. This means that we can actually access the passed generic type in runtime, contrary to [[java]], where it's erased. To mark a type parameter as reified, you add the `reified` modifier

## But how?
The JVM has no type parameters itself so how does it work? Well, an inline function call is actually replaced with the whole body of the function at every callsite, this means that the type of the generic is actually perfectly known at the call, so it can just be put in the resulting bytecode.

## Example
Suppose we have the following functions, that checks whether a parameter is an instance of a declared type parameter:

```kotlin
fun <T> isA(value: Any) = value is T
```

This, obviously, won't compile since the type is erased at runtime. However, we can just make the function `inline` and declare the parameter as `reified`:

```kotlin
inline fun <reified T> isA(value: Any) = value is T
```
