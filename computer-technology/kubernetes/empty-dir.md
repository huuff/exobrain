# `emptyDir`
This is the most basic volume type. An `emptyDir` volume is just an empty directory on the host. It's not persistent and will be removed when the pod is stopped. Some interesting features/use-cases
* This is ideal for intra-pod communication
* You can make it a ramdisk with the `medium: Memory`
* It stays around if the pod crashes, which is useful for debugging
