# Container resource limits
You can place constraints on how many resources a container can take during instantiation using `docker run` or `docker create` with flags such as:

* `-m` or `--memory` for memory limits, for example `-m 256m` or `-m 1g`
* `--cpu-shares` for a relative amount of time a container can use the processor, for example a container with `--cpu-shares 1024` will be scheduled twice as much time as one with `--cpu-shares 512`, that is, the first has two CPU cycles for each one the second has.
