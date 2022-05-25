# `PodSecurityPolicy`
The legacy way of specifying some sane security defaults such as disallowing pods from running as root or to escalate privileges. Note that these are DEPRECATED as of v1.21 and removed from v1.25.

## Fumbled deprecation
Better check [this article](https://www.macchaffee.com/blog/2022/psp-deprecation/)

But TLDR: they got deprecated without a clear replacement, in favour of non-standarized very different alternatives such as Gatekeeper ([[opa]]) and [[kyverno]].
