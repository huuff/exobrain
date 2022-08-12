---
tags: tip
---

# Use a star (`*`) as a stream entry's ID to let Redis autogenerate it
For example:

```
XADD test:stream * siteID 1 tempC 8.0
```
