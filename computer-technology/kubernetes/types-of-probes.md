# Types of probes
For both [[liveness-probe]]s and [[readiness-probe]]s, you have several types of probes to choose from:

* HTTP probes send an HTTP request to the container
* TCP probes try to setup a TCP connection to the container. This is useful for non-HTTP software such as databases
* `exec` probes are the most versatile: they run a command on the container, and if the result is non-zero, the probe fails.
