# Volume provisioning
There are two main ways:
* Static provisioning: Just create the `PersistentVolume` objects and let other objects claim them.
* Dynamic provisioning: Specify a `StorageClass` that's configured for dynamic provisioning, and then a `PersistentVolume` may be provisioned on the fly.
