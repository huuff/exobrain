# `docker run -it`
This allows for running a command interactively in a Docker container, such as `docker run -it «container» bash`. It's composed of two flags:

* `--interactive` or `-i`: Keeps `stdin` open for the container
* `--tty` or `-t`: Allocates a pseudo-tty terminal for the container
