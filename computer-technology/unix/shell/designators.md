# Designators (History interaction)
POSIX shells allow interacting with history using so-called "designators": *event designators* can be used to choose a line in history, *word designators* refer to parts of that line and *modifiers* apply some action to the selection.

## Event designators
These allow referring to specific lines in the history

* `!` starts a history substitution, so it's the prelude to the other designators
* `!n` refers to line `n` in history
* `!-n` refers to line `n` starting from the end of the history
* `!string` refers to the most recent line starting with `string`
* `!?string` refers to the most recent line containing `string`
* `!#` refers to the line written so far

## Word designators
These are separated from the event designator by a colon (`:`) and specify a word in the selected line. Word numbering starts from the left, woith the first one being `0`. The colon can be omitted when the designator starts with `^`, `$`, `*` or `%`.

* `0`: zeroth word, typically the command
* `n`: nth word
* `^`: first argument, word 1
* `$`: last argument (last word?)
* `%`: word matched by the last `!?string?` search
* `x-y`: range of words form `x` to `y`. `-y` is an abbreviation for `0-y`
* `*`: all words except the zeroth, that is, all arguments to a command. Equivalent to `1-$`
* `x*`: an abbreviation for `x-$`
* `x-`: like `x*` but without the last word

## Modifiers
These follow the word designators, each preceded by a colon (`:`)

* `h`: removes the trailing part of a path, i.e. it leaves only the directory path, removing the filename
* `r`: removes the trailing suffix after a dot, that is, the file extension
* `e`: removes all but the trailing suffix, that is, leaves only the extension
* `t`: removes all leading pathnames, leaving only the filename
* `p`: print the command, do not execute it
* `q`: quote the substituted words
* `x`: quote the words, as for `q`, but breaking quotation on `IFS` separation (I think? or something mostly equivalent)
* `s/old/new/`: replace occurences of `old` for `new`
* `&`: repeat the previous substitution
* `g`: only used for `s` and `&`, and applies to the whole line (i.e. `gs/old/new/` changes all occurences of `old` for `new`)
