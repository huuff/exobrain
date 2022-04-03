# Restart policies
You can run a container with a restart policy by adding the `--restart` flag. The available policies are:

* `always`: Always restart the container. Except when explicitly stopped. However with this setting, whenever you restart the Docker daemon, even explicitly stopped containers are restarted.
* `unless-stopped`: Actually the same as `always`, but if you restart the Docker daemon, explicitly started containers will not be restarted.
* `on-failed`: The container will only be restarted when the exit code is non-zero.
