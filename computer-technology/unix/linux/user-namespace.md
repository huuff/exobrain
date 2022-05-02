# User namespace
I'm frankly quite confused as to whether there is a difference between a user namespace and a UID remapping, of whether a user namespace is necessary to have a UID remapping in place.

Anyway, a user namespace separates the users available inside the namespace from the host's users. This is the only [[namespace]] that doesn't require root privileges to create. You can specify it for the [[nsenter]] or `unshare` tools with the `--user` flag.

## UID remapping
You can remap UIDs by editing the `/proc/«pid»/uid_map` file. There are three fields there:
* Lowest ID to map from the namespace perspective
* Lowest ID to map from the host perspective
* Number of IDs to map

For example, to map the namespace's `root` UID (0) to the host's UID 1000 you do:

`sudo echo '0 1000 1' > /proc/«pid»/uid_map`
