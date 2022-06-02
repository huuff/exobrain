---
tags: pattern
---

# Controller
A controller is a process (might be running inside kubernetes or not) that watches the API and takes some actions through it in reaction to specific events. Its main purpose is to reconcile the observed state with the desired state. Kubernetes provides a lot of its functionality through built-in controllers.
