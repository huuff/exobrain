# Using raw block volumes in Kubernetes
These can be used for [[persistent-volume]]s by specifying `volumeMode: Block`. They can be very useful for applications that need high and predictable performance such as databases.

Raw block volumes are not mounted as standard volumes, but instead become available under `/dev` as a device. This allows the pod to write to the device directly bypassing any filesystem drivers. This might be faster in theory, but might also be slower if the application benefits from filesystem buffering.
