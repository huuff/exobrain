---
tags: how-to
---

# Adding the main class to `MANIFEST.MF`
Using the [[java-plugin]]

```groovy
jar {
  manifest {
    attributes 'Main-Class': 'com.example.Main'
  }
}
```
