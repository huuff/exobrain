---
tags: rule
---

# Always have an odd number of nodes that can become leaders
Having an even number is just asking for trouble:

* They are prone to [[split-brain]] situations if a network error causes partitions with the same number of nodes in each
* There can be ties in elections, forcing to have a re-election and increasing the time they take.
* Even when a strict majority is needed for consensus (more than half the nodes) to prevent [[split-brain]], this means:
  * 2 nodes is worse than one, since failure of any one implies full failure, and two are more likely to fail than one
  * 4 nodes is worse than 3, in both cases a failure of two is still a full system failure, and given that there are more nodes, there is a higher chance of any two failing.
