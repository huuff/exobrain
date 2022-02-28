# Label
Kotlin has labels to specify where some control-flow keyword applies. A label is specified before an `@` symbol just in front of some control-flow statement or lambda.

## Example
```kotlin
people.forEach label@{
  if (it.name == "Alice") return@label
} 
```

Consider that [[inline-function]]s such as `forEach` have non-local returns for their lambda arguments. Therefore without the example's labels, the example would return from the outer function, instead, using labels we can return from the inner one.
