# Container Runtimes
If I understood well, there are two types of runtimes:

* [[oci-runtime|Low level runtimes]] are in charge of actually starting a container and managing its [[linux/namespace|namespaces]]. These are also called OCI-Layer runtimes since they adhere to the OCI (Open Container Iniciative) specification.
* High level runtimes, which build, install and manage images, also provide an API so the containers run by them can be managed. [[containerd]], [[docker]] and [[podman]] are examples of high-level runtimes.
