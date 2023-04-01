---
tags: trivia
---

# zsh doesn't do word splitting for variable expansion
This is a nice addition since word splitting is usually a nuisance, especially for variable expansion. 

### Example
See the example in [[word-splitting]] and check that for zsh, the result is the same in both cases, which is the output of the one that includes quotes:

```zsh
println '>>%s<<\n' $variable
# Output:
# >>one two<<
```
