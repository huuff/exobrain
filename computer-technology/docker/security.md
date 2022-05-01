---
tags: index
---

# Docker security
First, there are a couple of very important caveats you should be aware of:

* [[user-id-space-is-shared]]
* [[root-default]]

These are easily resolved, though:

* [[run-as-user]]
* [[uid-remapping]]
* [[run-user-asap]]
* [[remove-suid-and-sgid-binaries]]

Also, other security features/tips are:

* [[capabilities|Remove unneeded capabilities]]
* [[make-topmost-layer-read-only]]
* [[switching-runtimes|Use a more-secure runtime]] such as [[gvisor]] or [[kata-containers]]
