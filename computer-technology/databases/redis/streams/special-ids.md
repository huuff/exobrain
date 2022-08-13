# Special IDs in streams
* `*` when using `XADD` tells Redis to auto-generate the entry's ID by using the server's current timestamp.
* `$` when using `XREAD` tells Redis to read only the latest entry
* `>` when using `XREADGROUP` tells Redis to read only the latest unread entry for the group.
