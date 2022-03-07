---
tags: how-to
---

# How to publish to Nexus with gradle
Apply the `maven-publish` plugin and apply the following incantation

```kotlin
publishing {
    publications {
        register(artifactId, MavenPublication::class) {
            groupId = groupId
            artifactId = artifactId
            version = version

            from(components["java"])

            artifact(sourcesJar)

            pom {
                packaging = "jar"
                name.set(artifactId)
            }
        }
    }

    repositories {
        maven {
            name = «name»
            url = uri(«uri»)
            credentials {
                username = «username» //better if you get these from properties
                password = «password»
            }
            isAllowInsecureProtocol = true
        }
    }
}
```
