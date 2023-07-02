---
tags: how-to
---

# Reverting a merge
Merges might not be as straight-forward to [[git/revert]] as ordinary commits. Since merges have two parents, at the time of merging, one of them has to be chosen to decide what version to revert to. This process is also not trivially undone ==I've read this somewhere but I've actually never tried it, so citation is needed==.

In order to specify which parent to revert it, when reverting a merge you must provide the `--mainline` or `-m` flag. The `-m «number»` flag specifies which parent of the merge to keep.

You can know which parent is which through running `git log --oneline --graph` and numbering each branch from 1 onwards from left to right (==Yea, I know, it's not a particularly bulletproof method==). Generally, you want to choose the first one, so `git revert -m 1 «commit»` is the command you need.
