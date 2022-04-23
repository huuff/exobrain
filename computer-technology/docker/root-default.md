---
tags: caveat
---

# `root` is the default user that runs a container
In an incredibly careless security misdesign, Docker runs all containers by default as the `root` user. This has many security implications since, [[user-id-space-is-shared]]. Other container technologies like [[lxc]] don't have this insecure default.
