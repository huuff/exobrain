# Containers are designed to be immutable
Containers are designed to be immutable and storing data in them is considered bad practice.

Some solutions to this are, in Docker for example, using [[docker/volume]]. However, I've seen also mentioned that this creates a coupling between the container in the host, so also not best practice.

In my opinion this severely impacts the usability of containers. Container technologies such as [[docker]] or [[kubernetes]] make it easy to run immutable services, but storing data still has a lot of challenges. Running immutable services in a reproducible, automatizable way is, however, not an especially hard problem (for example, by using [[nix]], statically compiled software like [[golang]] programs or virtual machines for languages, like the [[jvm]]).
