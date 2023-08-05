---
tags: caveat
---

# The first commit given is exclusive for some commands that take ranges 
For example, if you want to [[interactive-rebase|rebase]] everything after `commit A`, `git rebase --interactive «commit A»` does exactly that: prompts you to rebase everything after `«commit A»` but not `«commit A»`.

Similarly, when [[cherry-pick|cherry-picking]] a range of commits as in `git cherry-pick «commit A»..«commit B»`, `«commit B»` is included, but not `«commit A»`.

You can work around this by using [[ancestry-references]] such as `git cherry-pick «commit A»^..«commit B»`
