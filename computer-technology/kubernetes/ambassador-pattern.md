---
tags: pattern
---

# Ambassador Pattern
Some times a container must consume an external resource in some specific way. Ideally, containers should have a single purpose, but if it has to do some complex operation to communicate with an external resource, then that's another responsibility.

The ambassador pattern is a separate container (a [[sidecar-container]]) that runs alongside the main container and takes the responsibility of communicating with the external resource in a way that makes it transparent to the main container.

### Example
I'm unsure whether this really happen, but imagine you have a container that needs to consume an external service discovery resource to function, but you don't want to ship the library that allows consuming it with your main container in order to decouple it from that responsibility and make it swappable.

You can use the ambassador pattern to deploy a container that consumes the external service discovery and then provide the retrieved information through some means to the main container.
