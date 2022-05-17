# `Secret`
Mostly the same as a [[config-map]] with a few differences:
* Fields inside `data` must be base64 encoded. This obviously provides no security benefit at all, but allows storing binary data. However the encoding will take space, limiting the maximum space to arount `700` bytes.
* Kubernetes only distributes the secrets to the nodes where there is a [[pod]] that actually uses it.
* When mounted into a pod, it's mounted into a `tmpf` filesystem entirely into memory, so it's not directly stored into the disk.
