# `let`
The `let` function makes it easy to work with nullable types. Combining it with a safe call operator you can evaluate a lambda only if the expression is non-null

## Example
This sends an email to `email` only if it's not null.

```kotlin
email?.let { sendEmailTo(it) }
```
