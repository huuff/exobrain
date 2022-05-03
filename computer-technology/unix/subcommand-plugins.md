# Subcommand plugins
Some plugins have adopted a convention on which any scripts in your `$PATH` whose executable is `«command»-«subcommand»` can be executed by as "subcommands" with `«command» «subcommand»`. For example:

* [[git]]: I had a `git-cloc` command around for counting lines in a git repository and got really suprised when I found out I could call it with `git cloc`
* [[kubernetes]]: `kubectl` follows the same model.
