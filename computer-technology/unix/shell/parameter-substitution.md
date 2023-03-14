# Parameter substitution
There's a wealth of operations that can be performed on a parameter in the moment of substitution (e.g. as a program argument). AFAICT these are POSIX-compatible and can be done both in [[bash]] and in [[zsh]].


## Prefix and postfix removal

* `${var#Pattern}` removes from `$var` the shortest part of `$Pattern` that matches the front end of `$var`
* `${var##Pattern}` removes from `$var` the longest part of `$Pattern` that matches the front end of `$var`
* `${var%Pattern}` removes from `$var` the shortest part of `$Pattern` that matches the back end of `$var`
* `${var%%Pattern}` removes from `$var` the longest part of `$Pattern` that matches the back end of `$var`

A nice rule of thumb for remembering it: the `#` symbol is usually used at the left side of a number (e.g. `#1`) so it removes the string at the start. The `%` is used at the right side (e.g. `25%`) so it removes the string at the back.

### Example
If your `$HOME` is `/home/haf` then `${HOME##*/}` would give just `haf`
