---
tags: thumb-rule
---

# Unlabeled return returns from closest `fun` keyword
A good rule of thumb to understand what a `return` statement affects. An inline lambda has a *non-local return* meaning it returns from the caller function, and an anonymous function declared with `fun` returns from itself.

Returns from the outer function:
```kotlin
people.forEach {
  if (it.name == "Alice") return
}
```

Returns from the inner function:
```kotlin
people.forEach(fun(person) {
  if (it.name == "Alice") return
})
```
