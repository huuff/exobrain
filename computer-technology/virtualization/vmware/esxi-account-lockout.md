---
tags: caveat
---

# ESXi account lockout after unsuccessful login attempts
ESXi locks you out by default after 5 unsuccessful login attempts, which could have been done through an automated attack. This can be pretty dangerous since I don't think there is any way to solve it that doesn't require direct access to the server or powering it off.

So, to disable it go to `Host > Manage > System`, search for `Security.AccountLockFailures` and set the `Value` to `0`.

But first make sure you have a strong password!
