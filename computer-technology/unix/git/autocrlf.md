---
tags: tip
---

# Use `autocrlf` to ease collaboration with windows users
By setting `core.autocrlf` to `true`, git automatically normalizes CRLF to just LF when checking-in to the repository, and then, at check-out, it converts the LFs to CRLFs. This is the recommended setting when working in an environment with Windows users.
