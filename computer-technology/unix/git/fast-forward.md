# Fast-forward
A fast-forward can be understood as a type of merge that actually neither needs a merge commit or a [[history-rewriting]] command like a [[rebase]].

In a fast-forward, the `ours` side of the merge is stricty an ancestor of the `theirs` side, so any changes in the `theirs` side can just be applied on top of the `ours` side.
