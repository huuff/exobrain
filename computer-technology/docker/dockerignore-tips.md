---
tags: tip
---

# Some directories that are good candidates for a [[dockerignore]]
When you have a repo over a couple gigabytes, building a Dockerfile becomes much slower due to uploading all that data to the [[build-context]], these are some directories you might want to ignore
* `.git`: Very unlikely you'll ever need it in a build
* Build and dependency artifacts if you're building inside the Dockerfile:
  * `node_modules` for NPM
  * `vendor` for PHP's composer
  * `target` for [[maven]]
  * `build` for [[gradle]]
