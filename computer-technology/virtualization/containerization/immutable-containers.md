---
tags: best-practice
---

# Containers are meant to be immutable
* If software is installed into containers at runtime, it's difficult to know which containers run which versions of which software.
* It's hard to control the provenance of software in a container if it can be installed at any time
* It's very easy to build a container from an image, but modifying them at runtime might be a manual task, or need additional tools like [[ansible]]
* [[image-scanning]] is a very powerful tool to detect vulnerabilities that's only valid for software installed at build-time.
