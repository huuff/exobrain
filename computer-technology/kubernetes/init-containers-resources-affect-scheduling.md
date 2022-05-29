---
tags: caveat
---

# Init container's resources affect scheduling
If your [[init-container]] has [[resource]] requests and limits, these are taken into account when scheduling. The effective resources for a pod become the highest of one of these groups:

* The highest init container request/limit value
* The sum of all containers requests and limits

This means that, if your init container have very high demands and containers have low resource usage, the actual resources of the whole pod will be those of the init container, even though it only runs for a short time. This means that the difference of usage between the init container and the containers will be unusable by other pods on the node, and thus, wasted.
