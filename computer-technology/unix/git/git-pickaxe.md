# Git Pickaxe (searching the log)
These are two flags for `git log` that, provided with a regular expresion, find commits that did some changes involving them. They are:

* `-G` (as in `git log -G «regex»`) finds any commits that either add or remove lines that match the regex
* `-S` (as in `git log -S «regex»`) finds any commits that change the total amount of lines matching the regex

`-S` is useful if you want to avoid false positives for refactorings, since it won't take into account any moves of the lines that match the regex.
