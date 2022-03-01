# Inline function
In Kotlin, a function can be marked with the `inline` modifier. At compilation, this makes that every call to the function is substituted by its definition, which allows for some powerful features.

## Features
### Performance
An `inline` function is inlined along with any lambdas passed to it. Normally in Kotlin, lambdas are compiled to anonymous classes, which incurs a performance overhead (every call creates an object). Inline functions don't have that overhead.

### Choosing which lambdas to inline
If you have a function that receives several lambdas and might prefer to only inline some of them, you can mark the lambdas you don't want to inline as `noinline`. e.g.

```kotlin
inline fun foo(inlined: () -> Unit, noinline notInlined: () -> Unit) {
  ...
}
```

### Non-local return
In Kotlin, when you `return` from an inlined lambda, you return from the outer function, not from the lambda. This is actually a very necessary feature since Kotlin uses lambdas extensively to provide some language features. For example, it's logical to expect that a return from a [[with]] returns from the outer function and not from the `with`, so that's what Kotlin does.

![[reified-generic]]

## Limitations
* Not all lambdas can be inlined, if a parameter is stored for later use then an anonymous class is necessary to store it. As a rule of thumb, lambdas can only be inlined when a parameter is directly called/used or passed to another inline lambda
* Inlining replaces the whole function definition into every call site, therefore, functions that are very long might perform worse when inlined and also significantly increase the resulting code size.

## Deciding when to inline
* As a rule of thumb, the only case where inlining is almost sure to cause performance improvements, since both the cost of the function call and that of the anonymous class creation are prevented.
* For regular functions, the JVM is already capable of deciding when to inline calls in a wide variety of cases.
* The stack trace is clearer when a function is not inlined
* Some features are also only allowed on inlined functions, so you have to take that into account too.
