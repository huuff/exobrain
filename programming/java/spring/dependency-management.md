---
tags: how-to, caveat
---

# Spring Boot dependency management
Spring Boot offers automatic dependency management to ensure that the versions are curated so they are interoperable:
* For [[maven]], it's enough to inherit the Spring Boot parent POM
* For [[gradle]], it comes from applying the plugin `io.spring.dependency-management`

## Overriding them
**PAY ATTENTION**  

I don't even remember how it was with Maven, but at least for Gradle, it's pretty easy that you just spend a whole day tinkering with dependencies trying to get them to work, being flabbergasted at how can Gradle be picking a version for an artifact that isn't even in any of your transitive dependencies, or at why not even forcing the version you want works. To override the Spring Boot's default versions:

==I usually write placeholders between pointy brackets and just realized that it won't work for XML==

* For [[maven]] add `<artifactIdentifier.version>version number</artifact.version>` to your `properties` block
* For [[gradle]] add `ext[<artifactIdentifier>] = <version number>`

Where do you get these `artifactIdentifier` names you say? Really good question. Check [this list](https://docs.spring.io/spring-boot/docs/current/reference/html/dependency-versions.html). And if it's not there? Well, that page says something about reading the plugin source code. Good luck.

## Transitive dependencies on a project that uses `io.spring.dependency-management`
You have to add the plugins to the dependent project, even if it's not a Spring project

```kotlin
    id("org.springframework.boot")
    id("io.spring.dependency-management")
```
