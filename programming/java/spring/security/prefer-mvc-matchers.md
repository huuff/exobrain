---
tags: tip, best-practice, caveat
---

# Prefer `mvc` matchers to `ant` matchers
Both have the same syntax, but `mvc` interprets paths in the same way as the MVC framework does, while `ant` matchers do it in a more lexicographical way. The fact that `mvc` understands subtle behaviors of the framework actually has huge implications for security:

Consider a path of `/hello`. The framework considers `/hello/` to match `/hello` so a request to any of them results in the same behavior. `mvc` matchers also behave in this way and thus, securing a path of `/hello` also secures `/hello/`. However, `ant` doesn't! This means that by securing only `/hello` with `ant` leaves a huge gaping security hole by leaving `/hello/` unsecured.
