---
tags: tip
---

# Keep an odd number of replicas
Actually, an odd number of voting members in a replica set. If the number is even it's possible there's a tie, and thus an election might have to be repeated. With an odd number this is not possible.

If you can't have an odd number of replicas, you can always add an [[arbiter]] or a [[hidden-member]]
