# Docker's userland proxy
A separate process Docker launches to route host's traffic to the appropriate container. ==I'm not use whether this is still used or the default but I think it is?==

It incurs a noticeable overhead, but can be disabled to use hairpin [[nat-translation]] to route traffic from host to containers by running the [[docker-daemon]] with the `--userland-proxy=false` flag. This is supposedly more performant.
