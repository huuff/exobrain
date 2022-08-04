---
tags: definition
---

# `intset`
Redis stores a set of elements as an `intset` if all of its elements can be encoded as base-10 integers in our platform representation. 

### Configuration
You can use `set-max-int-entries` configuration to specify what is the maximum amount of elements a set is allowed to have to be encoded as an `intset`.
