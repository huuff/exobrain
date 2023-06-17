---
tags: tip
---

# Use `git merge --no-ff`
When you're merging two branches, chances are you ACTUALLY want to keep them as separate branches, instead of intermingling their histories (otherwise, you'd [[rebase]]). This means always a single merge commit you can revert in case of issues, and having only one point in history (the merge) to test for when doing a [[bisect]] or just making it easier to understand history (p.e. understanding a new feature addition as a single merge commit).

However, using `git merge` might do a [[fast-forward]] if the branch you're merging is just ahead of the other one. This is potentially very disruptive of history, since all commits get just added to the history, and in case of needing to revert you'd have to do it one by one.

`git merge --no-ff` always creates a merge commit, even when it could be fast-forwarded.
