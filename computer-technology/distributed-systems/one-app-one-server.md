# One app, one server
A traditional principle of distributed systems is to keep each application in its own server (this might be its own container or virtual machine), this can have several benefits:
* More leeway in scaling some parts of the stack depending on usage without being forced to scale others
* One resource-intensive app won't starve the other. Such as a database and a backend in the same server.
