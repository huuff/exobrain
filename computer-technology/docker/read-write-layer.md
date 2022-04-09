# Read-write layer
This is the topmost [[layer]] in Docker containers, it's the only one where changes are allowed to be made to support the normal operation of the guest container. It might also be called:

* *local storage*
* *ephemeral storage*
* *graphdriver storage*

This layer is actually located on the host and accessible on `/var/lib/docker/«storage driver»/...`.

This layer is coupled to the container lifecycle: it's created when the container is started and deleted when it's destroyed. Thus, it's unsuitable for any kind long-lived data.
