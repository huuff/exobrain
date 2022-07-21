# SUID and SGID permissions
* A binary with a `setuid` permission will always run as the owner of the file, even when run by another user. You can check whether a binary has it because it has an `s` instead of an `x` for its executable bit.
* A binary with a `setgit` permission will always run as the group of the owner.

### Example
This is typically used to run a trusted binary that requires a superuser-specific utility, but allow it to be run by non-superuser users. A canonical example is the `ping` utility, which needs premission to open raw network connection, but this is not available to just any user, so one way of enabling it is through the setuid bit.

Modern versions of `ping`, however, just start as root, add any necessary [[capability|capabilities]] and then switch to a non-privileged user.
