---
tags: how-to
---

# Authentication
Authentication can be enabled in Redis through the `requirepass «password»` parameter, either at the configuration file or as a command-line flag.

Then, in order to use a database through a connection, you'll have to send an `AUTH «password»` command.
