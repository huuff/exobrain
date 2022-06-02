---
tags: tip
---

# Disable `--anonymous-auth`
This is enabled by default. When no authentication method explicitly denies access (but doesn't accept it either), the user is authenticated as an user of `system:anonymous` and a group of `system:unauthenticated`. Kubernetes API gives at least discovery privileges to this user and severe vulnerabilities have been found before. So you should disable it through the `--anonymous-auth=false` flag to the API server.
