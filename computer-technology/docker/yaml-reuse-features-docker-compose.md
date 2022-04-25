---
tags: how-to
---

# Use YAML reuse features in Docker Compose
(See the [[reuse-features]])

Since Docker compose uses a specific structure, if you add an anchor at the top of it, it'll fail validation.

The trick is that the parser ignores keys that start with `x-`, so you can put any anchors there.

### Example
```yaml
x-vars:
  user: &user "1000:1000"

services:
  application:
    user: *user
```
