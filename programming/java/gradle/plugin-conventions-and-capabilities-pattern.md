---
tags: pattern
---

# Writing a plugin for capabilities and one for conventions
A common pattern in Gradle plugins is to write two of them. One provides all the necessary capabilities and another builds upon it to provide sensible defaults and conventions. This is the case of the `java` plugin, which provides conventions on the `java-base` plugin that provides the base configurations and tasks
