---
tags: tip, advice, best-practice
---

# Have only one change type per changeset
The official documentation and tutorials recommend it, my guesses:

* It's easier to know if automatic rollback is possible or not for one changeset if all changes are of the same type. Otherwise, we might have changes that are automatically "rollbackable" and changes that don't. So we might have to write rollback commands for both of these types.
