---
tags: caveat
---

# Never rewrite published history
When you use [[history-rewriting]] commands (such as [[rebase]]), you're abandoning your commits and creating new ones that are similar, but not the same. If someone else has already pulled your previous commits and based some work on them, when you push your rebased commits you're rewritting history, which can get really messy and produce a lot of conflicts when merging.

### Exceptions
This can be less severe if you can ensure no one else had a chance to use your published history. For example:

* If you're the only one working on that branch, and only pushed as a back-up.
* If you're using a [[forking-workflow]] and doing it on your own fork (where no one else is expected to be collaborating)
