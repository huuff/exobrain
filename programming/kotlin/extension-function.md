---
tags: rocks
---

# Extension functions
In Kotlin you can declare a method on a class outside of it by putting it in front of the method name:

```kotlin
fun String.lastChar(): Char {
  return this.get(this.length - 1)
}
```

As with any method, you can implicitly access `this`:

```kotlin
fun String.lastChar(): Char {
  return get(length - 1)
}
```

## Extension functions are awesome
* **They don't clutter the class interface**: It's best that a class declares only the most essential methods in it and all else is done outside to keep them clean (I read in some book about a principle that stated this better, but I forgot where)
* **They don't allow you to break encapsulation**: Unlike normal methods, they don't allow you to access private fields or methods. It's common knowledge that an external function allows the best encapsulation, extension methods provide this benefit while keeping the benefit of methods.
* **They provide autocompletion and discoverability**: Just type your object and a dot and find out everything you can do.

![[extension-functions-are-resolved-statically]]
