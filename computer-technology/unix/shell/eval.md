# `eval`
The `eval` command takes a complete command line and makes the shell parse it twice.

1. The first time, it's parsed normally but not executed
2. The second time, `eval`'s arguments are turned into a single string. This string is executed like any other command.

### Example
This allows us, for example, to do [[variable-indirection]] by dynamically constructing a variable name

```sh
color=blue
eval "fg_$color=$'\e[34m'"
# The command executed is fg_blue=$'\e[34m'
eval "echo \${fg_$color}Hello\${reset_color}"
# The first pass gives echo ${fg_blue}Hello${reset_color}
# Which is the command that's finally evaluated
```
