---
tags: definition
---

# `git commit --amend`
You can add work to your [[staging-area]] and then merge it to your previous commit by running `git commit --amend`. Note that this is a [[history-rewriting]] command.

### Inner functioning
==I'm not entirely sure about this, but it's kind of correct==

This command is just a shortcut for resetting to the previous commit and then committing your current staging area merged with that commit's staging area, so it comprises the command sequence:

* `git reset HEAD^` ==Or is it `git reset --soft`?==
* `git commit`
