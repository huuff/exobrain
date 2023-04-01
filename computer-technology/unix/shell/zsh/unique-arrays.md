---
tags: how-to
---

# Arrays of unique elements in zsh
You can use `declare -U` with an array to make it hold only unique elements, so all repeated elements are discarded.

### Example
```zhs
declare -U path
```

Makes `path` only hold unique values
