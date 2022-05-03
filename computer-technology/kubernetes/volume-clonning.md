# Volume cloning
You can create a clone of a volume by specifying a [[persistent-volume-claim]] with the [[storage-class]] of `cloning` and specifying a `dataSource` `PersistentVolumeClaim` from which to create the clone.
