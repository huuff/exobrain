---
tags: definition
---

# `ziplist`
A ziplist is a very space-efficient encoding for lists, sets and [[sorted-set|sorted sets]]. Instead of the usual linked list representation Redis uses, `ziplist`s only store three fields for each element:

* Previous element's length
* Current element's length
* Current element's data

The previous element's length makes it easier to travel the data structure backwards. Storing the element's length makes it easy to traverse the structure just by calculating offsets, and saves us from having to store pointers.

`ziplists` however, might have some added costs to maintain that structure after operations, such as moving memory regions, re-encoding after writes and decoding for reads. Therefore, they might only be efficient up to a certain number of elements, after which, the performance of linked lists is better.

### Configuration
Both the maximum number of entries per `ziplist` and the maximum memory size for a data structure to be a `ziplist` can be configured:

```
list-max-ziplist-entries 512
list-max-ziplist-value 64

hash-max-ziplist-entries 512
hash-max-ziplist-value 64

zset-max-ziplist-entries 128
zset-max-ziplist-value 64
```

