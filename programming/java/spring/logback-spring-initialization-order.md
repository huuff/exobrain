---
tags: caveat, how-to
---

# How to use `logback-spring.xml` with a dependency that logs before Spring loads
Honestly, I don't think there is a good way:

PROBLEM: `logback-spring.xml` is loaded later in the initialization, while `logback.xml` is loaded pretty soon. Therefore, even though Spring recommends the usage of `logback-spring.xml` (something about being able to control log initialization), this means that you can't use it for the logging of dependencies that log before Spring loads (for example, `testcontainers`).

SOLUTION: The only choice I've found is just using a `logback.xml` (or `logback-test.xml`) for the logs before Spring loads and `logback-spring.xml` for after Spring loads.

FOLLOWING PROBLEM: Well, but it's not so easy, Spring Boot tries to load `logback.xml` before `logback-spring.xml` and thus will use it if you have it, thus ignoring `logback-spring.xml`

FOLLOWING SOLUTION: Specify the path to `logback-spring.xml` in your `application.yaml` to ensure that it's the one Spring uses:

```yaml
logging:
  config: "classpath:logback-spring.xml"
```
