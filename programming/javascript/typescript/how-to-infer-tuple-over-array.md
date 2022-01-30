---
tags: how-to
---

# How to infer a tuple over an array
Usually when you have a stream operation such as

```ts
const numbers = [1, 2, 3];
const withDouble = numbers.map(n => [n, n*2])
```

TypeScript infers the type of `withDouble` as `number[]` instead of the more precise `[number, number]`. This is easily fixed by passing the appropriate type as a type parameter

```ts
const withDouble = numbers.map<[number, number]>(n => [n, n*2])
```
