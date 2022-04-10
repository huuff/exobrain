---
tags: caveat
---

# `COPY` ignores your file structure (or fucks it up)
Big WTF moment for me, for more info see [this StackOverflow question](https://stackoverflow.com/questions/37789984/how-to-copy-folders-to-docker-image-from-dockerfile).

This is as far as I found for solving it:
1. Use `ADD`
2. Use a trailing slash in the source directory
3. Use trailing slash in the target directory

### Example
This is wrong and just copies the contents of `bin` into `.`:

```dockerfile
ADD [ "./bin", "./" ]
```

This works:

```dockerfile
ADD [ "./bin/", "./bin/"]
```
