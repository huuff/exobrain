---
tags: definition
---

# Page-Oriented Storage Engine
In page-oriented storage, data is stored in fixed-size blocks (a *page*) that roughly correspond to an operating system page. The full blocks are read and written one at a time, which makes it use the underlying hardware very efficiently.

The canonical implementation is the [[b-tree]].
