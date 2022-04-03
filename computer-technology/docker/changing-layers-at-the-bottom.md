---
tags: tip
---

# Keep changing layers at the bottom
When writing a Dockerfile it's a good practice to keep any commands (layers) that are likely to change at the bottom. Every time you run a build, all the layers below the ones that changed must be rebuilt (the others are [[layer-cache|cached]]), so this practice keeps these to a minimum.
