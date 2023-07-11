# `git gc`
This command garbage-collects your git files. It does the following:

* Removes loose (orphaned) references and commits
* Packs loose [[object-storage|objects]] into [[packfiles]]
* Combines multiple [[packfiles]] into a single one.

Most of the time, this command does nothing since it needs a significant amount of loose objects and references in order to have any use.

Git also runs it periodically to keep your repository lean with

```sh
git gc --auto
```
