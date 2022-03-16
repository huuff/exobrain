---
tags: tip
---

# Use `--directoryperdb` to parallelize data to multiple drives
You can make symbolic links to different drives in the `dbpath`. This would allow for more drive parallelization and increase performance. (Though maybe using [[raid]] is faster and less error-prone?)

A higher notch would be using `wiredTigerDirectoryForIndexes`, with which you can have indexes in a disk different to your data, which would impact write performance less if you have a lot of indexes
