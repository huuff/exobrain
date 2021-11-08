# Decorator factory
We can call actually wrap a [[decorator]] in a function so we can pass arguments to it.

### Example
The decorator could be
```ts
function log(loggerName: string) {
  return function(target: any, key: string, desc: PropertyDescriptor) {
    // Actual decorator logic
  }
}
```

Then we could use it like

```ts
@log("test-logger")
function loggedFunction() {
  // Decorated logic
}
```
