---
tags: how-to
---

# Enter rescue mode on NixOS
This one's particularly hard when compared to normal Linuxes

1. Enter grub
2. Go to your NixOS configuration of choice
3. Press e to edit it
4. Find the line that stats with "linux" and add `rescue systemd.setenv=SYSTEMD_SULOGIN_FORCE=1`
5. Press enter at the maintenance prompt when booted
