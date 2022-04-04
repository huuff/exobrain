---
tags: caveat
---

# `COPY` ignores your file structure (or fucks it up)
Big WTF moment for me, for more info see [this StackOverflow question](https://stackoverflow.com/questions/37789984/how-to-copy-folders-to-docker-image-from-dockerfile).

You have to use `ADD`.
