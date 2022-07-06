# `--privileged`
This flags makes a container fully privileged. Even though [[root-default|containers run as root by default]], some [[capability|capabilities]] and system calls are disabled by default. Also, there is a [[app-armor|default AppArmor profile]]. `--privileged` disables all of this to create a fully all-powerful container.

A subtle danger of this is, that since this flag exists, a naive user might think that not using the `--privileged` flag makes a container unprivileged.
