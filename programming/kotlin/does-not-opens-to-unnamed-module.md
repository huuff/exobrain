---
tags: how-to
---

# `does not "opens «module»" to unnamed module`
I get this error when mocking static with `mockk`, the solution is to put the following in the gradle build

(For `java.time`)
```kotlin
tasks.test {
    ...
    jvmArgs("--add-opens", "java.base/java.time=ALL-UNNAMED")
    ...
}
```
