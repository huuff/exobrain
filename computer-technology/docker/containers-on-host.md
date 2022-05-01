# Accessing container's filesystems on host
Every container has a subdirectory on `/var/lib/docker/containers/«container id»`. There you can find:

* Some files that are always bind-mounted into containers such as `resolv.conf`, `hostname`, `hosts`
* The JSON configuration that backs the `docker inspect` command in `config.v2.json`
* The networking information in `hostconfig.json`

It's nice to explore how containers are represented in the host, and also for inspecting them in the case of failure.
