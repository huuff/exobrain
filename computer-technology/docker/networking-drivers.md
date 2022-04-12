# Networking drivers
* `bridge`: This is the default driver and the [[default-network]] uses it. It provides connectivity among Docker containers running in the same host.
* `host`: Host-only driver (and there's a default network for it). It runs the container outside of any networking namespace, and thus, the container has full, unrestricted access to the whole of the host's networking stack.
* `null`: The one the default `none` network uses. It provides no connectivity whatsoever
* `overlay`: For an [[overlay-network]] that provides connectivity among containers running in different hosts.
