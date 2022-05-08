# Adding AppArmor profiles to a container
Docker has a default [[linux/AppArmor]] profile, but you can always change it and use more restrictive or permisive ones:

1. Install your profile to `/sys/kernel/security/apparmor/profiles` as usual.
2. Run your container using `docker run --security-opt="apparmor:«profile name»"`
