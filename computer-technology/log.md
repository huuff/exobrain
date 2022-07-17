---
tags: definition
---

# Log
In its most abstract sense, a log is an append-only data structure, so all writes go to its end, which makes writes sequential and thus highly performant, especially on magnetic disks. They can be used for several purposes:

* For storing data in databases, such as for [[log-structured-storage]] engines
* For auditing operations on a system
