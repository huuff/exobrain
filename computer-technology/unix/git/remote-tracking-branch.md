---
tags: definition
---

# Remote-tracking branch
A [[branch]] can be configured to track a [[remote]]. This implies two things:

* When you push that branch, git automatically nows to which remote branch it should push these changes.
* When you pull that branch, git automatically merges the remote contents into it.

### How to set it up
* By creating a new branch that tracks a remote one:
  * The long form: `git checkout -b «local branch» «remote»/«remote branch»`
  * The short one: `git --track «remote»/«remote branch»` (creates a new local branch with the name `«remote branch»`)
* By setting the upstream in an already-existing local branch (in which you're already checked out): `git branch --set-upstream «remote»/«remote branch»`
