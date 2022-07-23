---
tags: definition
---

# Amplification
When a single operation on a database produces several operations on the underlying hardware (i.e. the disk).

* Write amplification: When a single write to the database leads to several writes on the disk (for example, splitting a page in a [[b-tree]] and rewriting all parent pages to point to it)
* Read amplification: When a single read on a database leads several reads on disk (for example, when not using an index and a full scan is necessary)
