# `where`
Kinda weird syntax for specifying more than one type bound for a generic parameter, since only one can be put inside the angle brackets.

### Example
For example to require that `T` extends both `CharSequence` and `Appendable` we use:

```kotlin
fun <T> ensureTrailing(seq: T) where T: CharSequence, T: Appendable {
  ...
}
```
