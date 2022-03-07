---
tags: caveat
---

# Always publish versions ending in `-SNAPSHOT`
I use Nexus OSS and the Gradle Nexus Publish Pluging. Nexus OSS does not have a staging feature, and trying to publish a non-snapshot version results in weird 404 errors! Your only option is to publish a verion ending with `-SNAPSHOT`
