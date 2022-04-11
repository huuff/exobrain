---
tags: how-to
---

# Mount an in-memory storage
Sometimes you want to have passwords or other sensitive data available to your application inside your container. To prevent that data from going to the disk and have it only on memory, you can mount a `tmpfs` filesystem by doing:

`docker run --mount type=tmpfs,dst=/tmp`
