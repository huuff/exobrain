# Git's storage model
Traditional VCSs usually store only the deltas (changes) between older and newer versions of your files. That is, every time you make a change to a file, only that change is stored, along with the file's original (initial) version. Then, when checking out that file, the VCS recreates the latest version by re-applying each change on top of the original version.

Git's storage model differs in that it stores a full snapshot of the filesystem (the repository at a specific point in time), and any subsequent changes just create a new snapshot of the new state. This might look more inefficient, but git manages to make it faster because:

* In git, deltas are actually calculated, but only performed as a performance optimization. That is, even the default strategy is to store full snapshots, it periodically runs a process ([[git-gc]]) that transform snapshots into a original version and a series of deltas ([[packfiles]])
* All content in git is stored compressed with zlib
* The deltas are stored in the reverse order: the latest snapshot is stored intact and older versions are kept as deltas. This greatly speeds up the checking out of files, since the most recent version is the one you're more likely to check out. Traditional VCSs, on the other hand, need to reconstruct the most recent version from the oldest one, so the time it takes to rebuild the latest version increases linearily with the size of the project.
