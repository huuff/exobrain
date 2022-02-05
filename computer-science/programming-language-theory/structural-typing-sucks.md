---
tags: sucks
---

# Things that suck about structural typing
* The error messages get huge, suddenly it's not "`Type A is not compatible with type B`" but "`Type {<huge ass list of properties>} is not compatible with type {<another huge list of properties>}`"
* Two types that are structurally equal are semantically equal, so you can't have two different types `Dollars` and `Euros` if both are aliases to `number`, you can just add them together resulting in a wrong result.
* Typos might not be catched while the result is a correct type itself. This is why [[typescript]] has [[excess-property-checking]]
