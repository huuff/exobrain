---
tags: definition
---

# `git grep`
`git grep` has the same functionality of the `grep` command, but with the added benefit that it can be used to search for some string in *any* tree in git, not just the [[git/working-directory]]:

```
git grep «reference» «input string»
```

For example: `git grep «commit/branch/tag» «string»`
