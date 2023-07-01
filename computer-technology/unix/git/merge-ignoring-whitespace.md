---
tags: how-to, tip
---

# Merge ignoring whitespace
This can be particularly irritating when some people on your team are using tabs and other people are using spaces. Fortunately, the default [[git/merge]] strategy takes arguments you can provide with `-X«flag»`:

```sh
git merge -Xignore-all-space «branch»
```
