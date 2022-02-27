---
tags: pattern
---

# [[expando-object]]s in Kotlin
Not exactly equal as those of C#. An object can contain a map of dynamic attributes and provide convenient access to important ones by using [[property-delegation]]

## Example
```kotlin
class Person {
  private val _attributes = mutableMapOf<String, String>()

  fun setAttribute(attrName: String, value: String) {
    _attributes[attrName] = value
  } 

  val name: String by _attributes
}
```
