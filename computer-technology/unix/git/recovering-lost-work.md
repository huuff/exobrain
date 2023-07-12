---
tags: how-to
---

# Recovering lost work
You might have lost work in git by prematurely removing a branch or by hard-resetting. If your lost work is in your [[reflog]], you can get a branch from it by doing:

1. Run `git reflog` to see the hash of the commit you're looking for
2. Run `git branch «new branch name» «commit hash»` to create a new branch from that commit

If (for some weird reason) that commit isn't in your reflog, you may be able to find it as a dangling (i.e. not pointed at by any branch) by running `git fsck --full`
