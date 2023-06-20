---
tags: how-to
---

# See the difference between two divergent branches
You'd think you can see the difference between your current branch and another one by running `git diff branch`. However, this can be misleading if both are diverged (the output is ok if the target branch is a direct ascendant of this one, though). `diff` wil make it look like any changes on the remote branch not on the current one were deleted.

What you really want to see is the differences between the current tip of the branch and the first common ancestor of both branches. That is, the changes actually added by this branch, and the ones that will be added by doing a merge.

You can get the common ancestor by running `git merge-base «first branch» «second branch»` and then see the difference of both by running `git diff «result of previous command»`, however, this is a common enough operation that git has a shortcut for getting the merge base of two branches:

```sh
git diff «target branch»...«current branch»
```
