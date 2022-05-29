# Checkpoint and Restore in Userspace (CRIU)
It's a tool that can freeze the state of a running container, saving its state on disk. That state can then be restored to recreate the container in its original state. It's especially useful for debugging, migration and snapshots.

## Usage in [[docker]]
CRIU can be used in [[docker]] through the `docker checkpoint` subcommand, the `experimental` flag must be enabled to activate it.

1. You can create a snapshot with `docker checkpoint create --checkpoint-dir=«checkpoint directory» «container»`
2. You'll then need to create the same container with `docker create`
3. Then you can start it with the previous state with `docker start --checkpoint-dir=«checkpoint directory» --checkpoint=«checkpoint name»`
