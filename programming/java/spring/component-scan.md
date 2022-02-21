---
tags: caveat
---

# `@ComponentScan`
Do not use it!!! Component scans add beans to context automatically and each one is independent of the other. Then, when testing you'll have problems if you want to exclude some bean from the autoconfiguration ([[excluding-beans-from-test-context]]).

You likely won't need it anyway. Most annotations such as `SpringBootApplication`, `SpringBootTest`, `WebfluxTest` etc. include a `ComponentScan` which you can configure through some attribute.
