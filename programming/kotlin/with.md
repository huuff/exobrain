# `with`
A function that takes a [[lambda-with-receiver]] and allows operating on the receiver as the `this` reference:

## Example
```kotlin
fun alphabet(): String {
  val sb = StringBuilder();
  return with(sb) {
    for (letter in 'A'..'Z') {
      this.append(letter)
    }
    append("\nNow I know the alphabet") // You can also omit the `this` as it's implicit
    this.toString()
  }
}
```
