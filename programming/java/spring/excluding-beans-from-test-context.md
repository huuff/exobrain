---
tags: how-to
---

# How to exclude beans from Spring context in a test
Actually, I don't know. 

Check out the accepted answer to [this question](https://stackoverflow.com/questions/48102883/spring-boot-componentscan-excludefilters-not-excluding/48134123).

A summary: Apparently, whether you manually exclude some beans in your test doesn't really matter if it automatically imports a configuration that includes them. How to fix it? I don't know.

UPDATE: A pseudo-solution, or at least, something to consider when this is an issue:
![[component-scan]]
