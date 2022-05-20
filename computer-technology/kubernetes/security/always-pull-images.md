---
tags: tip
---

# Use `imagePullPolicy: AlwaysPullImages`
Downloaded images are cached in the node for future use. This allows an attacker to easily access these images and can be deployed without ensuring proper authorization to the image registry.
