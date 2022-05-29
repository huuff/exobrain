# `kubectl capture`
A plugin to use [[sysdig]] to capture the behavior of a container. It creates a new container to inspect the target container, and a Sysdig capture file is created, that can then be inspected through `sysdig-inspect`
