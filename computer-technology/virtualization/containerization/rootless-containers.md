# Rootless containers
Traditionally, containers have been run as `root`. This has severe security implications since, due to the limited isolation, a `root` user inside a containe might be the same as the `root` user outside of it. In recent times there has been a movement to [promote the use of rootless containers](https://rootlesscontaine.rs/).

* Rootless containers take advantage of [[linux/user-namespace|user namespaces]] to map the `root` user inside a container to a different one outside of it. 
* Another important consideration is running daemonless builds, since [[docker-build-dangers|there are other dangers associated to building containers]]

This approach, however, isn't a panacea. This feature increases complexity and some containers won't be able to run easily as rootless containers. Check [[docker-user-namespace]].

[[podman]] is a tool that tries to implement rootless containers by default along with rootless builds.
