---
tags: caveat
---

# package-private visibility encapsulation is easily broken
If you use package-private visibility to hide declarations, you should be aware that any client could just declare their classes in the same package as the ones you want to hide and just use them from there.
