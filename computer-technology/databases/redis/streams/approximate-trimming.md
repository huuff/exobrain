# Approximate stream trimming
You can prepend `~` to the length to which to trim a [[redis/stream]] (with `XADD` or `XTRIM`) to make Redis trim it only approximately, so that the operation is more efficient.

### Example
```
XTRIM «stream-name» MAXLEN ~ «max lenght»
```
