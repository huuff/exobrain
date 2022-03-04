---
tags: how-to
---

# Generate from OpenAPI spec without bloat
If you want to generate a server consider using only interfaces, though I've found that it's usually not enough for my needs

![[openapi-generator-interface-only]]

## Generate only models
Set `"apis"` to `"false"` in the global properties, e.g. for [[gradle]]:

```kotlin
openApiGenerate {
  globalProperties.set(
      mapOf(
        "apis" to "false",
        "models" to "",
        "supportingFiles" to "false",
      )
  )
}
```
