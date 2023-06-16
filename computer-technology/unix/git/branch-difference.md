---
tags: how-to
---

# Get the difference between two branches
You can use the `..` operator (or the `--not` flag) to get the difference between two branches:


### Example
To show the commits in contrib that are not in master.

```sh
git log master..contrib
```

```sh
git log contrib --not master
```
