# Three-way merge
The most common [[git/merge]] strategy when it's not a [[git/fast-forward]]. Git compares the tips of the two branchs that are going to be merged and the common ancestor of both, interpolates the contents to unify the changes of both branches and finally creates a new merge commit with changes from both.
