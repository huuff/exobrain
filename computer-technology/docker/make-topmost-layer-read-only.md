---
tags: tip, best-practice
---

# Make the topmost [[layer]] read-only
You can do this by adding `--read-only` to your `docker run comment`, but bear in mind that some software (like `supervisor`) might write to the filesystem for unexpected reasons, and thus might stop working in with `--read-only`
