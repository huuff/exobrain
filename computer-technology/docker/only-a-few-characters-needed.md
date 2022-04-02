---
tags: tip
---

# You can run commands on a container by specifying only enough characters of its ID to be identifiable without having to type the whole ID
So for example if you have several containers like:
```
6298075aa70a
170554c23784
15e80871357e
```

You don't have to type the full `15e80871357e` to run it, it's enough to type `docker run 15e`
