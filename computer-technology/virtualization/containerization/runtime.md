# Container Runtimes
If I understood well, there are two types of runtimes:

* [[oci-runtime|Low level runtimes]] are in charge of creating the containers and running them (i.e, creating its [[linux/namespace|namespaces]]). These are also called OCI-Layer runtimes since they adhere to the OCI (Open Container Iniciative) specification. Examples are [[runc]] and [[lxc]]
* High level runtimes, which build, install and manage images, also provide an API so the containers run by them can be managed. [[containerd]], [[docker]] and [[podman]] are examples of high-level runtimes.
