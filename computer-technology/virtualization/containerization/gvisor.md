# gVisor
Sandboxes a container by intercepting systems calls in the same way as a [[hypervisor]] does for virtual machines. It achieves emulation by implementing these system calls itself in a sort of [[paravirtualization]]. It consists of the following processes:

* *Sentry* (although the process is called sandbox): It intercepts system calls and is heavily sandboxed with [[seccomp]]
* *Gofer*: It's the one that interacts with files since *Sentry* is so sandboxed it can't do it directly.

## `runsc`
It's an executable that allows running OCI-compliant bundles, and it's a fully-compliant [[oci-runtime]]. It provides some subcommands like:
* `runsc spec`: Create the container from the `config.json` in the same directory? (Not sure)
* `runsc run`: Run a command in the container created by `runsc spec`
* `runsc list`: List all running containers.

## Better isolation
It provides much better isolation than traditional [[containerization]], one way to check this is that running `ps` from the host, you won't be able to see exactly which processes are running inside the containers (contrary to [[docker]], for example)
