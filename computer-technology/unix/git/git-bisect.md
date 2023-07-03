---
tag: definition
---

# `git bisect`
The most awesome tool in git. With `git bisect`, you can find exactly in what commit a certain bug/feature/regression was introduced. It does that by receiving a "good" revision, a "bad" revision and then interactively stepping through all intermediate revisions using a binary search algorithm. For each revision you specify whether it's "good" or "bad" to inform `git bisect` how to proceed. In order to start it you need to run:

* `git bisect start` to start the process
* `git bisect good «commit»` to indicate a commit where you know the bug you're looking for wasn't present.
* `git bisect bad «commit»` to indicate a commit where you know the bug was present.

Finally, you can run `git bisect reset` in order to end the bisect mode when you've found what you're looking for. Once inside the bisect mode, git automatically checks out a commit inside the marked `good` or `bad`. Then you can specify whether the checked out commit is good or bad with `git bisect good` or `git bisect bad` (without providing a commit id) to further narrow the search.

### `git bisect run`
Alternatively, you can automate the process rather than following it interactively by running a script with `git bisect run «script»`. This script will be run on every check out of the project and the commit will be marked "good" if it exits with code 0 or "bad" otherwise. Note that this script must persist any changes in your [[git/working-directory]], since it will change with every checkout.
