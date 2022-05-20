---
tags: comparison
---

# Monolith vs Microservices
I'll just collect every single improvement I know microservices make over monoliths.

* Much easier to create specialized security profiles, such as [[aparmor]], [[selinux]] or [[seccomp]]. A running microservice might be evaluated to see which features it needs and remove all that are unnecessary. This is significantly harder for monoliths since there are so many more paths to exercise and some features might be needed just by very small parts of the application that are rarely used.
* Much easier to scale. Scaling a monolith means creating replicas of the full application, taking many more resources. Scaling an application separated by microservices can be done individually for each microservice according to its necesities, and saving resources.
* Lower operational costs. The complexity of a monolith makes it so that you need to understand a lot of different moving parts before deploying it and maintaining it. For microservices, only the microservice in scope must be understood and the rest is abstracted away
* Shorter release cycle. With a monolith a lot more interactions must be understood before developing a feature. The test suite encompasses all parts of the software even if only a small one needs changing.
