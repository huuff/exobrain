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
A newer version. A most notable feature is that a process cannot join multiple `cgroups` for different controllers.