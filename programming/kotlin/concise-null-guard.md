---
tags: tip, code-aesthetics
---

# Concise null guard
Sometimes you have a method that receives a nullable parameter and returns another nullable. Usually, we want to just return `null` when the parameter is `null`. This may be easy if the operation is simple:

```kotlin
fun (param: ParamType?): ReturnType? = param?.let { «operations»}
```

But if the operation we need to do with the parameter is composed by several statements, this might become a bit unwieldy. Instead, we could just add a check for null at the top:

```kotlin
fun (param: ParamType?): ReturnType? {
  if (param == null) {
    return null
  }

  /*
      A possibly long sequence of operations go here...
  */  
}
```

But this looks maybe a bit too bulky, if the sequence of operations is 3 lines, we have 50% of our code for checking for null and 50% actual work (i.e. 50% signal-to-noise ratio). We can do a bit better by using the [[elvis-operator]] with an early return (since in Kotlin that's an expression):


```kotlin
fun (param: ParamType?): ReturnType? {
  param ?: return null

  /*
      A possibly long sequence of operations go here...
  */  
}
```

This looks kinda nicer!
