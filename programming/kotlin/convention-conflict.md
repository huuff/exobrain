# Convention conflict
When using [[convention]]s, conflicts can appear. In a class that declares both `plus` and `plusAssign`, the following snippet is amiguous

```kotlin
x += y
```

It could mean:
* `x = x.plus(y)`
* `x.plusAssign(y)`

## Recommended usage
Implement `plus` for immutable classes and `plusAssign` for mutable ones.
