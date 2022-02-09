# Implicit return
Kotlin has implicit returns, but these only apply to function expressions (Is this the right name? I think it applies to some sorts of blocks specifically).

This means that in a multiline function body, the return must be explicit:
```kotlin
fun theAnswer(): Int {
  return 42
}
```

However it doesn't need to be so in a block:

```kotlin
fun colorName(color: String): String {
  return when(color) {
    "R" -> {
      println("Returning red")
      "red"
    }
    "B" -> {
      println("Returning blue")
      "blue"
    }
    "G" -> {
      println("Returning green")
      "green"
    }
  }
}
```

This allows multiline `if` expressions:

```kotlin
val color = if (color == "R") {
  println("Color is red")
  "red"
} else {
  println("Color is other")
  "other"
}
```
