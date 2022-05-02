# Linux namespaces
A tool to isolate processes from others that is embedded into the kernel, the namespaces are:

* *Mount namespace*: Offers a stronger isolation than a `chroot` since it goes down to the kernel level so that even system calls like `mount` and `unmount` are isolated.
* *UTS namespace (Unix Timesharing System)*: Allows the process have its own hostname and domain name
* *IPC namespace*: Allows processes in the namespace to use shared memory to communicate without being able to affect host's shared memory.
* *PID namespace*: Only allows the process to see and send signal to processes in the same PID namespace.
* *Network namespace*: Allows processes to have their own network stacks, IPs and open ports that are unrelated to the host's.
* *User namespace*: So the users are not shared inside the namespace and the host. This means that an user with ID 1000 inside the namespace is not the same user as UID 1000 outside of it.

## Working with them
A process can only be in exactly one namespace.

* You can list the existing namespaces with the `lsns` command.
* You can enter a namespace using the [[nsenter]] command.
* You can create a namespace with the `unshare` command.
