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
* **They can be declared on nullable types**: So you can handle null values safely on the declaration site rather than at call. For example you could declare an extension `String?.isEmpty()` that returns true either if the string is the empty string (`""`) or if it's `null`. This is not possible with regular methods. This might alleviate the need for the [[null-object-pattern]]

![[extension-functions-are-resolved-statically]]

## Extension functions are just syntactic sugar over static methods
Easy to see since they are resolved statically. This means that they are against so called "object orientation principles", because they are not extendable by subclassing. However at this point we should really question whether the dogma of "object orientation principles" is really helpful in any way. Precisely, the effort made in preventing anyone from deviate from these is what pushed the need for extension functions.
