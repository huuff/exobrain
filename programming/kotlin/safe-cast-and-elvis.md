# Using a [[safe-cast]] with the [[elvis-operator]]
It's a common pattern to produce some work only when a type is a subclass of another.

## Example
Implementing an `equals` method:

```kotlin
class Person(val firstName: String, val lastName: String) {
  override fun equals(o: Any?): Boolean {
    val otherPerson = o as? Person ?: return false

    return otherPerson.firstName == firstName && otherPerson.lastName == lastName
  }
}
```
