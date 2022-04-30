# `nsenter`
This command allows entering any Linux [[namespace]].

## For containers
It might be useful for debugging [[docker]] containers when the [[docker-daemon]] is not responding, and also will allow running commands on the container as the host's `root` user, which might be useful for emergency situations.

### Example
If you want to enter the namespaces of a [[docker]] container, first you have to find its PID:

```bash
PID=$(docker inspect --format \{{.State.Pid\}} «container id»)
```

Then you can run `nsenter`:

```bash
nsenter --target $PID --mount --uts --ipc --net --pid
```

The flags after `--target` specify which namespaces to enter.
