# Docker Networking
Docker has a rich networking model with abstractions that can be used with a variety of `docker network` commands, some of the features it offers are:

* Can connect container across different hosts. ([[overlay-network]])
* Containers can be stopped and restarted without needing to update connections. ([[dns]])
* You don't need to worry about the order in which you run the containers or create a container before connecting to it.

### Example
You can create a new network with:
```
docker network create app
```

And then connect a container to it by doing:
```
docker run -d --net=app «image»
```
