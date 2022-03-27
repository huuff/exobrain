---
tags: rule
---

# Always have an odd number of nodes that can become leaders
Having an even number is just asking for trouble:

* They are prone to [[split-brain]] situations if a network error causes partitions with the same number of nodes in each
* There can be ties in elections, forcing to have a re-election and increasing the time they take.
