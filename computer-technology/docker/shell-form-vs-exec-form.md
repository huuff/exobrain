---
tags: comparison, best-practice
---

# Shell form vs exec form
Most [[build-instruction]] have two forms:
* *Shell form* receives just a string with a command to execure, e.g.: `RUN cat -v file`.
* *Exec form* receives an array of strings, the first one is the command to execute and the rest are the parameters to pass to it, e.g.: `RUN [ "cat", "-v", "file" ]`

The **exec form is generally preferred** because:
* The *shell form* executes a shell to run the command, this may have many implications regarding shell idiosyncrasies (which might be any, changed by the `SHELL` instruction), but most importantly, a shell must be installed.
* In the `ENTRYPOINT` command, any further arguments given to a shell form are ignored, which goes against the `ENTRYPOINT` reason for existing.
* For filenames with spaces, `COPY` will just fail no matter what in shell form. You have to use exec form.
