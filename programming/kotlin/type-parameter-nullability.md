# Type parameter nullability
Contrary to the rest of declarations in Kotlin, type parameters are nullable by default, therefore a function that accepts a `T` means that it accepts either `T` or `T?`

## Ensuring a generic is non-nullable
Add an upper bound that is non nullable, for example

```kotlin
fun <T> doStuff(param: T)
```

There, the upper bound of `T` defaults to `Any?`. If we want to ensure it's non-nullable, we can just do:

```kotlin
fun <T: Any> doStuff(param: T)
```
