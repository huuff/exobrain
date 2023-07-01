---
tags: how-to
---

# Remove a file from all history
This is a very common use-case: You committed a private key to the repository and want it permanently removed. [[filter-branch]] is your tool for this:

```
git filter-branch --tree-filter 'rm -f «file»' HEAD
```

This will checkout every single [[git/commit]], run the command and then re-commit it with that change. 

==TODO: If I'm not mistaken... this might still leave traces of that file around in the database under the `.git` database? since this creates new commits, the previous, orphaned ones are not removed, maybe you need `git purge`?==
