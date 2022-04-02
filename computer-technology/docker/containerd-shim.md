# `containerd-shim`
An integral part to decoupling containers from the Docker daemon (allowing features like upgrading the Daemon without stopping containers).

When [[containerd]] starts a container, it uses [[runc]] to create it. However, this [[runc]] process exits as soon as its job it's done. After the container is created, [[containerd-shim]] becomes the parent of the container process. This allows running a lot of containers without the overhead of running a lot of [[runc]] instances.

`containerd-shim` is a lightweight process that enables features such as:
* Keeping the `STDIN` and `STDOUT` streams open and operable for the container, so that when the Docker daemon restarts, the container doesn't stop due to pipes being closed.
* Communicating the status of the contaner to hte Docker daemon.
