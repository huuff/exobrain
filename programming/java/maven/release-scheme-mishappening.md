---
tags: sucks
---

# Maven's release scheme is opposed Continuous Delivery principles
Maven suggests using a version tagged as `-SNAPSHOT` for a developing release, which assumes that work is done on a changing artifact for a certain amount of time until it's ready to be deployed. Continous Delivery principles require (according to whom?) that every commit should be able to become a release, which is opposed to this scheme. 

Also take into account that, since the artifact changes this really makes it really difficult to set up a really deterministic build.
