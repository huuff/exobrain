---
tags: how-to
---

# Stricter authorization requests
Some parameters can be used to make authorization requests a bit stricter:
* `prompt` ensures the user is always prompted for authorization, and that this process can't be skipped if they have an open session at the provider.
* `max-age` ensures that the user has been prompted for authorization at least in last `max-age` period, so the session is guaranteed to not be too old.
