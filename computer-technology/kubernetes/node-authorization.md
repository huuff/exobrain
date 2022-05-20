# Node authorization mode
This authorization mode grants access to a [[kubelet]] to access services, endpoints, nodes, pods and persistent volumes. The `kubelet` is identified as part of the `system:nodes` group with a username of `system:node:«node name»`.
