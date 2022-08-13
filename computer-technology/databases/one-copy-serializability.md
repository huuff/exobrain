---
tags: definition
---

# One-copy serializability
An extension of the concept of [[serializable|serializability]] to [[distributed-systems]], where the system behaves as if there was a single logical copy of every data item, even though it might be replicated. Reads must return the latest write to that item in the serial order. 

[Here's the paper that introduced the concept](https://ieeexplore.ieee.org/document/5010293)
