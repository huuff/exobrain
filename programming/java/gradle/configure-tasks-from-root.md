---
tags: how-to
---

# Configure tasks from root project
You might have some task config repeated for every single subproject, for example:

```kotlin
tasks.test {
  useJUnitPlatform()
}
```

In order to do this for all subprojects from the root project, you have to use features that delay the resolution of the exact task until runtime, since at compile time, Gradle can't know which tasks are available in subprojects, therefore:

```kotlin
tasks.withType<Test>().configureEach {
  useJUnitPlatform()
}
```
