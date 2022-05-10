# Using a parameter as the default value of another parameter
Not all languages allow this, but I think it's a neat feature.

Languages that allow it:
* [[kotlin]]
Languages that don't allow it: honestly I can't remember, I think [[typescript]]? maybe [[python]] too?

### Example
```kotlin
fun doSomething(firstParam: String, secondParam: String = firstParam)
```
