# Pausing and unpausing a container
You can pause a running container without completely stopping it with the `docker pause «id»` command. Then you can resume it with the `docker unpause «id»` command.

### Use cases
* You want to take a snapshot of the running container's filesystem
* You need some emergency resources on the host

### Under the covers
It leverages the [[cgroups]] freezer, which basically prevents the container from being scheduled until it gets unpaused.
