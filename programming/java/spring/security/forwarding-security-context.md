---
tags: how-to
---

# Forwarding Spring's Security Context
The Spring's [[spring/security/security-context]] is thread-local by default, meaning that any newly spawned threads won't have it available. This can be remediated for threads managed by Spring (such as those launched as `@Async`-annotated methods) but the issue remains for those that are unmanaged by spring. There are two solutions:

* Wrapping the asynchronous function in a `DelegatingSecurityContextCallable` or `DelegatingSecurityContextRunnable`
* Wrapping the `ExecutorService` in a `DelegatingSecurityContextExecutorService`
