# Line Log Search
You can use `git log -L«function name»:«file»` to get a full log of all changes to a function across the whole history in a file. Git will try to match the syntax of the function in your programming language, but you can provide a regex instead of `«function name»` if it's unable to do so.
