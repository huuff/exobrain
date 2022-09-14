---
tags: tip, best-practice
---

# Always use long-form options when writing a shell script
One-off commands can be as terse as you need them, but if you're writing a (hopefully) maintainable script, `sed --in-place --regexp-extended` will always be more understandable than `set -iE`
