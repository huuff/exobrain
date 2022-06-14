---
tags: best-practice
---

# Always set resource requests and limits
This has several benefits:
* It will make resource usage more predictable
* It will prevent pods from starving other pods in the node by setting appropriate limits
* It helps managing priority for pods when resources are scarce through [[quality-of-service]]

There are some useful tools for doing this:
* [[limits-as-requests]]
* [[vpa]]
