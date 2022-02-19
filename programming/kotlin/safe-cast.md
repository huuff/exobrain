# Safe cast `as?`
The safe cast operator casts the left side as the right side if it's assignable to it, or to null if it isn't.

## Example
```kotlin
val p = obj as? Person // if `obj` is of type `Person`, then `p` is too, otherwise, it's null.
```
