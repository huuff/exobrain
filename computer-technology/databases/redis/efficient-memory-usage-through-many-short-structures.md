---
tags: tip, pattern
---

# Efficient memory usage through many short structures
[[short-structures]] are much memory efficient than their longer counterparts, but they incur a CPU cost that's only amortized for small amounts of data. A pattern/hack to make use of them to improve memory usage while not suffering from the CPU cost is to separate a normal data structure into many smaller ones that can be encoded as a short structure.

### Example
The official Redis documentation [has an example using hashes for key-value storage](https://redis.io/docs/reference/optimization/memory-optimization/#using-hashes-to-abstract-a-very-memory-efficient-plain-key-value-store-on-top-of-redis). It goes like this:

Storing key-value pairs in a hash with `zipmap` encoding is much more memory efficient than storing directly string keys and values. Suppose we have the following key-values:

```
object:1001: «value1»
object:1002: «value2»
...
object:2001: «value3»
object:2002: «value4»
```

We can group keys into hashes of 100 keys by keeping only the first two digits of the id, and then using the rest as the hash's key:

```
object:10 (hash)
  01: «value1»
  02: «value2»
object20 (hash)
  01: «value3»
  02: «value4»
```

This way we can know exactly how many keys will be in each hash, and configure the `zipmap` encoding to optimize these.
