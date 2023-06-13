---
tags: caveat
---

# Don't rebase commits that are already pushed
When you [[rebase]], you're abandoning your commits and creating new ones that are similar, but not the same. If someone else has already pulled your previous commits and based some work on them, when you push your rebased commits you're rewritting history, which can get really messy and produce a lot of conflicts when merging.
