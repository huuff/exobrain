---
tags: comparison
---

# Declarative vs Imperative configuration
Declarative is the clear winner:

* It serves as documentation on the state of the system
* It allows self-healing, if the current configuration is not the same as the declared configuration, an automated process can reconcile them
* It can be put into version control, which allows better tracing of it, rolling back to previous configurations and all usual [[gitops]] features
