---
tags: tip
---

# Spring's logback base
Spring has a sensible logback declaration, import it in your `logback-spring.xml` using:

```xml
<configuration>
  <include resource="org/springframework/boot/logging/logback/base.xml" />
  ...
</configuration>
```

This includes two useful appenders: `CONSOLE` and `FILE` (How to configure `FILE`? It requires something into `application.yaml`)
