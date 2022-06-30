# `cgroups`
These limit the resources available to a process such as:
* CPU shares
* Memory

## Using them
The kernel communicates this information through a set of pseudo-filesystems that reside at `/sys/fs/cgroup`. Managing `cgroups` involves writing to the files and directories within that hierarchy.

You can see the different types of available `cgroups` by doing `ls /sys/fs/cgroup`.

You can create a new `cgroup` simply by creating a new directory under `/sys/fs/cgroup/`, and the kernel automatically fills it with the necessary directory structure.

To add a process to a `cgroup` it's simply a matter of adding its PID to the `cgroup.procs` file.

## `cgroups` V2
A newer version. A most notable feature is that a process cannot join multiple `cgroups` for different controllers. I've heard that `cgroups` V2 is essential to the development of [[rootless-containers]], but I don't know specifically what feature of it makes it possible.

Also, `cgroups` V2 is more secure than V1 because there are [known escape attacks on V1](https://web.archive.org/web/20220122090123/https://blog.trailofbits.com/2019/07/19/understanding-docker-container-escapes/)
