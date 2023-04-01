# Indirect Expansion
Using `!` inside a variable expansion, causes to be evaluated twice, once to expand the contents of the expansion, and another to actually run it.

### Example
```bash
var1="hello"
var2="var1"
echo "${!var2}"

# Outputs "hello"
```

### Pairing with globbing
This is nice when paired with globbing, for example

```bash
# Supposing there are variables fg_blue, fg_green, fg_red, etc.
echo "${!fg_*}"

# Gives the names of all these variables
```

This is particularly cool when using [[associative-arrays-with-variable-indirection]], since this can give us all the keys of the array.
