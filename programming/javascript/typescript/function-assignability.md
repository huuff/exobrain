# Function [[assignability]]
A function is assignable to a function type that takes more parameters:

```ts
const g: (x: string) => any = () => 12;
```

This is to correctly model JavaScript behavior where it's possible to call a function with more parameters.
