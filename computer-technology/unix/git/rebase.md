---
tags: definition
---

# Rebase
A rebase is like a merge, with the most easily notable difference that it doesn't create a merge commit. Rebase applies any sequence of changes in one branch on top of another to create a sequential history, instead of merging both branches into a single one with a merge commit with two parents.

### Example
Suppose you're working on a branch named `feature`, and `master` has commits not on `feature`. Then to catch up you just do:

```sh
git rebase master
```

This would give the same result as 

```sh
git merge master
```

But the history is linear and has no merge commits.
