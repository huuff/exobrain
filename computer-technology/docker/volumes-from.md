# `volumes-from`
A pretty nice command line arg (or a [[docker-compose]] property) that makes a container mount any volumes from other specified container

It copies volumes transitively, that is, if you copy the volumes from a container, you also copy the volumes that container copied from another.

There are three situations in which you can't use `volumes-from`:
* When you need to copy the volumes to a different mount point than the one in the source container. `volumes-from` always uses the same mount point.
* When that mount point conflicts with another. Only one of the two will be mounted.
* When you need to change permissions. `volumes-from` uses the same permissions as in the source.
