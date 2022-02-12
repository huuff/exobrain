---
tags: how-to
---

# Forking the JVM for compilation tasks
By default, Gradle will fork a JVM for every Java compilation task. This might cause unnecessary overhead in large multi-project builds. This can be improved by making Gradle reusing a previously forked JVM:

```groovy
tasks.withType(JavaCompile) {
  options.useAnt = false // Use Gradle's direct compiler integration, bypassing ant's javac task (Is this necessary in modern Gradle?)
  options.fork = true // Run compilation in a separate JVM process
}
```
