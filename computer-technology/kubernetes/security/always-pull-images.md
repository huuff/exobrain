---
tags: tip
---

# Use `imagePullPolicy: AlwaysPullImages`
Downloaded images are cached in the node for future use. This allows an attacker to easily access these images and can be deployed without ensuring proper authorization to the image registry.

### Caveats
In a scale-from-zero environment such as [[knative]] where startup times are essential, `AlwaysPullImages` can be prohibitively slow with multi-second pull times.
