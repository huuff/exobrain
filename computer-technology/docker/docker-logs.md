# `docker logs`
This command allows us to see the standard and error output of a container, some useful flags:

* `-f` follow logs, just like `tail -f`
* `-t` prefixes logs with a timestamp

### In the hosts' filesystem
These logs are located in `/var/lib/docker/containers/«container id»`. There you'll find the log files where each line is a JSON object representing a log message.
