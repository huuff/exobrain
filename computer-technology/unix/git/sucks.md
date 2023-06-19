---
tags: sucks
---

# What sucks about git

### Inconsistent names
* There are some cases of several terms used to describe the same thing, even some of git commands and flags might use one term or the other inconsistently. For example, the [[staging-area]] might be called the *index* or the *cache*.
* There are two different meanings to [[rebase]]: either a different way of merging branches or a way of rewritting already-made commits.
* A `revert` as a subcommand creates a new commit that's the inverse of a previous one (thus nullifying it). When using interactive staging (`git add -i`), there's a command called `revert` that removes a file from the staging area. This, however, is what the [[git/reset]] subcommand does! Why is it not called `reset` in the interactive adding command?
