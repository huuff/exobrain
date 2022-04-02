---
tags: how-to
---

# Debugging a build
If a build fails for any reason, you can just create a container based on the image of any intermediate layer before the one that failed, log into it, and try the commands manually to see what's happened and find a solution.

### Example
```
$ sudo docker build -t="jamtur01/static_web"
Sending build context to Docker daemon
Step 1: FROM ubuntu:18.04
  ---> 8dbd9e392a96
Step 2: LABEL maintainer="james@example.com"
  ---> Running in d97e0c1cf6ea
  ---> 997485f46ec4
Step 3: RUN apt-get update
  ---> Running in 85130977028d
  ---> 997485f46ec4
Step 4: RUN apt-get install -y ngin
  ---> Running in ffca16d58fd8
Reading package lists...
Building dependency tree...
E: Unable to locate package ngin
2014/06/04 18:41:11 The command [/bin/sh -c apt-get install -y ngin] returned a non-zero code: 100
```

As you can see, the latest layer before the failure is `997485f46ec4`. You can just run that layer interactively to try the command manually:

```bash
$ sudo docker run -t -i 997485f46ec4 /bin/bash
```

And you'll find you just spelled `nginx` wrong
