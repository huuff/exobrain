---
tags: antipattern
---

# Avoid using environment variables for passing secrets
* Many programming languages and runtimes dump a lot of information when crashed, this will very likely include environment variables passed at start time
* If these are passed in the same command as the application that uses them, a simple `ps` can show which ones were passed to it, even from another user
* These can only be defined at startup, so there's no way to rotate them without shutting down the app.

Generally, it's advised that the best way to pass secrets is as files, mounted in `tmpfs` directories.
