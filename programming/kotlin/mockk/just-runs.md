# `just Runs`
A nice shortcut that `mockk` gives to mock a function that does not return anything. It's like `returns Unit` but works as-is with coroutines (`coEvery`)

### Example
```kotlin
coEvery { logger.log(any()) } just Runs
```
