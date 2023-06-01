# `git log`
Some useful flags are:

* `--since`, `--after`, `--until`, `--before` for limiting history in time. For example: `git log --since=2.weeks`
* `--author` to filter by author
* `-p` to see a full patch of changes (same as `git diff`)
* `--stat` to provide a summary of changes
* `-S` takes a string and only shows commits that added or removed that string

You can also add a path to a file as the last argument to see the full log of that file.
