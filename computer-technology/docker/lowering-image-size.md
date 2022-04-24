---
tags: index
---

# Keeping image size low
Image size is an obsession in the Docker community! I'm not entirely sure why. Surely, an smaller image can make it easier to distribute and faster to build, but I've seen all sorts of tricks to optimize image size that are hard to pull off and only shave a few megabytes of memory.

In any case, here are some tips

* [[single-run-instruction]]: is the most-basic, most-widely-used recommendation
* [[multi-stage-build]]: not necessary but helps
* [[squash]]: it's actually very situational and not generally recommended
* [[removing-package-manager-cache]]: I've found this one quire helpful
* [[use-no-install-recommends]]: Only for the shortcommings of the `apt` package manager
