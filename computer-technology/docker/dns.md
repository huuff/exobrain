# DNS in Docker containers
Docker offers DNS capabilities to simplify service discovery, these include:
* A default DNS service for resolving container's IPs from another containers by their name. **Beware** the default bridge network does not support this feature, but any other user-defined network does
* You can easily specify a DNS server when running a container with `docker run` by using the `--dns` flag
