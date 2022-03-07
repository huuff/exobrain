---
tags: how-to
---

# Downloading dependencies without building the whole project
UPDATE: This is still not enough no reliably build Gradle projects with nix. Use [[double-invoking]] for that.
This is the holy grail for building [[gradle]] applications using [[nix]]. I've been struggling to find this for the last couple weeks. Add this to your root project's `build.gradle.kts`:

```kotlin
allprojects {
    tasks.register("getDeps") {
        doLast {
            configurations.forEach {
                if (it.isCanBeResolved) it.resolve()
            }
        }
    }
}
```

Now running `./gradlew getDeps` will just download all deps to the gradle cache without building anything.
