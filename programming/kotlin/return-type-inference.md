# Kotlin only infers return type for function expressions
Therefore, in the following code, the return type must be specified

```kotlin
fun theAnswer(): Int {
  return 42
}
```

But not in the following:

```kotlin
fun theAnswer() = 42
```
