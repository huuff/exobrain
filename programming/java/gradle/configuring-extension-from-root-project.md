---
tags: how-to
---

# How to configure a subproject extension from the root project
I've struggled with this for a long time. Firstly you have to take into account that the `subprojects` block is executed in a phase previous to when the subprojects' extensions are actually loaded, therefore you have to use `afterEvaluate`.

Also, there is no way for the root project to be sure that the subproject has the desired extension, thus, there is no type-safe way of doing it without considering that it might be null.

I came up with the following incantation to configure the subprojects' publishing plugins from the root project:

```kotlin
subprojects {
  afterEvaluate {
    project.extensions.findByType(PublishingExtension::class.java)?.apply {
      publications {
        val projectName = project.name

        register(projectName, MavenPublication::class) {
          groupId = groupId
          artifactId = projectName
          version = version

          from(components["java"])

          pom {
            packaging = "jar"
            name.set(projectName)
          }
        }
      }
    }
  }
}
```
