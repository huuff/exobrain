# `UNLINK`
This command is like the `DEL` command, but non-blocking. Sometimes when deleting a large key with `DEL`, the time it takes to do it is prohibitive, since it blocks the database for any further commands. `UNLINK` on the other hand, just marks the key for deletion and an asynchronous process deletes it in the background.
