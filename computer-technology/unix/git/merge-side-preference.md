# Merge side preference (`-Xours`) and (`-Xtheirs`)
When doing a recursive merge, you can provide a merge argument that decides which side of the merge you prefer. This automatically resolves any conflict by choosing that side of the conflict:

* `git merge -Xours` always chooses your side of the conflict for the result of the merge
* `git merge -Xtheirs` always chooses the other side

### For a single file
You can also do this for a single file with the `merge-file` subcommand, and specifying the strategy with the `-s` flag:

```sh
git merge-file -s ours «file»
```
