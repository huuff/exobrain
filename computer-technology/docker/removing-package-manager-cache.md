---
tags: tips, how-to
---

# Removing the package manager cache when installing packages
Whatever the package manager of the distro of the image on which you base your Docker build, it's likely that it keeps a heavy cache for the package manager to work (in some cases, up to 200MB in size).

The best way to prevent that cache from going into your image and make it leaner is to do the following in a [[single-run-instruction|single `RUN` instruction]]

1. Update the repositories (See [[os-update]])
2. Install any packages you need
3. Clean the cache

You can clean the cache by doing:
* `apt-get clean` for `apt-get`
* `dnf clean all` for `dnf`
