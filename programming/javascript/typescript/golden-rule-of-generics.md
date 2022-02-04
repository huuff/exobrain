---
tags: tips
---

# The Golden Rule of Generics
> If a generic only appears in only location, strongly consider whether you need it

[Source](https://effectivetypescript.com/2020/08/12/generics-golden-rule/)

Generics are used to specify relationships between parameters (or output). Consider the example:

```ts
function doSomething<T>(param: T): void {
  ...
}
```

This, however, is not at all different from
```ts
function doSomething(param: any): void {
  ....
}
```
