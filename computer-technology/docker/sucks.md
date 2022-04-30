---
tags: sucks
---

# What sucks about Docker

## Reproducibility
Not very reproducible. Every time you install packages in your images, you're left to your package manager's features for pinning versions. And these are pretty poor. If you run `apt-get update && apt-get upgrade` you might end with pretty different versions between two different builds. There are some tips to improve it:

* [[os-update]]: Not as feasible as it might seem since images come without a package manager cache or list because it takes too much space. You might need to create a base image with the package versions you need, but then you still have to ensure that it doesn't change, which is hard given that:
  * The package manager might still not provide very good capabilities for pinning versions (such as `apt`)
  * [[tags-are-mutable]]
* You can use [[digest|digests]]. But:
  * The digest obscures a lot of info, compared to a tag, also  specifying tag and digest makes the tag get ignored as far as I know. [(See this issue)](https://github.com/containers/buildah/issues/1407)
  * I've read somewhere that these are content-addressable? But yet I'm sure they change from repository to repository, so migrating your image from the Docker official registry to quay will break all digests.
