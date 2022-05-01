# Docker compose
It's a simple tool to orchestrate containers. You can describe the whole stack in a `docker-compose.yaml` file where you can link containers, expose ports, specify dependencies, etc. It's not powerful enough for complex use-cases (you might need [[kubernetes]] for that), but useful for development.

There are two commands to use Docker compose:
* `docker-compose` is the older one, and a separate binary from Docker's. It runs every build and container sequentially.
* `docker compose` is the newer one, embedded into docker. It might be faster because it builds containers in parallel, however this makes it harder to me to follow the process if I'm troubleshooting build errors.
