---
tags: comparison
---

# Scratch vs Distroless
These are two different ways of building minimal container images:

* [[scratch]]: Contains only your statically-built binary and any external dependencies you must provide, nothing else.
* [[distroless]]: Contains only some generally needed tools for any container to function (locale files, CA files, programming language runtime)

My view of it is that basing a container on the scratch image is only suitable for programming languages that compile statically like Go, for any other language that requires a virtual machine like Java, distroless seems like a better option.
