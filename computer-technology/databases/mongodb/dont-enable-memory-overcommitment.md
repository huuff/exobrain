---
tags: caveat
---

# Don't enable memory overcommitment
MongoDB doesn't play well with Linux's [[memory-overcommitment]], so it's a good idea to diable it in a [[virtualization|virtualized-environment]]:

```
echo 2 > /proc/sys/vm/overcommit_memory
```
