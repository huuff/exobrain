---
tags: caveat
---

# The user ID space is shared between the host and the container
This means that an UID of `1000` in the container is the same as an UID of `1000`, or worse, that an UID of `0` (`root`) is also `root` outside of the container. 

This has security and implementation implications, since if you need to share a volume between containers you have to make sure that the permissions allow the users in both containers access it.
