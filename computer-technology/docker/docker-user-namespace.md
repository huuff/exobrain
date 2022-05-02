---
tags: best-practice
---

# Using [[linux/user-namespace|user namespaces]] in Docker
This is a very good practice since there are some security concerns in Docker's defaults such as 

* [[root-default]]
* [[user-id-space-is-shared]]

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

