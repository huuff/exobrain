# `buildString`
A nice top-level function that creates a `StringBuilder` and converts it to string implicitly

## Example
```kotlin
fun alphabet(): String = buildString {
  for (letter in 'A'..'Z') {
    append(letter) 
  }
  append("\nNow I know the alphabet!")
}
```
