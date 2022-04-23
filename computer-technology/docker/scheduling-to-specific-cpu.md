---
tags: how-to
---

# Scheduling a container to a specific CPU
You can set a container to a specific CPU (or core) in the host machine to prevent [[context-switch|context switches]]. You can do so by specifying the `--cpuset-cpus` flag on `docker run` or `docker container create`. e.g. `--cpuset-cpus 0`

==Can you set several CPUs? how? separated by commas?==
