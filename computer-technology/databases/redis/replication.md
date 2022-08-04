---
tags: how-to
---

# Replication
Redis' [[databases/replication]] is really simple:
* A master only must have correct [[redis/snapshotting]] configuration ==is this true? only for snapshotting? strictly necessary?==, that is: a correct `dir` directory configuration and `dbfilename` filename configuration.
* A slave (i.e. a replica) must only specify what node it replicates from, either through configuration such as `slaveof «host» «port»`, through a command such as `SLAVEOF «host» «port»` or the command line argument `--slaveof`

A replica can be promoted to a leader by issuing the `SLAVEOF no one` command. Or a master can be specified by using the `slaveof no one` configuration.
