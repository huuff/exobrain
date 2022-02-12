---
tags: caveat
---

# There are also interpolated strings in multiline strings, so if you need a dollar sign, you have to escape it, but you can't escape characters in a multiline string...
Therefore the alternative is

```kotlin
val price = """it costs ${'$'}99 dollars"""
```

Pretty ugly
