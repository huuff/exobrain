
# `ReturnType`
A very cool type, it becomes the return type of the passed function.

### Example
Node and browser's `setInterval`return different types, `Timer` and `number` respectively. You can have a type that works for both by using:

```ts
const interval: ReturnType<typeof setInterval> = setInterval(...);
```
