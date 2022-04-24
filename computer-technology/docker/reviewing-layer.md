---
tags: how-to
---

# How to review filesystem changes in a [[layer]]
Use the `docker container diff «image»`. ==Does this show only the topmost layer?==

The output uses the following notation:
* `A` for an added file
* `D` for a deleted file
* `C` for a changed file
