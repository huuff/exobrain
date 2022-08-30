---
tags: caveat, tip
---

# `because` forces a specific dependency version
This is both a tip and a caveat because I've long looked for a serious way of forcing a dependency version but at the same time I've been using `because` for documentation without knowing what it really did.

When you mark a dependency with `because` and a reason, no dependent project can use another vesion!. For example:

```kotlin
implementation("example.group:application:v1.0.0")?.because("Just because")
```

This means that a dependent project can't use a version other than `v1.0.0`
