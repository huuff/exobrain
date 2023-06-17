---
tags: best-practice
---

# Use fast-forward or rebase `git pull`s only
When you're working on a local branch, it's your responsibility to keep a clean history. Your local branch and the remote one should keep the same history, since, after all, they should be the same branch. When you have local changes not on the remote branch (and vice-versa) a normal `git pull` introduces a merge commit that just makes it look like two unrelated branches were merged. This just dirties the history and makes it non-linear.

There are two solutions to this:

* Use always `git pull --ff-only`: This way, the pull will only work if it can be [[git/fast-forward|fast forwarded]], so it looks like linear history.
* If this fails (there are differences and thus a fast-forward is not possible), use `git pull --rebase` to [[rebase]] your work on top of the remote branch instead of adding a merge commit.

I suggest setting the `pull.ff = only` configuration in git to force the `--ff-only` option, but actually leave the rebase part to be done manually when the fast-forward fails.
