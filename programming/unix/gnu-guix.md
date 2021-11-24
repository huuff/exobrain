# GNU Guix
A linux distribution whose underlying implementation is [[nix]] (apparently), so it offers the same capabilities but using GNU Guile (A LISP) for configuration instead of the Nix language.

### Rocks
I'm sure Guile is more mature and powerful (It's a LISP after all) than Nix.

### Sucks
Follows the same overzealus philosophy of Libre-above-all of GNU projects.

* It uses the Linux-libre kernel, which has previously put "freedom" before security: [[linux-libre-removing-microcode-warnings]]
* There's [https://gitlab.com/nonguix/nonguix](Nonguix) for non-free software (where one can get a vanilla non-linux-libre kernel). This is, however, advised against and unsupported by Guix official channels:

> Please do NOT promote this repository on any official Guix communication channels, such as their mailing lists or IRC channel, even in response to support requests! This is to show respect for the Guix project’s strict policy against recommending nonfree software, and to avoid any unnecessary hostility.

So I think that Guix aversion of non-free software may hinder me if I am ever forced to use non-free software. So I'll generally stick to nix.
