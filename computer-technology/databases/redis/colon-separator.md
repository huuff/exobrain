---
tags: convention
---

# Colon separator for namespacing
A useful convention, since Redis doesn't really have many mechanisms of separating structures, a colon is usually used to sort of "namespace" values. For example we could store a set of all users in a `user` [[redis/set]], and then store each user's individual information in a `user:«id»` [[redis/hash-set]].

There are other separators commonly used like `/` or `.` but I think the colon is the most common one.
