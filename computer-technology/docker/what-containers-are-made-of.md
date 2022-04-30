# What containers are made of
Simplifying, containers are just a collection of Kernel's features for isolating a workload, these are:

* Process ID namespace: So a container can only see its own processes
* Network namespace: So container have their own network stack and IP, and can only communicate to containers they are allowed to
* Mount namespace: (A `chroot`?) So a container has its down root directory (`/`) and can't access host's directories (that are not mounted as a [[volume]])
* Inter-process communication namespace: For accessing shared memory within a container without being able to access host's memory
* User namespace: To separate container's users from host's users, though [[user-id-space-is-share|it's not enabled by default]]
* UTS namespace: So each container has its own hostname
* [[cgroups]]: To limit the access to resources.
