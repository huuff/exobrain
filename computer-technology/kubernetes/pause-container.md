# Pause container
The pause container is the one that makes the [[pod]] possible. It starts before any other container in the pod and only runs the `pause` command. The pause container has a few responsibilities:

* It creates and holds together all the [[linux/namespace|namespaces]] that compose the pod (such as the network namespace) so that even if the containers crash, the namespaces are not destroyed.
* I'm a bit unsure about this one, but I think it also makes the work of an init system and reaps [[zombie-process|zombie processes]], but only if the PID namespace sharing is enabled for the pod.

