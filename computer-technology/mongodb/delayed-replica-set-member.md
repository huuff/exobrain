# Delayed replica set member
A [[replica-set]] member can be *delayed*, which means it will only replicate data from primary after some specific delay. This can be configured by setting the `slaveDelay` field in the configuration document with the number of seconds we want that member to be delayed by. This also forces us to make it [[hidden-replica-set-member]] and thus, have a priority of 0.

This configuration can be useful if we want this member to act as a backup in case some kind of catastrophic failure has happened and replicated to the rest of members, such as an user dropping an entire database by error.
