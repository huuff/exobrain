---
tags: tip, best-practice
---

# Declare functions with a subshell syntax to get stricter scopes
If you declare a function with the usual syntax of

```bash
function f() {
  # ...
}
```

This means that variables declarated there will be [[dynamic-scoping|dynamically scoped]], and a lot of subtle interactions can happen between this call and any calls the script makes.[^1]

However, when using the following syntax:

```bash
function f() (
  # ...
)
```

The function runs in a subshell, and thus, it runs with lexical scoping. With not only guarantees better semantics but also allows the [[trap-exit-for-deferred-cleanup|EXIT trapping trick to work]].

[^1](https://cuddly-octo-palm-tree.com/posts/2021-10-31-better-bash-functions/)
