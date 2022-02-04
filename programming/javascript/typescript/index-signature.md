# Index signature
Useful for specifying that a type has an unlimited number of unknown properties of some type, associated to values of another type:

## Example
```ts
type T = { [key: string]: number }
```

`T` is an object of `string` keys and `number` values.
