# Packfiles
Since git stores a new object for every version of a file, it eventually stores many copies of the same file even with slight modifications. To keep the repository size low and optimized, git regulary makes *packfiles* that keep the common information of all these objects so only the *deltas* (differences) between versions are stored and the common part is referenced.

These packfiles are made after an invokation of the [[git-gc]] command. You can find them under the `.git/objects/pack`.

Files under the `.git/objects/pack` might either be indexes (`.idx`) or actual *packfiles*: The packfiles contain all the common information of several objects in the same files and the indexes contain references and offsets to parts of the *packfiles* to quickly find information in the.

You can check what's inside a packfile by running `git verify-pack «path to packfile»`.

It's interesting to note that git actually stores older versions as deltas of the newer versions instead of the other way around. That's so because it's more likely that you'll want to firstly access the newest version of the file, so it's stored intact so rebuilding the [[git/working-directory]] is faster.
