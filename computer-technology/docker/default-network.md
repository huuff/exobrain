---
tags: caveat
---

# Default network
The default `bridge` network maintains compatibility with legacy Docker versions and thus can't use modern, advanced features such as service discovery and load balancing, so it's a good idea to create your own `bridge` network and put your containers in it.
