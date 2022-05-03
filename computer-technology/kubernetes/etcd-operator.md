# `etcd` operator
An operator for managing `etcd`. It takes care of:
* Creating and destroying `etcd` instances
* Resizing
* Failovers
* Rolling updates
* Backup and restore

It can be installed with [[helm]]. I guess this is a way of managing `etcd` inside Kubernetes? But it's weird, doesn't Kubernetes need an `etcd` database before being able to do anything?
==TODO: Investigate this==
