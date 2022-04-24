---
tags: how-to
---

# Managing capabilities
You can add or remove [[kernel-capabilities]] using `--cap-add` or `--cap-drop` when running your containes. Usually, documentation on the cernel uses capability names prefixed with `CAP_`, but for Docker you have to remove that prefix.

You can check the added or dropped capabilities of a container by inspecting and checking `.HostConfig.CapAdd` and `.HostConfig.CapDrop`
