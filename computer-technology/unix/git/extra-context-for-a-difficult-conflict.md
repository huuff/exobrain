---
tags: tip, how-to
---

# Get extra context for a difficult conflict with the `diff3` strategy
Sometimes you're trying to resolve a conflic that's proving to be especially difficult. Fortunately, you can re-checkout a conflict (that's restoring it with all the conflict markers) with `git checkout --conflict`.

This is especially useful if you want to change the diff strategy for the conflict: Using the `diff3` strategy by default might be too combersome as it adds too much chatter, but for difficult conflicts, it can prove useful. If you originaly tried the merge with a different strategy, you can turn on `diff3` for a single file with:

```sh
git checkout --conflict=diff3 «file»
```
