---
tags: definition
---

# Immortal write
A [[time-travel-anomaly]], wherein a later write is always ordered before an older one, called "immortal" because there is seemingly no way to overwrite it.

Suppose a user changes their name from "Daniel" to "Danny". This write gets through and they see the correct name on their profile, "Danny". Suppose they then want to change it to "Dan", but this write goes to a different master, and clock skew makes it think that write was before the previous one. No matter how many times the user changes their name to "Dan", always "Danny" will show in their profile, since that write was ordered after their latest one.
