---
tags: tip, caveat
---

# Audit logs security
Audit logs can easily be bypassed. `etcd` can' store more than 256Kb so audit logs above that will just not get stored. An attacker can abuse that to hide their trail of actions.

Besides, an attacker that gets control of the API server can tamper any local audit logs.

## Solution
Configure the `--audit-webhook-config-file` flag of the [[kube-apiserver]] to ship the logs remotely.
