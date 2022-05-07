---
tags: tip
---

# Apply an [[hpa]] only to a `Deployment` object
If you apply it to a `ReplicaSet` you'll bypass the [[rolling-update]] feature of `Deployment`. It's better to apply to a `Deployment` and thus the HPA will take charge of scaling while the `Deployment` will take care of rolling updates.
