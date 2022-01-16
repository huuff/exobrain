---
tags: sucks
---

# Things that suck about structural typing
* The error messages get huge, suddenly it's not "`Type A is not compatible with type B`" but "`Type {<huge ass list of properties>} is not compatible with type {<another huge list of properties>}`"
* Can't have marker interfaces. Two types that are structurally equal are also semantically equal.
