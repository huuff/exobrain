---
tags: pattern
---

# Immutable Configuration Pattern
[[configuration-with-environment-variables|Configuration through environment variables has a lot of downsides]], the other choice is to use [[config-resources]]. It's important to note that environment variables cannot be changed during the execution of a container, this is both seen as a benefit and as a downside. Using config resources might be easier to manage, but loses the runtime immutability of environment variables.

The immutable configuration pattern implies building a separate container only to contain the configuration of a main container, and then link it to the main container at runtime to provide that configuration. This has several benefits:
* The configuration is immutable, you have to recreate the container to change the configuration
* The configuration is stored as code and can be put under a version control. Its source code is the container image.
* The configuration can be versioned, and the container image tag can explicitly state what that configuration contains.


## Execution
The configuration docker image will only create the configuration file. Then, at runtime it'll copy it to a [[volume]] that will be shared with the main container.
