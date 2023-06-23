---
tags: tip
---

# Generating build numbers with `git describe`
`git describe` will give a human-readable string that represents the relationship of one commit to the nearest tag. When you run `git describe «commit»` it will give you a string like the following:

```
«tag»-«commits since tag»-g«short commit hash»
```

This is pretty useful to uniquely identify build numbers.
