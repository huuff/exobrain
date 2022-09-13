---
tags: comparison
---

# `command` vs `$(command)`
Both are ways to run a command substitution in a shell, so you might have to choose between one of the two. There are two important differences:

* `command` is older, and likely to be supported by more shells. I don't think that's really an issue in 2022 though.
* `$(command)` can be nested without any escaping, while `command` will require escaping any nested backticks.

In general, `$(command)` is the best choice.
