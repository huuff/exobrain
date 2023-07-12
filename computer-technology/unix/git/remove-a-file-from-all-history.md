---
tags: how-to
---

# Remove a file from all history
This is a very common use-case: You committed a private key to the repository and want it permanently removed. [[filter-branch]] is your tool for this:

```
git filter-branch --tree-filter 'rm -f «file»' HEAD
```

This will checkout every single [[git/commit]], run the command and then re-commit it with that change. 

### Fully removing it
Though the file is no longer in history, it's still in the [[reflog]] and under a new, backup set of refs that `filter-branch` creates under `.git/refs/original`. And also, it might be somewhere in your [[packfiles]]. So you just:

1. Delete the reflog and the `filter-branch` backup:
  * `rm -Rf .git/refs/original`
  * `rm -Rf .git/logs`
  * `git gc`
2. Remove it from any dangling references with `git prune --expire`

### Faster way, removing from staging only
The commit I gave you works, but it removes the file from the working directory in every single commit. This is slow since it means the file will have to be checked-out (and thus, potentially unpacked from the [[packfiles]]) and then removed.

This is faster if you just remove the file from the [[staging-area]]

```sh
git filter-branch --index-filter 'git rm --cached --ignore-unmatch «file»' HEAD
```
