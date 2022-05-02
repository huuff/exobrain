---
tags: best-practice
---

# Using [[linux/user-namespace|user namespaces]] in Docker
This is a very good practice since there are some security concerns in Docker's defaults such as 

* [[root-default]]
* [[user-id-space-is-shared]]

AFAIK (which is not much), applying user namespaces and UID remapping to containers might be the basis of [[rootless-containers]]

## How to do it
Add an UID mapping to `/etc/subuid` and a GID mapping to `/etc/subgid` to the user that will run the containers. I'm not entirely sure this is true, but I think Docker uses a special `dockremap` user to take advantage of this configuration.

To map UID `0` to UID `5000` for a max of `10000` UIDs:
* In `/etc/subuid`:
```
dockremap:5000:10000
```

* In `/etc/subgid`:
```
dockremap:5000:10000
```

## Caveats
There's obviously some limitations, which might not really matter that much considering that the security benefits are huge:

* User namespaces are incompatible with sharing a process ID or network namespace with the host.
* Even if a process is running as `root` inside the container, this doesn't means it has full `root` privileges. Some [[capability|capabilities]] might not be available. For example, if it doesn't have the `CAP_NET_BIND_SERVICE`, it can't bit to a low-numbered port.
* When the containerized process interacts with a file, it'll need the appropriate permissions to do it. If the file is mounted from the host, then it's the host's effective ID the one that matters.

It might also be somewhat confusing when finding that touching shared files involves different permissions on the host than those visible to the containers.
