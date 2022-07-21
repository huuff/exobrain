---
tags: tip
---

# Use `rm -f` so `rm` doesn't error out when deleting a file that's not present
This is very useful for scripts that clean up previous leftovers before operating. I've done `rm || true` on scripts, but when paired with the usual `&&` and `\ ` sequence [[single-run-instruction|usual in Dockerfiles]] this becomes very unwieldly.
