# Volume
A volume is a special designated directory that bypasses the [[union-filesystem]] and that is mounted from the host to the Docker container. These can be used for:
* Data that needs to be persisted between container restarts, such as database data
* Data that needs to be shared among several containers
