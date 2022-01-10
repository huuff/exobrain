---
tags: how-to
---

# Fixing tests that won't run in gradle
Add 

```groovy
test {
  useJUnitPlatform()
}
```

To `build.gradle`
