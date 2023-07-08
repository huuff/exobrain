# Object types
Objects can have several types such as:

* Blob objects are normal content-holding files.
* Tree objects store full directories. You can check the current directory object with `git cat-file -p master^{tree}`
* Commit objects reference a tree object with the full contents of the working directory as it was for that [[git/commit]], and also all commit metadata such as author, time of commit and parents
