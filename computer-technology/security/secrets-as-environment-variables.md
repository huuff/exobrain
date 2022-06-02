---
tags: antipattern
---

# Avoid using environment variables for passing secrets
* Many programming languages and runtimes dump a lot of information when crashed, this will very likely include environment variables passed at start time
* They are inherited, so a compromised process can spawn a process that can read its parent's environment variables
* These can only be defined at startup, so there's no way to rotate them without shutting down the app.

Generally, it's advised that the best way to pass secrets is as files, mounted in `tmpfs` directories.
