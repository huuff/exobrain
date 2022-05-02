---
tags: comparison
---

# Monolith vs Microservices
I'll just collect every single improvement I know microservices make over monoliths.

* Much easier to create specialized security profiles, such as [[aparmor]], [[selinux]] or [[seccomp]]. A running microservice might be evaluated to see which features it needs and remove all that are unnecessary. This is significantly harder for monoliths since there are so many more paths to exercise and some features might be needed just by very small parts of the application that are rarely used.
