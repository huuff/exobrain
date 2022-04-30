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

Also, other security features are:

* [[capabilities]]
