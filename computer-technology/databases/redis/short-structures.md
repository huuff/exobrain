---
tags: index
---

# Short Structures
Redis has some especial encodings for data structures that take less memory and can be faster to operate with for smaller amounts of data:

* [[ziplist]]
* [[intset]]

Note that Redis actually encodes all small data structures (up to some configurable threshold) as short structures. After they reach that threshold, these structures are automatically re-encoded as their longer variants (such as linked lists). At this point, they never go back to the shorter variants.

Redis does this because short structures are more space-enfficient, but at the same time might require more intensive CPU operations for encoding/decoding that might not be amortized after they reach a certain size.
