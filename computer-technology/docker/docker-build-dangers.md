---
tags: caveat
---

# The dangers of `docker build`
When you run `docker build` actually you send a request to the [[docker-daemon]] to build your image. Any user with access to the docker daemon has access to the full range of interactions possible with it. And since it needs to create [[linux/namespace]]s, this means it has to run as `root`

The implications of this are rarely considered, since it just might be a necessity for CI/CD pipelines to build an image, normally through [[containers-that-use-the-docker-api]]. But this means that the compromise of any step in the pipeline might compromise the entire host.

## The solution: daemonless builds
There are applications capable of building an image without contacting the docker API:

* BuildKit
* [[podman]]
* [[bazel]]
