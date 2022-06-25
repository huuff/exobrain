---
tags: tip
---

# Immutable Configuration Resource
Since Kubernetes v1.21, [[config-resources]] can be made immutable to provide some first-class support for useful patterns such as [[versioned-config-map]] and [[immutable-configuration-pattern]]. To do so, just add the field `immutable: true` to your `ConfigMap` or `Secret`.
