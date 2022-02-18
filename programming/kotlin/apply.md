# `apply`
A function like `with`, but that it's declared as an [[extension-function]] and returns the object on which it's called

## Example
```kotlin
fun alphabet() = StringBuilder().apply {
  for (letter in 'A'..'Z') {
    append(letter)
  }
  append("\nNow I know the alphabet")
}.toString()
```
