---
tags: how-to
---

# Force a specific dependency version
This is the incantation:

```kotlin
configurations.all {
    resolutionStrategy {
        force("org.slf4j:slf4j-api:1.7.36")
    }
}
```
