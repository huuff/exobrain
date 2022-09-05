---
tags: tip
---

# Trap `EXIT` to defer the cleanup after a script
`EXIT` will always get triggered when the shell exits, either through successful completion or error, so this ensures the cleanup will always run.

### Example
```bash
tmp=$(mktemp)
trap "rm -f $tmp" EXIT

# ... 
```
