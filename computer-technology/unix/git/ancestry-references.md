---
tags: comparison
---

# Ancenstry references
You can use `^` or `~` as a postfix operator to refer to a commit relative to another, for example:

* `HEAD^` for the parent of `HEAD`
* `HEAD~2` for the second ancestor of `HEAD`

### Differences
There are, however, some subtle differences:

* in `^«number»`, `«number»` doesn't refer to an arbitrary number of ancestors, but to one of the branches of a merge commit. Thus, for a merge commit `«commit»^1` refers to the first merged branch and `«commit»^2` refers to the second one. This also means that you can't just travel any number of ancestors by using a number, instead, you have to concatenate carets. For example, the equivalent of `HEAD~3` is `HEAD^^^`
* in `~«number»`, it's much simpler. `HEAD~«number»` is just the `«number»`-th ancestor of `HEAD`
