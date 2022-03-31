---
tags: antipattern
---

# Don't update the OS inside a Docker image
Seems like obvious but I've seen it enough times to warrant a note:

> Don't run commands like `apt-get -y update` or `yum -y update` in your Dockerfile

It requires crawling the repository index each time you run a build and means it's not guaranteed to be repeatable since package versions might change between builds.

A better solution is to build on top of an image that already has the required dependencies installed at known versions. Docker doesn't really make this easier as it just lets it to the underlying OS, so you might have it easier using [[nixos]]
