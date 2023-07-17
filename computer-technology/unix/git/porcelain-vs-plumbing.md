---
tags: definition
---

# Porcelain vs Plumbing
Git commands are split between *porcelain* and *plumbing* commands.

* *Porcelain* commands are all the usual user-facing commands that are used to interact with repositories in a high-level way such as `git add`, `git commit`, `git push`, etc.
* *Plumbing* commands are those that interact with git on a lower level, usually interfacing directly with the [[git/object-storage]] such as `git cat-file`, `git ls-tree`, etc.
