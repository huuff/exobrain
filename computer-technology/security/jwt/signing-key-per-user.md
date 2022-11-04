---
tags: tip, best-practice
---

# Use a different signing key for each user's JWT
This allows revoking all of a user's JWTs by simply changing their key, but this also requires keeping some state to keep track of all the signing keys.
