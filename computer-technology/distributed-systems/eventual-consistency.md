---
tags: definition
---

# Eventual consistency
A [[consistency-level]] where reads are guaranteed to get the latest version of the data, only if the system is given enough time to replicate it to all nodes. The guarantee is, that if no further writes come and the system is given *some* undefined amount of time, eventually all writes will be replicated to all nodes and they'll be up-to-date.
