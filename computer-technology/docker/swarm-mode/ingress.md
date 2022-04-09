# Ingress Mode (or Ingress Network)
This is the default publishing mode in Docker Swarm: When the port of a container is published, it's actually accessible from any node, not only the node it's actually running on. The alternative is "Host Mode", where every container is accessible only from the node it's running on.

The ingress mode uses a layer 4 routing mesh called the **Swarm Mode Service Mesh**.
