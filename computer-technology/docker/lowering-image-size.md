---
tags: index
---

# Keeping image size low
Image size is an obsession in the Docker community! This might be because:

* A smaller image (i.e. with less software) has a smaller attack surface
* Build times will be faster
* Storage requirements will be lower

In any case, here are some tips

* [[single-run-instruction]]: is the most-basic, most-widely-used recommendation
* [[multi-stage-build]]: not necessary but helps
* [[squash]]: it's actually very situational and not generally recommended
* [[removing-package-manager-cache]]: I've found this one quire helpful
* [[use-no-install-recommends]]: Only for the shortcommings of the `apt` package manager
