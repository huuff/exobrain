---
tags: how-to
---

# Delete a remote branch
(I used to do this through the repository's web interface, so this is nice)

```sh
git push «remote» --delete «branch»
```

This only removes the pointer to the branch, but the commits are still there (without being associated to any particular reference) until the [[git/garbage-collection]] runs.
