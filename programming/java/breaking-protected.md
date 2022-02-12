---
tags: caveat
---

# Breaking `protected` encapsulation
`protected` declarations are supposed to only be accessible in subclases, but actually, they can be accessed from the same package as the declaration, so the encapsulation can be broken by declaring a class on the same package, same method as in [[breaking-package-private]]
