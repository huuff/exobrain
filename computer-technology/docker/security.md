---
tags: index
---

# Docker security
First, there are a couple of very important user-related caveats you should be aware of:

* [[user-id-space-is-shared]]
* [[root-default]]

These are easily resolved, though:

* [[run-as-user]]
* [[docker-user-namespace]]
* [[run-user-asap]]
* [[remove-suid-and-sgid-binaries]]. Or maybe even better, run with `--no-new-privileges`

Also, other security features/tips are:

* [[capabilities|Remove unneeded capabilities]]
* [[make-topmost-layer-read-only]]
* [[switching-runtimes|Use a more-secure runtime]] such as [[gvisor]] or [[kata-containers]]
* [[app-armor]]

And finally, some other caveats:
* [[docker-build-dangers]]
