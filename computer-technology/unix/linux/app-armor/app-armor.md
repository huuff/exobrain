# AppArmor
Allows a security profile to be associated to an executable to determine what it's allowed to do in terms of [[capability|capabilities]] and file access permissions. It implements [[mandatory-access-control]].

You can check whether AppArmor is installed by running `cat /sys/module/apparmor/parameters/enabled` (`y` is enabled, `n` is disabled)
