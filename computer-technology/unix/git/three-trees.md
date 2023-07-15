# The Three Trees
You can sort of understand your current git environment based in three different trees (where trees are understood as a set of files):

* The working directory is some sort of sandbox, where you can actually modify the contents of files to decide what is to be committed.
* The [[staging-area]] (or index) is where you actually set files to be contained in the next commit.
* The HEAD is the commit who's going to be the parent of the next commit you make.

Then you can understand some commands as transitioning from one tree to the other:

* `git add` moves files from the working directory to the index (staging area)
* `git reset` can do various things
  * `git reset --soft «commit»` moves the branch that HEAD is pointing to but it doesn't change the index nor the working directory
  * `git reset --mixed «commit»` (the default when `git reset «commit»` is specified) moves the branch that HEAD is pointing to, but also updates the index with the contents of that commit
  * `git reset --hard «commit»` moves the branch that HEAd points to, updates the index and also the working directory. This actually might destroy any uncommitted changes in your working directory
* `git checkout «commit»` moves the HEAD and changes the working directory like `git reset --hard «commit»` does but it's "safer": it won't let you checkout without actually committing your index (staging area) and will attempt to merge your current working directory with the target one, and error-out if it's not possible to cleanly do it.

