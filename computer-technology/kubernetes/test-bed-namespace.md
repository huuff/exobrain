---
tags: tip
---

# Test-bed namespace
It's a good idea to have a [[namespace]] with no [[network-policy|network policies]] (or ones not very restrictive) so you can test your software without having to worry about the network policy. You can even use this namespace to run some software that audits the usual network traffic of your deployment in good conditions and use it to develop a good network policy for it.
