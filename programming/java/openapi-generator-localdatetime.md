---
tags: how-to
---

# How to make OpenApiGenerator generate `LocalDateTime` instead of `OffsetDateTime`
## [[gradle]]
Add the following to your `openApiGenerate` extension block:

```kotlin
openApiGenerate {
  ...
  typeMappings.set(
      mapOf(
          "OffsetDateTime" to "java.time.LocalDateTime"
      )
  )
  importMappings.set(
      mapOf(
          "OffsetDateTime" to "java.time.LocalDateTime"
      )
  )
}
```

## [[maven]]
Add the following to the `execution` block

```xml
<typeMappings>
  <typeMapping>OffsetDateTime=java.time.LocalDateTime</typeMapping>
</typeMappings>
<importMappings>
  <importMapping>java.time.OffsetDateTime=java.time.LocalDateTime</importMapping>
</importMappings>
```

## A word of warning
It's possible that you'll need to add the full path, so `java.time.OffsetDateTime` instead of `OffsetDateTime`
