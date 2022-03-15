---
tags: how-to
---

# How to solve very slow Intellij iDEA multiproject imports
I've lost my source, but this is likely caused by the `io.spring.dependency-management` plugin. It uses some weird witchcraft to emulate some maven-specific dependency exclusion behavior and the algorithm is so terribly slow that a multiproject reconfiguration on iDEA takes around 20 minutes.

The solution is just to disable that, so, from a parent project and following the instructions of [[configuring-extension-from-root-project]], do:

```kotlin
afterEvaluate {
  project.extensions.findByType(io.spring.gradle.dependencymanagement.internal.dsl.StandardDependencyManagementExtension::class.java)
      ?.apply {
          setApplyMavenExclusions(false)
      }
}
```

Maybe you'll need to restart iDEA, or your computer or whatever after you do it. When I first added it, I noticed no difference but the day afterwards everything started working like a charm.
