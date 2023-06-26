# `git clean`
`git clean` can be one of the most dangerous commands of git: it'll remove any files that are not tracked or ignored. Since it's always dangerous to run it, you always have to run it with the `--force` (`-f`) flag. Some other useful flags:

* `-d` also removes directories
* `-x` also removes ignored files

### Usages
I think `git clean -x` can be useful to clean output files in order to clean your output directory of build artifacts (somewhat like running `mvn clean`)
