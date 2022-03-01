# Lambda notation
In Kotlin, a lambda is always enclosed by braces. These are some syntactic featues:
* The lambda parameter is inside the braces, e.g. `{x -> println(x)}`
* If the lambda is the last argument in a function, it can be taken out of the parentheses: `call(x, y, { x, y -> x + y})` is equivalent to `call(x, y) { x, y -> x + y}`
* If the lambda only has one argument, it doesn't need to be declared and is implicitly named as `it`. e.g. `doWith(x) { x -> println(x) }` is equivalent to `doWith(x) { println(it) }`

## Example
Following examples from Kotlin in Action, I'll simplify a lambda as much as possible.

The following is the most verbose way to find the oldest person in a collection:

```kotlin
val oldest = persons.maxBy({ p: Person -> p.age })
```

(Note that the parameter declaration `p: Person` is inside of the braces, contrary to Java)

Now, Kotlin allows moving a lambda outside of the parentheses if it's the last argument of a function call, therefore, this is equivalent:


```kotlin
val oldest = persons.maxBy() { p: Person -> p.age }
```

Furthermore, if the lambda is the only argument of the function call, we can just remove the parentheses entirely:

```kotlin
val oldest = persons.maxBy { p: Person -> p.age }
```

Not strictly related to lambdas, but the parameter can be inferred (as Java does):

```kotlin
val oldest = persons.maxBy { p -> p.age }
```

Finally, when the lambda takes only 1 parameter, it's introduced implicitly as the `it` variable, so the shortest possible version is:

```kotlin
val oldest = persons.maxBy { it.age }
```

Also note that [[implicit-return]] rules make the last expression in the lambda it's return value, so the following would also be possible:

```kotlin
val olders = persons.maxBy {
  println("Getting the age of ${it.name}")
  it.age
}
```
