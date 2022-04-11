---
tags: comparison
---

# Bind mount vs volume
Actually, I don't quite understand this so much but:

Bind mounts are managed by the host and the container must be aware of the host filesystem. They must exist before the container is created. Volumes, on the other hand, are managed by Docker, they can be created when the container is instantiated and are more decoupled from the host. Many different drivers are available for volumes like using cloud storage, which isn't possible for bind mounts.
