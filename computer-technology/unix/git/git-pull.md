# `git pull`
`git pull` is actually just a `git fetch` followed by a `git merge`

### Example
Doing `git pull «branch»` does the following

* `git fetch «branch»`
* `git merge «branch» origin/«branch»`
