---
tags: definition
---

# Word Splitting
The shell usually splits arguments by the value of the [[ifs]] variable (by default, any whitespace). This means that an unquoted argument containing whitespace is converted into several arguments, separated by that whitespace.

### Example
`printf` prints each argument separately, so we can illustrate it with variable expansion (in bash, since [[zsh-doesnt-do-word-splitting-for-variable-expansion]]):

```bash
variable="one two"
printf '>>%s<<\n' $variable
# Output:
# >>one<<
# >>two<<

# But when quoted...
println '>>%s<<\n' "$variable"
# Output:
# >>one two<<
```
