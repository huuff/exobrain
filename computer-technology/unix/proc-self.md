# `/proc/self`
This directory contains data about the currently running executable, for example `cat /proc/self/status` will give you info on the `cat` executable, such as the enabled [[seccomp]] policies.

## `/proc/self/exe`
This contains the currently running executable! It's fucking magic an experiment:

```sh
cat /proc/self/exe > mycat
# There's no cat binary since it's part of `coreutils` so `mycat` is just `coreutils`, therefore...
./mycat --coreutils-prog=cat file.txt
# It's the same as `cat file.txt`!
```

This was used in CVE-2019-5736 to modify the [[runc]] executable to allow container escape.
