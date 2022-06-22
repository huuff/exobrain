---
tags: tip
---

# Using audit mode in policy systems
Most policy systems such as [[linux/seccomp]] or [[linux/apparmor]] have an audit mode. This allows collecting a set of usual behaviours that should be allowed by whatever you're trying to policy (this is a form of [[security/tofu]]) and then you can make a policy that only allows these.
