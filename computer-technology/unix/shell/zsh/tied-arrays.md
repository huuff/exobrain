---
tags: definition
---

# ZSH's tied arrays
zsh has the option of tying an array definition to a variable by using `declare -T «variable» «array»`. This creates an array, `«array»` that contains everything in `«variable»` separated by colons. When one is changed, the other one is automatically updated.


### Examples

#### Declaring an `ld_library_path` tied arrray
```zsh
declare -T LD_LIBRARY_PATH ld_library_path
```


#### `path`
The `path` variable is an array tied to the `PATH` variable.
