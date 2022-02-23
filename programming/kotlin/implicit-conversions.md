# Implicit conversions in Kotlin
Kotlin does not have implicit numeric conversions, so the following is not possible

```kotlin
val i = 1
val ii: Long = i // Error
```

Instead, all primitive types have conversion methods, such as `toLong()`:

```kotlin
val i = 1
val ii: Long = i.toLong() // Allowed
```

This effectively makes its type system stronger than Java's
