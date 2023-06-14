---
tags: definition
---

# Rebase
There are two different versions of what a rebase is, and both share in common the fact that they modify existing commits:

* Rebasing one branch onto another means reapplying all commits made on the first branch on top of the other one. A key difference with a merge is that it doesn't create a merge commit, and thus the resulting history is linear (no commit has more than one parent) and simpler.
* Rebasing already made commits of a branch. (with interactive rebase for example?) reapplies these commits, allowing modifications to them in terms of content, commit messages, squashing several commits into a single one, etc.

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
