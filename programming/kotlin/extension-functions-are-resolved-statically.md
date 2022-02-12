---
tag: caveat
---

# Extension functions are resolved statically
Therefore, there is no overriding of extension functions. Declaring an extension function on both a parent type and the child type, the one applied is resolved statically.

If you consider that extension functions are compiled to static methods, this behavior is unsurprising, since static methods are resolved statically too

## Example
Suppose `Button` extends `View` in the following snippet:

```kotlin
fun View.showOff() = println("I'm a view!")
fun Button.showOff() = println("I'm a button!")

val view: View = Button()
view.showOff() // Prints "I'm a view!"
```
