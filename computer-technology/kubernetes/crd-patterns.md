---
tags: pattern
---

# Custom resources patterns
There are several ways in which you can use [[crd]]s:

* Just data: A CRD only contains data and doesn't have an associated [[controller]] to act on it, but it might have an [[admission-controller]] that validates or mutates it.
* Compiler: A CRD contains data that an [[admission-controller]] or [[controller]] then "compiles" into different lower level resources. For example how the [[deployment]] resource is compiled into a [[replica-set]] resource
* [[operator]]
