# SAM Constructor
A compiler-generated function that explicitly transforms a lambda into a [[sam-interface]]. It's useful in the cases where the compiler doesn't automatically transform a lambda into a SAM interface. For example, when returning a SAM interface, you can't just return a lambda, so you wrap it in a SAM Constructor

## Example
Given that `OnClickListener` is a SAM interface:

```kotlin
fun createListener(): OnClickListener {
  return OnClickListener {
    println("Clicked!")
  }
}
```
