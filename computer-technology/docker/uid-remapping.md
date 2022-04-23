---
tags: best-practice
---

# UID remapping
There are some very dangerous facts about Docker's usage of user IDs:

* [[root-default]]
* [[user-id-space-is-shared]]

A very generic and effective solution is to map the container's UIDs to different host's UIDs. For example, a mapping of `0 -> 1000` would make UID `0` (`root`) in the container, an UID `1000` (unprivileged user) outside of it.

## How to do it
==I'm not sure this is all there's to it! Test it deeply==

Add an UID mapping to `/etc/subuid` and a GID mapping to `/etc/subgid` to the `dockremap` user:

To map UID `0` to UID `5000` for a max of `10000` UIDs:
* In `/etc/subuid`:
```
dockremap:5000:10000
```

* In `/etc/subgid`:
```
dockremap:5000:10000
```
