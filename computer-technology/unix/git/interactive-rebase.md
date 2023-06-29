---
tags: definition
---

# Interactive rebase
It's a variant of [[rebase]] that allows you to execute a variety of actions on rebased commits as they are reapplied. It can be invoked by running `git rebase --interactive «commit»`, where `«commit»` is the commit before the first commit to rebase (that is, `«commit»` won't be changed, but any commits after it will). 

When interactive rebase is started, your editor is open with each commit you're rebasing in a line, then you can modify the first word to decide what to do with it:

* `pick` will just reapply this commit as-is
* `edit` will drop you back into the shell with the [[git/head]] set just after that commit. You can make any changes and modify that commit by using [[git/amend]].
* `squash` will merge the selected commit with the previous one
* `fixup` (I think) it does the same as `squash`, but preserves the previous commit's message (doesn't ask for a message)
* just deleting that line removes that commit and its changes won't be applied.

**Note that the commits in the editor are ordered from oldest to newest**. This is a little unintuitive considering that [[git-log]] shows it the other way around.
